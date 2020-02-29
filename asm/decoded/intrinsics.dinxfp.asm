------------------------------------------------------------------------------------------------------------------------
; int takemask(Vector128<double> src), hex://intrinsics/dinxfp?takemask#takemask_(v128x64f)
; takemask_(v128x64f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x50,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovmskpd eax,xmm0                      ; VMOVMSKPD r32, xmm2 || VEX.128.66.0F.W0 50 /r || encoded[4]{c5 f9 50 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int takemask(Vector256<float> src), hex://intrinsics/dinxfp?takemask#takemask_(v256x32f)
; takemask_(v256x32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfc,0x50,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovmskps eax,ymm0                      ; VMOVMSKPS r32, ymm2 || VEX.256.0F.W0 50 /r || encoded[4]{c5 fc 50 c0}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int takemask(Vector256<double> src), hex://intrinsics/dinxfp?takemask#takemask_(v256x64f)
; takemask_(v256x64f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x50,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovmskpd eax,ymm0                      ; VMOVMSKPD r32, ymm2 || VEX.256.66.0F.W0 50 /r || encoded[4]{c5 fd 50 c0}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vunpackhi(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vunpackhi#vunpackhi_(v128x32f,v128x32f)
; vunpackhi_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x15,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vunpckhps xmm0,xmm0,[r8]                ; VUNPCKHPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 15 /r || encoded[5]{c4 c1 78 15 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vunpackhi(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vunpackhi#vunpackhi_(v128x64f,v128x64f)
; vunpackhi_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x15,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vunpckhpd xmm0,xmm0,[r8]                ; VUNPCKHPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 15 /r || encoded[5]{c4 c1 79 15 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vunpackhi(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vunpackhi#vunpackhi_(v256x32f,v256x32f)
; vunpackhi_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x15,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vunpckhps ymm0,ymm0,[r8]                ; VUNPCKHPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 15 /r || encoded[5]{c4 c1 7c 15 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vunpackhi(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vunpackhi#vunpackhi_(v256x64f,v256x64f)
; vunpackhi_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x15,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vunpckhpd ymm0,ymm0,[r8]                ; VUNPCKHPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 15 /r || encoded[5]{c4 c1 7d 15 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vunpacklo(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vunpacklo#vunpacklo_(v128x32f,v128x32f)
; vunpacklo_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x14,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vunpcklps xmm0,xmm0,[r8]                ; VUNPCKLPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 14 /r || encoded[5]{c4 c1 78 14 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vunpacklo(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vunpacklo#vunpacklo_(v128x64f,v128x64f)
; vunpacklo_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x14,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vunpcklpd xmm0,xmm0,[r8]                ; VUNPCKLPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 14 /r || encoded[5]{c4 c1 79 14 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vunpacklo(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vunpacklo#vunpacklo_(v256x32f,v256x32f)
; vunpacklo_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x14,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vunpcklps ymm0,ymm0,[r8]                ; VUNPCKLPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 14 /r || encoded[5]{c4 c1 7c 14 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vunpacklo(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vunpacklo#vunpacklo_(v256x64f,v256x64f)
; vunpacklo_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x14,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vunpcklpd ymm0,ymm0,[r8]                ; VUNPCKLPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 14 /r || encoded[5]{c4 c1 7d 14 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vand(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vand#vand_(v128x32f,v128x32f)
; vand_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x54,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vandps xmm0,xmm0,[r8]                   ; VANDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 54 /r || encoded[5]{c4 c1 78 54 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vand(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vand#vand_(v128x64f,v128x64f)
; vand_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x54,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vandpd xmm0,xmm0,[r8]                   ; VANDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 54 /r || encoded[5]{c4 c1 79 54 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vand(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vand#vand_(v256x32f,v256x32f)
; vand_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x54,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vandps ymm0,ymm0,[r8]                   ; VANDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 54 /r || encoded[5]{c4 c1 7c 54 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vand(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vand#vand_(v256x64f,v256x64f)
; vand_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x54,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vandpd ymm0,ymm0,[r8]                   ; VANDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 54 /r || encoded[5]{c4 c1 7d 54 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vandnot(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vandnot#vandnot_(v128x32f,v128x32f)
; vandnot_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf8,0x55,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vandnps xmm0,xmm0,[rdx]                 ; VANDNPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 55 /r || encoded[4]{c5 f8 55 02}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vandnot(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vandnot#vandnot_(v128x64f,v128x64f)
; vandnot_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf9,0x55,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vandnpd xmm0,xmm0,[rdx]                 ; VANDNPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 55 /r || encoded[4]{c5 f9 55 02}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vandnot(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vandnot#vandnot_(v256x32f,v256x32f)
; vandnot_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc5,0xfc,0x55,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vandnps ymm0,ymm0,[rdx]                 ; VANDNPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 55 /r || encoded[4]{c5 fc 55 02}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vandnot(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vandnot#vandnot_(v256x64f,v256x64f)
; vandnot_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc5,0xfd,0x55,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vandnpd ymm0,ymm0,[rdx]                 ; VANDNPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 55 /r || encoded[4]{c5 fd 55 02}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vxor1(Vector128<float> x), hex://intrinsics/dinxfp?vxor1#vxor1_(v128x32f)
; vxor1_(v128x32f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xf0,0x57,0xc9,0xc5,0xf8,0xc2,0xc1,0x00,0xc5,0xf8,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcmpeqps xmm0,xmm0,xmm1                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c1 00}
0012h vxorps xmm0,xmm0,[rdx]                  ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 02}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vxor1(Vector128<double> x), hex://intrinsics/dinxfp?vxor1#vxor1_(v128x64f)
; vxor1_(v128x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xf0,0x57,0xc9,0xc5,0xf9,0xc2,0xc1,0x00,0xc5,0xf9,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
000dh vcmpeqpd xmm0,xmm0,xmm1                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c1 00}
0012h vxorpd xmm0,xmm0,[rdx]                  ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 02}
0016h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vxor1(Vector256<float> x), hex://intrinsics/dinxfp?vxor1#vxor1_(v256x32f)
; vxor1_(v256x32f)[33] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf4,0x57,0xc9,0xc5,0xfc,0xc2,0xc1,0x00,0xc5,0xfc,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vcmpeqps ymm0,ymm0,ymm1                 ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c1 00}
0012h vxorps ymm0,ymm0,[rdx]                  ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 02}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vxor1(Vector256<double> x), hex://intrinsics/dinxfp?vxor1#vxor1_(v256x64f)
; vxor1_(v256x64f)[33] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xf4,0x57,0xc9,0xc5,0xfd,0xc2,0xc1,0x00,0xc5,0xfd,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vxorps ymm1,ymm1,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 f4 57 c9}
000dh vcmpeqpd ymm0,ymm0,ymm1                 ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c1 00}
0012h vxorpd ymm0,ymm0,[rdx]                  ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[4]{c5 fd 57 02}
0016h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001ah mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vxnor(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vxnor#vxnor_(v128x32f,v128x32f)
; vxnor_(v128x32f,v128x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x57,0x00,0xc5,0xf8,0xc2,0xc8,0x00,0xc5,0xf8,0x57,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorps xmm0,xmm0,[r8]                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[5]{c4 c1 78 57 00}
000eh vcmpeqps xmm1,xmm0,xmm0                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c8 00}
0013h vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vxnor(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vxnor#vxnor_(v128x64f,v128x64f)
; vxnor_(v128x64f,v128x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x57,0x00,0xc5,0xf9,0xc2,0xc8,0x00,0xc5,0xf9,0x57,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorpd xmm0,xmm0,[r8]                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[5]{c4 c1 79 57 00}
000eh vcmpeqpd xmm1,xmm0,xmm0                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c8 00}
0013h vxorpd xmm0,xmm0,xmm1                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 c1}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vxnor(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vxnor#vxnor_(v256x32f,v256x32f)
; vxnor_(v256x32f,v256x32f)[34] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x57,0x00,0xc5,0xfc,0xc2,0xc8,0x00,0xc5,0xfc,0x57,0xc1,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorps ymm0,ymm0,[r8]                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[5]{c4 c1 7c 57 00}
000eh vcmpeqps ymm1,ymm0,ymm0                 ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c8 00}
0013h vxorps ymm0,ymm0,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c1}
0017h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vxnor(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vxnor#vxnor_(v256x64f,v256x64f)
; vxnor_(v256x64f,v256x64f)[34] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x57,0x00,0xc5,0xfd,0xc2,0xc8,0x00,0xc5,0xfd,0x57,0xc1,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorpd ymm0,ymm0,[r8]                   ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[5]{c4 c1 7d 57 00}
000eh vcmpeqpd ymm1,ymm0,ymm0                 ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c8 00}
0013h vxorpd ymm0,ymm0,ymm1                   ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[4]{c5 fd 57 c1}
0017h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vnot(Vector128<float> src), hex://intrinsics/dinxfp?vnot#vnot_(v128x32f)
; vnot_(v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf8,0xc2,0x02,0x00,0xc5,0xf8,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpeqps xmm0,xmm0,[rdx]                ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 02 00}
000eh vxorps xmm0,xmm0,[rdx]                  ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 02}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vnot(Vector128<double> src), hex://intrinsics/dinxfp?vnot#vnot_(v128x64f)
; vnot_(v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf9,0xc2,0x02,0x00,0xc5,0xf9,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpeqpd xmm0,xmm0,[rdx]                ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 02 00}
000eh vxorpd xmm0,xmm0,[rdx]                  ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 02}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vnot(Vector256<float> src), hex://intrinsics/dinxfp?vnot#vnot_(v256x32f)
; vnot_(v256x32f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc5,0xfc,0xc2,0x02,0x00,0xc5,0xfc,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpeqps ymm0,ymm0,[rdx]                ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 02 00}
000eh vxorps ymm0,ymm0,[rdx]                  ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 02}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vnot(Vector256<double> src), hex://intrinsics/dinxfp?vnot#vnot_(v256x64f)
; vnot_(v256x64f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc5,0xfd,0xc2,0x02,0x00,0xc5,0xfd,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpeqpd ymm0,ymm0,[rdx]                ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 02 00}
000eh vxorpd ymm0,ymm0,[rdx]                  ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[4]{c5 fd 57 02}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vxor(Vector128<float> lhs, Vector128<float> rhs), hex://intrinsics/dinxfp?vxor#vxor_(v128x32f,v128x32f)
; vxor_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x57,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorps xmm0,xmm0,[r8]                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[5]{c4 c1 78 57 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vxor(Vector128<double> lhs, Vector128<double> rhs), hex://intrinsics/dinxfp?vxor#vxor_(v128x64f,v128x64f)
; vxor_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x57,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorpd xmm0,xmm0,[r8]                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[5]{c4 c1 79 57 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vxor(Vector256<float> lhs, Vector256<float> rhs), hex://intrinsics/dinxfp?vxor#vxor_(v256x32f,v256x32f)
; vxor_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x57,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorps ymm0,ymm0,[r8]                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[5]{c4 c1 7c 57 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vxor(Vector256<double> lhs, Vector256<double> rhs), hex://intrinsics/dinxfp?vxor#vxor_(v256x64f,v256x64f)
; vxor_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x57,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorpd ymm0,ymm0,[r8]                   ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[5]{c4 c1 7d 57 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vxor(in Vector128<float> x, in Vector128<float> y), hex://intrinsics/dinxfp?vxor#vxor_(v128x32f~in,v128x32f~in)
; vxor_(v128x32f~in,v128x32f~in)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x57,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorps xmm0,xmm0,[r8]                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[5]{c4 c1 78 57 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vxor(in Vector128<double> x, in Vector128<double> y), hex://intrinsics/dinxfp?vxor#vxor_(v128x64f~in,v128x64f~in)
; vxor_(v128x64f~in,v128x64f~in)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x57,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vxorpd xmm0,xmm0,[r8]                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[5]{c4 c1 79 57 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vxor(in Vector256<float> x, in Vector256<float> y), hex://intrinsics/dinxfp?vxor#vxor_(v256x32f~in,v256x32f~in)
; vxor_(v256x32f~in,v256x32f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x57,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorps ymm0,ymm0,[r8]                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[5]{c4 c1 7c 57 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vxor(in Vector256<double> x, in Vector256<double> y), hex://intrinsics/dinxfp?vxor#vxor_(v256x64f~in,v256x64f~in)
; vxor_(v256x64f~in,v256x64f~in)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x57,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vxorpd ymm0,ymm0,[r8]                   ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[5]{c4 c1 7d 57 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vor(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vor#vor_(v128x32f,v128x32f)
; vor_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x56,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vorps xmm0,xmm0,[r8]                    ; VORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 56 /r || encoded[5]{c4 c1 78 56 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vor(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vor#vor_(v128x64f,v128x64f)
; vor_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x56,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vorpd xmm0,xmm0,[r8]                    ; VORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 56 /r || encoded[5]{c4 c1 79 56 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vor(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vor#vor_(v256x32f,v256x32f)
; vor_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x56,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vorps ymm0,ymm0,[r8]                    ; VORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 56 /r || encoded[5]{c4 c1 7c 56 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vor(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vor#vor_(v256x64f,v256x64f)
; vor_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x56,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vorpd ymm0,ymm0,[r8]                    ; VORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 56 /r || encoded[5]{c4 c1 7d 56 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vxornot(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vxornot#vxornot_(v128x32f,v128x32f)
; vxornot_(v128x32f,v128x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf8,0xc2,0xc8,0x00,0xc5,0xf8,0x57,0xc1,0xc5,0xf8,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vcmpeqps xmm1,xmm0,xmm0                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[5]{c5 f8 c2 c8 00}
000fh vxorps xmm0,xmm0,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c1}
0013h vxorps xmm0,xmm0,[rdx]                  ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 02}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vxornot(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vxornot#vxornot_(v128x64f,v128x64f)
; vxornot_(v128x64f,v128x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf9,0xc2,0xc8,0x00,0xc5,0xf9,0x57,0xc1,0xc5,0xf9,0x57,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vcmpeqpd xmm1,xmm0,xmm0                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c8 00}
000fh vxorpd xmm0,xmm0,xmm1                   ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 c1}
0013h vxorpd xmm0,xmm0,[rdx]                  ; VXORPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 57 /r || encoded[4]{c5 f9 57 02}
0017h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vxornot(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vxornot#vxornot_(v256x32f,v256x32f)
; vxornot_(v256x32f,v256x32f)[34] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc5,0xfc,0xc2,0xc8,0x00,0xc5,0xfc,0x57,0xc1,0xc5,0xfc,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vcmpeqps ymm1,ymm0,ymm0                 ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[5]{c5 fc c2 c8 00}
000fh vxorps ymm0,ymm0,ymm1                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c1}
0013h vxorps ymm0,ymm0,[rdx]                  ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 02}
0017h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vxornot(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vxornot#vxornot_(v256x64f,v256x64f)
; vxornot_(v256x64f,v256x64f)[34] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc5,0xfd,0xc2,0xc8,0x00,0xc5,0xfd,0x57,0xc1,0xc5,0xfd,0x57,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vcmpeqpd ymm1,ymm0,ymm0                 ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[5]{c5 fd c2 c8 00}
000fh vxorpd ymm0,ymm0,ymm1                   ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[4]{c5 fd 57 c1}
0013h vxorpd ymm0,ymm0,[rdx]                  ; VXORPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 57 /r || encoded[4]{c5 fd 57 02}
0017h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
001bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0021h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> veq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?veq#veq_(v128x32f,v128x32f)
; veq_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpeqps xmm0,xmm0,[r8]                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 00}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> veq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?veq#veq_(v128x64f,v128x64f)
; veq_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpeqpd xmm0,xmm0,[r8]                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 00}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> veq(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?veq#veq_(v256x32f,v256x32f)
; veq_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x08,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpeq_uqps ymm0,ymm0,[r8]              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 08}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> veq(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?veq#veq_(v256x64f,v256x64f)
; veq_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x08,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpeq_uqpd ymm0,ymm0,[r8]              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 08}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vgt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vgt#vgt_(v128x32f,v128x32f)
; vgt_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x06,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnleps xmm0,xmm0,[r8]                ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 06}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vgt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vgt#vgt_(v128x64f,v128x64f)
; vgt_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x06,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnlepd xmm0,xmm0,[r8]                ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 06}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vgt(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vgt#vgt_(v256x32f,v256x32f)
; vgt_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x1e,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpgt_oqps ymm0,ymm0,[r8]              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 1e}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vgt(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vgt#vgt_(v256x64f,v256x64f)
; vgt_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x1e,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpgt_oqpd ymm0,ymm0,[r8]              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 1e}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vgteq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vgteq#vgteq_(v128x32f,v128x32f)
; vgteq_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x05,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnltps xmm0,xmm0,[r8]                ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 05}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vgteq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vgteq#vgteq_(v128x64f,v128x64f)
; vgteq_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x05,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnltpd xmm0,xmm0,[r8]                ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 05}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vgteq(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vgteq#vgteq_(v256x32f,v256x32f)
; vgteq_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x1d,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpge_oqps ymm0,ymm0,[r8]              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 1d}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vgteq(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vgteq#vgteq_(v256x64f,v256x64f)
; vgteq_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x1d,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpge_oqpd ymm0,ymm0,[r8]              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 1d}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vlt(Vector128<float> lhs, Vector128<float> rhs), hex://intrinsics/dinxfp?vlt#vlt_(v128x32f,v128x32f)
; vlt_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpltps xmm0,xmm0,[r8]                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 01}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vlt(Vector128<double> lhs, Vector128<double> rhs), hex://intrinsics/dinxfp?vlt#vlt_(v128x64f,v128x64f)
; vlt_(v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xf9,0xc2,0xc1,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vcmpltpd xmm0,xmm0,xmm1                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[5]{c5 f9 c2 c1 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vlt(Vector256<float> lhs, Vector256<float> rhs), hex://intrinsics/dinxfp?vlt#vlt_(v256x32f,v256x32f)
; vlt_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x11,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmplt_oqps ymm0,ymm0,[r8]              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 11}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vlt(Vector256<double> lhs, Vector256<double> rhs), hex://intrinsics/dinxfp?vlt#vlt_(v256x64f,v256x64f)
; vlt_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x11,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmplt_oqpd ymm0,ymm0,[r8]              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 11}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vlteq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vlteq#vlteq_(v128x32f,v128x32f)
; vlteq_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpleps xmm0,xmm0,[r8]                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vlteq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vlteq#vlteq_(v128x64f,v128x64f)
; vlteq_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmplepd xmm0,xmm0,[r8]                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vlteq(Vector256<float> lhs, Vector256<float> rhs), hex://intrinsics/dinxfp?vlteq#vlteq_(v256x32f,v256x32f)
; vlteq_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x12,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmple_oqps ymm0,ymm0,[r8]              ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 12}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vlteq(Vector256<double> lhs, Vector256<double> rhs), hex://intrinsics/dinxfp?vlteq#vlteq_(v256x64f,v256x64f)
; vlteq_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x12,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmple_oqpd ymm0,ymm0,[r8]              ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 12}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmax(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vmax#vmax_(v128x32f,v128x32f)
; vmax_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x5f,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmaxps xmm0,xmm0,[r8]                   ; VMAXPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5F /r || encoded[5]{c4 c1 78 5f 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmax(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vmax#vmax_(v128x64f,v128x64f)
; vmax_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x5f,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmaxpd xmm0,xmm0,[r8]                   ; VMAXPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5F /r || encoded[5]{c4 c1 79 5f 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vmax(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vmax#vmax_(v256x32f,v256x32f)
; vmax_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x5f,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmaxps ymm0,ymm0,[r8]                   ; VMAXPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5F /r || encoded[5]{c4 c1 7c 5f 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vmax(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vmax#vmax_(v256x64f,v256x64f)
; vmax_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x5f,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmaxpd ymm0,ymm0,[r8]                   ; VMAXPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5F /r || encoded[5]{c4 c1 7d 5f 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmin(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vmin#vmin_(v128x32f,v128x32f)
; vmin_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x5d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vminps xmm0,xmm0,[r8]                   ; VMINPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5D /r || encoded[5]{c4 c1 78 5d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmin(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vmin#vmin_(v128x64f,v128x64f)
; vmin_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x5d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vminpd xmm0,xmm0,[r8]                   ; VMINPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5D /r || encoded[5]{c4 c1 79 5d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vmin(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vmin#vmin_(v256x32f,v256x32f)
; vmin_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x5d,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vminps ymm0,ymm0,[r8]                   ; VMINPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5D /r || encoded[5]{c4 c1 7c 5d 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vmin(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vmin#vmin_(v256x64f,v256x64f)
; vmin_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x5d,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vminpd ymm0,ymm0,[r8]                   ; VMINPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5D /r || encoded[5]{c4 c1 7d 5d 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vneq(Vector128<float> lhs, Vector128<float> rhs), hex://intrinsics/dinxfp?vneq#vneq_(v128x32f,v128x32f)
; vneq_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x04,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpneqps xmm0,xmm0,[r8]                ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 04}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vneq(Vector128<double> lhs, Vector128<double> rhs), hex://intrinsics/dinxfp?vneq#vneq_(v128x64f,v128x64f)
; vneq_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x04,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpneqpd xmm0,xmm0,[r8]                ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 04}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vneq(Vector256<float> lhs, Vector256<float> rhs), hex://intrinsics/dinxfp?vneq#vneq_(v256x32f,v256x32f)
; vneq_(v256x32f,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0xc2,0x00,0x0c,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpneq_oqps ymm0,ymm0,[r8]             ; VCMPPS ymm1, ymm2, ymm3/m256, imm8 || VEX.256.0F.WIG C2 /r ib || encoded[6]{c4 c1 7c c2 00 0c}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vneq(Vector256<double> lhs, Vector256<double> rhs), hex://intrinsics/dinxfp?vneq#vneq_(v256x64f,v256x64f)
; vneq_(v256x64f,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0xc2,0x00,0x0c,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vcmpneq_oqpd ymm0,ymm0,[r8]             ; VCMPPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 7d c2 00 0c}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vnlt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vnlt#vnlt_(v128x64f,v128x64f)
; vnlt_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x05,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnltpd xmm0,xmm0,[r8]                ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 05}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vnlt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vnlt#vnlt_(v128x32f,v128x32f)
; vnlt_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x05,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpnltps xmm0,xmm0,[r8]                ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 05}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vnonz(Vector128<float> src), hex://intrinsics/dinxfp?vnonz#vnonz_(v128x32f)
; vnonz_(v128x32f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0e,0x01,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x85,0xc0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestps xmm0,[rcx]                      ; VTESTPS xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0E /r || encoded[5]{c4 e2 79 0e 01}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vnonz(Vector128<double> src), hex://intrinsics/dinxfp?vnonz#vnonz_(v128x64f)
; vnonz_(v128x64f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0f,0x01,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x85,0xc0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestpd xmm0,[rcx]                      ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f 01}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vnonz(Vector256<float> src), hex://intrinsics/dinxfp?vnonz#vnonz_(v256x32f)
; vnonz_(v256x32f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0e,0x01,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x85,0xc0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestps ymm0,[rcx]                      ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e 01}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vnonz(Vector256<double> src), hex://intrinsics/dinxfp?vnonz#vnonz_(v256x64f)
; vnonz_(v256x64f)[32] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0f,0x01,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0x85,0xc0,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestpd ymm0,[rcx]                      ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f 01}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h test eax,eax                            ; TEST r/m32, r32 || o32 85 /r || encoded[2]{85 c0}
0016h sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0019h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
001ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestc(Vector128<float> src, Vector128<float> mask), hex://intrinsics/dinxfp?vtestc#vtestc_(v128x32f,v128x32f)
; vtestc_(v128x32f,v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0e,0x02,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestps xmm0,[rdx]                      ; VTESTPS xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0E /r || encoded[5]{c4 e2 79 0e 02}
000eh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestc(Vector128<double> src, Vector128<double> mask), hex://intrinsics/dinxfp?vtestc#vtestc_(v128x64f,v128x64f)
; vtestc_(v128x64f,v128x64f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0f,0x02,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestpd xmm0,[rdx]                      ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f 02}
000eh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestc(Vector256<float> src, Vector256<float> mask), hex://intrinsics/dinxfp?vtestc#vtestc_(v256x32f,v256x32f)
; vtestc_(v256x32f,v256x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0e,0x02,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestps ymm0,[rdx]                      ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e 02}
000eh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestc(Vector256<double> src, Vector256<double> mask), hex://intrinsics/dinxfp?vtestc#vtestc_(v256x64f,v256x64f)
; vtestc_(v256x64f,v256x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0f,0x02,0x0f,0x92,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestpd ymm0,[rdx]                      ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f 02}
000eh setb al                                 ; SETB r/m8 || 0F 92 /r || encoded[3]{0f 92 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestz(Vector128<float> src, Vector128<float> mask), hex://intrinsics/dinxfp?vtestz#vtestz_(v128x32f,v128x32f)
; vtestz_(v128x32f,v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0e,0x02,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestps xmm0,[rdx]                      ; VTESTPS xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0E /r || encoded[5]{c4 e2 79 0e 02}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestz(Vector128<double> src, Vector128<double> mask), hex://intrinsics/dinxfp?vtestz#vtestz_(v128x64f,v128x64f)
; vtestz_(v128x64f,v128x64f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc4,0xe2,0x79,0x0f,0x02,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vtestpd xmm0,[rdx]                      ; VTESTPD xmm1, xmm2/m128 || VEX.128.66.0F38.W0 0F /r || encoded[5]{c4 e2 79 0f 02}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestz(Vector256<float> src, Vector256<float> mask), hex://intrinsics/dinxfp?vtestz#vtestz_(v256x32f,v256x32f)
; vtestz_(v256x32f,v256x32f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0e,0x02,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestps ymm0,[rdx]                      ; VTESTPS ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0E /r || encoded[5]{c4 e2 7d 0e 02}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; bool vtestz(Vector256<double> src, Vector256<double> mask), hex://intrinsics/dinxfp?vtestz#vtestz_(v256x64f,v256x64f)
; vtestz_(v256x64f,v256x64f)[24] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc4,0xe2,0x7d,0x0f,0x02,0x0f,0x94,0xc0,0x0f,0xb6,0xc0,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vtestpd ymm0,[rdx]                      ; VTESTPD ymm1, ymm2/m256 || VEX.256.66.0F38.W0 0F /r || encoded[5]{c4 e2 7d 0f 02}
000eh sete al                                 ; SETE r/m8 || 0F 94 /r || encoded[3]{0f 94 c0}
0011h movzx eax,al                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 c0}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vngt(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vngt#vngt_(v128x32f,v128x32f)
; vngt_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpleps xmm0,xmm0,[r8]                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vngt(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vngt#vngt_(v128x64f,v128x64f)
; vngt_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmplepd xmm0,xmm0,[r8]                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vngteq(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vngteq#vngteq_(v128x32f,v128x32f)
; vngteq_(v128x32f,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0xc2,0x00,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpltps xmm0,xmm0,[r8]                 ; VCMPPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C2 /r ib || encoded[6]{c4 c1 78 c2 00 01}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vngteq(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vngteq#vngteq_(v128x64f,v128x64f)
; vngteq_(v128x64f,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0xc2,0x00,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vcmpltpd xmm0,xmm0,[r8]                 ; VCMPPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F.WIG C2 /r ib || encoded[6]{c4 c1 79 c2 00 01}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert(Vector128<float> src, N64 w, long t), hex://intrinsics/dinxfp?convert#convert_(v128x32f,n64,64i)
; convert_(v128x32f,n64,64i)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfa,0x2d,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2si rax,dword ptr [rcx]           ; VCVTSS2SI r64, xmm1/m32 || VEX.LIG.F3.0F.W1 2D /r || encoded[5]{c4 e1 fa 2d 01}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int convert(Vector128<float> src, N32 w, int t), hex://intrinsics/dinxfp?convert#convert_(v128x32f,n32,32i)
; convert_(v128x32f,n32,32i)[10] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x2d,0x01,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtss2si eax,dword ptr [rcx]           ; VCVTSS2SI r32, xmm1/m32 || VEX.LIG.F3.0F.W0 2D /r || encoded[4]{c5 fa 2d 01}
0009h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; long convert(Vector128<double> src, N64 w, long t), hex://intrinsics/dinxfp?convert#convert_(v128x64f,n64,64i)
; convert_(v128x64f,n64,64i)[11] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe1,0xfb,0x2d,0x01,0xc3}
; TermCode = CTC_RET_ZED_SBB
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtsd2si rax,qword ptr [rcx]           ; VCVTSD2SI r64, xmm1/m64 || VEX.LIG.F2.0F.W1 2D /r || encoded[5]{c4 e1 fb 2d 01}
000ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> convert(Vector128<float> src, N128 w, int t), hex://intrinsics/dinxfp?convert#convert_(v128x32f,n128,32i)
; convert_(v128x32f,n128,32i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x5b,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtps2dq xmm0,xmmword ptr [rdx]        ; VCVTPS2DQ xmm1, xmm2/m128 || VEX.128.66.0F.WIG 5B /r || encoded[4]{c5 f9 5b 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> convert(Vector128<int> src, N128 w, float t), hex://intrinsics/dinxfp?convert#convert_(v128x32i,n128,32f)
; convert_(v128x32i,n128,32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x5b,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtdq2ps xmm0,xmmword ptr [rdx]        ; VCVTDQ2PS xmm1, xmm2/m128 || VEX.128.0F.WIG 5B /r || encoded[4]{c5 f8 5b 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> convert(Vector128<int> src, N256 w, double t), hex://intrinsics/dinxfp?convert#convert_(v128x32i,n256,64f)
; convert_(v128x32i,n256,64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfe,0xe6,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtdq2pd ymm0,xmmword ptr [rdx]        ; VCVTDQ2PD ymm1, xmm2/m128 || VEX.256.F3.0F.WIG E6 /r || encoded[4]{c5 fe e6 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> convert(Vector128<double> src, N128 w, float t), hex://intrinsics/dinxfp?convert#convert_(v128x64f,n128,32f)
; convert_(v128x64f,n128,32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x5a,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtpd2ps xmm0,xmmword ptr [rdx]        ; VCVTPD2PS xmm1, xmm2/m128 || VEX.128.66.0F.WIG 5A /r || encoded[4]{c5 f9 5a 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> convert(Vector256<int> src, N256 w, float t), hex://intrinsics/dinxfp?convert#convert_(v256x32i,n256,32f)
; convert_(v256x32i,n256,32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x5b,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtdq2ps ymm0,ymmword ptr [rdx]        ; VCVTDQ2PS ymm1, ymm2/m256 || VEX.256.0F.WIG 5B /r || encoded[4]{c5 fc 5b 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> convert(Vector128<double> src, N128 w, int t), hex://intrinsics/dinxfp?convert#convert_(v128x64f,n128,32i)
; convert_(v128x64f,n128,32i)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0xe6,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtpd2dq xmm0,xmmword ptr [rdx]        ; VCVTPD2DQ xmm1, xmm2/m128 || VEX.128.F2.0F.WIG E6 /r || encoded[4]{c5 fb e6 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> convert(Vector256<float> src, N256 w, int t), hex://intrinsics/dinxfp?convert#convert_(v256x32f,n256,32i)
; convert_(v256x32f,n256,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x5b,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtps2dq ymm0,ymmword ptr [rdx]        ; VCVTPS2DQ ymm1, ymm2/m256 || VEX.256.66.0F.WIG 5B /r || encoded[4]{c5 fd 5b 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> convert(Vector256<double> src, N128 w, int t), hex://intrinsics/dinxfp?convert#convert_(v256x64f,n128,32i)
; convert_(v256x64f,n128,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xff,0xe6,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtpd2dq xmm0,ymmword ptr [rdx]        ; VCVTPD2DQ xmm1, ymm2/m256 || VEX.256.F2.0F.WIG E6 /r || encoded[4]{c5 ff e6 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> convert(Vector256<double> src, N128 w, float t), hex://intrinsics/dinxfp?convert#convert_(v256x64f,n128,32f)
; convert_(v256x64f,n128,32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x5a,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vcvtpd2ps xmm0,ymmword ptr [rdx]        ; VCVTPD2PS xmm1, ymm2/m256 || VEX.256.66.0F.WIG 5A /r || encoded[4]{c5 fd 5a 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vhi(Vector128<float> src), hex://intrinsics/dinxfp?vhi#vhi_(v128x32f)
; vhi_(v128x32f)[48] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xe3,0xf9,0x16,0xc0,0x01,0xc5,0xf8,0x57,0xc0,0xc4,0xe1,0xfa,0x2a,0xc0,0xc5,0xfa,0x11,0x44,0x24,0x04,0xc5,0xfa,0x10,0x44,0x24,0x04,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
000fh vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0013h vcvtsi2ss xmm0,xmm0,rax                 ; VCVTSI2SS xmm1, xmm2, r/m64 || VEX.LIG.F3.0F.W1 2A /r || encoded[5]{c4 e1 fa 2a c0}
0018h vmovss dword ptr [rsp+4],xmm0           ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 44 24 04}
001eh vmovss xmm0,dword ptr [rsp+4]           ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 04}
0024h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0028h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
002bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
002fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vhi(Vector128<double> src), hex://intrinsics/dinxfp?vhi#vhi_(v128x64f)
; vhi_(v128x64f)[32] = {0x50,0xc5,0xf8,0x77,0x90,0xc5,0xf9,0x70,0x02,0xee,0xc5,0xfb,0x11,0x04,0x24,0xc5,0xfb,0x10,0x04,0x24,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0x48,0x83,0xc4,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vpshufd xmm0,[rdx],0eeh                 ; VPSHUFD xmm1, xmm2/m128, imm8 || VEX.128.66.0F.WIG 70 /r ib || encoded[5]{c5 f9 70 02 ee}
000ah vmovsd qword ptr [rsp],xmm0             ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[5]{c5 fb 11 04 24}
000fh vmovsd xmm0,qword ptr [rsp]             ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 24}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
001fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vperm8x32(Vector256<float> src, Vector256<int> spec), hex://intrinsics/dinxfp?vperm8x32#vperm8x32_(v256x32f,v256x32i)
; vperm8x32_(v256x32f,v256x32i)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc4,0xe2,0x7d,0x16,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpermps ymm0,ymm0,[rdx]                 ; VPERMPS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 16 /r || encoded[5]{c4 e2 7d 16 02}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vperm8x32(Vector256<float> src, Vector256<uint> spec), hex://intrinsics/dinxfp?vperm8x32#vperm8x32_(v256x32f,v256x32u)
; vperm8x32_(v256x32f,v256x32u)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc4,0xe2,0x7d,0x16,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpermps ymm0,ymm0,[rdx]                 ; VPERMPS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 16 /r || encoded[5]{c4 e2 7d 16 02}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vswaphl(Vector256<float> x), hex://intrinsics/dinxfp?vswaphl#vswaphl_(v256x32f)
; vswaphl_(v256x32f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc5,0xfc,0x28,0xc8,0xc4,0xe3,0x75,0x06,0xc0,0x03,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vperm2f128 ymm0,ymm1,ymm0,3             ; VPERM2F128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 06 /r ib || encoded[6]{c4 e3 75 06 c0 03}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vswaphl(Vector256<double> x), hex://intrinsics/dinxfp?vswaphl#vswaphl_(v256x64f)
; vswaphl_(v256x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc5,0xfc,0x28,0xc8,0xc4,0xe3,0x75,0x06,0xc0,0x03,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000dh vperm2f128 ymm0,ymm1,ymm0,3             ; VPERM2F128 ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.W0 06 /r ib || encoded[6]{c4 e3 75 06 c0 03}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vreverse(Vector256<float> src), hex://intrinsics/dinxfp?vreverse#vreverse_(v256x32f)
; vreverse_(v256x32f)[112] = {0xc5,0xf8,0x77,0x66,0x90,0xb8,0x07,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc0,0xb8,0x06,0x00,0x00,0x00,0xc4,0xe3,0x79,0x22,0xc0,0x01,0xb8,0x05,0x00,0x00,0x00,0xc4,0xe3,0x79,0x22,0xc0,0x02,0xb8,0x04,0x00,0x00,0x00,0xc4,0xe3,0x79,0x22,0xc0,0x03,0xb8,0x03,0x00,0x00,0x00,0xc5,0xf9,0x6e,0xc8,0xb8,0x02,0x00,0x00,0x00,0xc4,0xe3,0x71,0x22,0xc8,0x01,0xb8,0x01,0x00,0x00,0x00,0xc4,0xe3,0x71,0x22,0xc8,0x02,0x33,0xc0,0xc4,0xe3,0x71,0x22,0xc8,0x03,0xc4,0xe3,0x7d,0x38,0xc1,0x01,0xc5,0xfd,0x10,0x0a,0xc4,0xe2,0x7d,0x16,0xc1,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h mov eax,7                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 07 00 00 00}
000ah vmovd xmm0,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c0}
000eh mov eax,6                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 06 00 00 00}
0013h vpinsrd xmm0,xmm0,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c0 01}
0019h mov eax,5                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 05 00 00 00}
001eh vpinsrd xmm0,xmm0,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c0 02}
0024h mov eax,4                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 04 00 00 00}
0029h vpinsrd xmm0,xmm0,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 79 22 c0 03}
002fh mov eax,3                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 03 00 00 00}
0034h vmovd xmm1,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e c8}
0038h mov eax,2                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 02 00 00 00}
003dh vpinsrd xmm1,xmm1,eax,1                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 01}
0043h mov eax,1                               ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 01 00 00 00}
0048h vpinsrd xmm1,xmm1,eax,2                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 02}
004eh xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0050h vpinsrd xmm1,xmm1,eax,3                 ; VPINSRD xmm1, xmm2, r/m32, imm8 || VEX.128.66.0F3A.W0 22 /r ib || encoded[6]{c4 e3 71 22 c8 03}
0056h vinserti128 ymm0,ymm0,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 7d 38 c1 01}
005ch vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
0060h vpermps ymm0,ymm0,ymm1                  ; VPERMPS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 16 /r || encoded[5]{c4 e2 7d 16 c1}
0065h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0069h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
006ch vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
006fh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vadd(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vadd#vadd_(v128x32f,v128x32f)
; vadd_(v128x32f,v128x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc5,0xf8,0x58,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vaddps xmm0,xmm0,[rdx]                  ; VADDPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 58 /r || encoded[4]{c5 f8 58 02}
000dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0011h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vadd(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vadd#vadd_(v128x64f,v128x64f)
; vadd_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x58,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vaddpd xmm0,xmm0,[r8]                   ; VADDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 58 /r || encoded[5]{c4 c1 79 58 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vadd(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vadd#vadd_(v256x32f,v256x32f)
; vadd_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x58,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vaddps ymm0,ymm0,[r8]                   ; VADDPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 58 /r || encoded[5]{c4 c1 7c 58 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vadd(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vadd#vadd_(v256x64f,v256x64f)
; vadd_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x58,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vaddpd ymm0,ymm0,[r8]                   ; VADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 58 /r || encoded[5]{c4 c1 7d 58 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> ceil(Vector128<float> src), hex://intrinsics/dinxfp?ceil#ceil_(v128x32f)
; ceil_(v128x32f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x08,0x02,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps xmm0,[rdx],0ah                 ; VROUNDPS xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 79 08 02 0a}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> ceil(Vector128<double> src), hex://intrinsics/dinxfp?ceil#ceil_(v128x64f)
; ceil_(v128x64f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x09,0x02,0x0a,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd xmm0,[rdx],0ah                 ; VROUNDPD xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 79 09 02 0a}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> ceil(Vector256<float> src), hex://intrinsics/dinxfp?ceil#ceil_(v256x32f)
; ceil_(v256x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x08,0x02,0x0a,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps ymm0,[rdx],0ah                 ; VROUNDPS ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 7d 08 02 0a}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> ceil(Vector256<double> src), hex://intrinsics/dinxfp?ceil#ceil_(v256x64f)
; ceil_(v256x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x09,0x02,0x0a,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd ymm0,[rdx],0ah                 ; VROUNDPD ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 7d 09 02 0a}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vdiv(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vdiv#vdiv_(v128x32f,v128x32f)
; vdiv_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x5e,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vdivps xmm0,xmm0,[r8]                   ; VDIVPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5E /r || encoded[5]{c4 c1 78 5e 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vdiv(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vdiv#vdiv_(v128x64f,v128x64f)
; vdiv_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x5e,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vdivpd xmm0,xmm0,[r8]                   ; VDIVPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5E /r || encoded[5]{c4 c1 79 5e 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vdiv(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vdiv#vdiv_(v256x32f,v256x32f)
; vdiv_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x5e,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vdivps ymm0,ymm0,[r8]                   ; VDIVPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5E /r || encoded[5]{c4 c1 7c 5e 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vdiv(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vdiv#vdiv_(v256x64f,v256x64f)
; vdiv_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x5e,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vdivpd ymm0,ymm0,[r8]                   ; VDIVPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5E /r || encoded[5]{c4 c1 7d 5e 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vdot(Vector128<float> x, Vector128<float> y, Nullable<byte> control), hex://intrinsics/dinxfp?vdot#vdot_(v128x32f,v128x32f)
; vdot_(v128x32f,v128x32f)[98] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x4c,0x89,0x4c,0x24,0x68,0x48,0x8b,0xf1,0x48,0x8d,0x4c,0x24,0x68,0x44,0x0f,0xb6,0x09,0x0f,0xb6,0x49,0x01,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x45,0x84,0xc9,0x75,0x08,0x41,0xb9,0xff,0x00,0x00,0x00,0xeb,0x04,0x44,0x0f,0xb6,0xc9,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0xcf,0xca,0x14,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+68h],r9                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 4c 24 68}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rcx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 68}
0015h movzx r9d,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 09}
0019h movzx ecx,byte ptr [rcx+1]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 49 01}
001dh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0021h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0026h test r9b,r9b                            ; TEST r/m8, r8 || 84 /r || encoded[3]{45 84 c9}
0029h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 08}
002bh mov r9d,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 ff 00 00 00}
0031h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
0033h movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0040h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0046h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
004bh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0050h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0054h call 7ff7c77596d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf ca 14 ff}
0059h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005ch add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0060h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vdot(Vector128<double> x, Vector128<double> y, Nullable<byte> control), hex://intrinsics/dinxfp?vdot#vdot_(v128x64f,v128x64f)
; vdot_(v128x64f,v128x64f)[98] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x4c,0x89,0x4c,0x24,0x68,0x48,0x8b,0xf1,0x48,0x8d,0x4c,0x24,0x68,0x44,0x0f,0xb6,0x09,0x0f,0xb6,0x49,0x01,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x45,0x84,0xc9,0x75,0x08,0x41,0xb9,0xff,0x00,0x00,0x00,0xeb,0x04,0x44,0x0f,0xb6,0xc9,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0x57,0xca,0x14,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+68h],r9                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{4c 89 4c 24 68}
000dh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0010h lea rcx,[rsp+68h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 68}
0015h movzx r9d,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 09}
0019h movzx ecx,byte ptr [rcx+1]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 49 01}
001dh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0021h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0026h test r9b,r9b                            ; TEST r/m8, r8 || 84 /r || encoded[3]{45 84 c9}
0029h jne short 0033h                         ; JNE rel8 || 75 cb || encoded[2]{75 08}
002bh mov r9d,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 ff 00 00 00}
0031h jmp short 0037h                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
0033h movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
0037h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
003ah vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0040h vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0046h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
004bh lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0050h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0054h call 7ff7c77596e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 ca 14 ff}
0059h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
005ch add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
0060h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0061h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vdot(Vector256<float> x, Vector256<float> y, Nullable<byte> control), hex://intrinsics/dinxfp?vdot#vdot_(v256x32f,v256x32f)
; vdot_(v256x32f,v256x32f)[107] = {0x56,0x48,0x83,0xec,0x70,0xc5,0xf8,0x77,0x4c,0x89,0x8c,0x24,0x98,0x00,0x00,0x00,0x48,0x8b,0xf1,0x48,0x8d,0x8c,0x24,0x98,0x00,0x00,0x00,0x44,0x0f,0xb6,0x09,0x0f,0xb6,0x49,0x01,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0x45,0x84,0xc9,0x75,0x08,0x41,0xb9,0xff,0x00,0x00,0x00,0xeb,0x04,0x44,0x0f,0xb6,0xc9,0x48,0x8b,0xce,0xc5,0xfd,0x11,0x44,0x24,0x40,0xc5,0xfd,0x11,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x40,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0x71,0xd0,0x14,0xff,0x48,0x8b,0xc6,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x70,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,70h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 70}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov [rsp+98h],r9                        ; MOV r/m64, r64 || REX.W 89 /r || encoded[8]{4c 89 8c 24 98 00 00 00}
0010h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0013h lea rcx,[rsp+98h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 98 00 00 00}
001bh movzx r9d,byte ptr [rcx]                ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 09}
001fh movzx ecx,byte ptr [rcx+1]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{0f b6 49 01}
0023h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0027h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
002ch test r9b,r9b                            ; TEST r/m8, r8 || 84 /r || encoded[3]{45 84 c9}
002fh jne short 0039h                         ; JNE rel8 || 75 cb || encoded[2]{75 08}
0031h mov r9d,0ffh                            ; MOV r32, imm32 || o32 B8+rd id || encoded[6]{41 b9 ff 00 00 00}
0037h jmp short 003dh                         ; JMP rel8 || EB cb || encoded[2]{eb 04}
0039h movzx r9d,cl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{44 0f b6 c9}
003dh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0040h vmovupd [rsp+40h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 40}
0046h vmovupd [rsp+20h],ymm1                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 4c 24 20}
004ch lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0051h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
0056h movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
005ah call 7ff7c7759d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 d0 14 ff}
005fh mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0062h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0065h add rsp,70h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 70}
0069h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
006ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vfloor(Vector128<float> x), hex://intrinsics/dinxfp?vfloor#vfloor_(v128x32f)
; vfloor_(v128x32f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x08,0x02,0x09,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps xmm0,[rdx],9                   ; VROUNDPS xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 79 08 02 09}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vfloor(Vector128<double> x), hex://intrinsics/dinxfp?vfloor#vfloor_(v128x64f)
; vfloor_(v128x64f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x09,0x02,0x09,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd xmm0,[rdx],9                   ; VROUNDPD xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 79 09 02 09}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vfloor(Vector256<float> x), hex://intrinsics/dinxfp?vfloor#vfloor_(v256x32f)
; vfloor_(v256x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x08,0x02,0x09,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps ymm0,[rdx],9                   ; VROUNDPS ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 7d 08 02 09}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vfloor(Vector256<double> x), hex://intrinsics/dinxfp?vfloor#vfloor_(v256x64f)
; vfloor_(v256x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x09,0x02,0x09,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd ymm0,[rdx],9                   ; VROUNDPD ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 7d 09 02 09}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vfnmadd(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxfp?vfnmadd#vfnmadd_(v128x32f,v128x32f,v128x32f)
; vfnmadd_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xac,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfnmadd213ps xmm0,xmm1,[r9]             ; VFNMADD213PS xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 AC /r || encoded[5]{c4 c2 71 ac 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vfnmadd(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxfp?vfnmadd#vfnmadd_(v128x64f,v128x64f,v128x64f)
; vfnmadd_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xac,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfnmadd213pd xmm0,xmm1,[r9]             ; VFNMADD213PD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 AC /r || encoded[5]{c4 c2 f1 ac 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vfmaddsub(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxfp?vfmaddsub#vfmaddsub_(v128x32f,v128x32f,v128x32f)
; vfmaddsub_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xa6,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmaddsub213ps xmm0,xmm1,[r9]           ; VFMADDSUB213PS xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 A6 /r || encoded[5]{c4 c2 71 a6 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vfmaddsub(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxfp?vfmaddsub#vfmaddsub_(v128x64f,v128x64f,v128x64f)
; vfmaddsub_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xa6,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmaddsub213pd xmm0,xmm1,[r9]           ; VFMADDSUB213PD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 A6 /r || encoded[5]{c4 c2 f1 a6 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vfnmadd(Vector256<float> x, Vector256<float> y, Vector256<float> z), hex://intrinsics/dinxfp?vfnmadd#vfnmadd_(v256x32f,v256x32f,v256x32f)
; vfnmadd_(v256x32f,v256x32f,v256x32f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0x75,0xac,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfnmadd213ps ymm0,ymm1,[r9]             ; VFNMADD213PS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 AC /r || encoded[5]{c4 c2 75 ac 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vfnmadd(Vector256<double> x, Vector256<double> y, Vector256<double> z), hex://intrinsics/dinxfp?vfnmadd#vfnmadd_(v256x64f,v256x64f,v256x64f)
; vfnmadd_(v256x64f,v256x64f,v256x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0xf5,0xac,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfnmadd213pd ymm0,ymm1,[r9]             ; VFNMADD213PD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 AC /r || encoded[5]{c4 c2 f5 ac 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vfmaddsub(Vector256<float> x, Vector256<float> y, Vector256<float> z), hex://intrinsics/dinxfp?vfmaddsub#vfmaddsub_(v256x32f,v256x32f,v256x32f)
; vfmaddsub_(v256x32f,v256x32f,v256x32f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0x75,0xa6,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfmaddsub213ps ymm0,ymm1,[r9]           ; VFMADDSUB213PS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 A6 /r || encoded[5]{c4 c2 75 a6 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vfmaddsub(Vector256<double> x, Vector256<double> y, Vector256<double> z), hex://intrinsics/dinxfp?vfmaddsub#vfmaddsub_(v256x64f,v256x64f,v256x64f)
; vfmaddsub_(v256x64f,v256x64f,v256x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0xf5,0xa6,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfmaddsub213pd ymm0,ymm1,[r9]           ; VFMADDSUB213PD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 A6 /r || encoded[5]{c4 c2 f5 a6 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> fmadd(Vector128<float> x, Vector128<float> y, Vector128<float> z), hex://intrinsics/dinxfp?fmadd#fmadd_(v128x32f,v128x32f,v128x32f)
; fmadd_(v128x32f,v128x32f,v128x32f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0x71,0xa8,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmadd213ps xmm0,xmm1,[r9]              ; VFMADD213PS xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 A8 /r || encoded[5]{c4 c2 71 a8 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> fmadd(Vector128<double> x, Vector128<double> y, Vector128<double> z), hex://intrinsics/dinxfp?fmadd#fmadd_(v128x64f,v128x64f,v128x64f)
; fmadd_(v128x64f,v128x64f,v128x64f)[27] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc4,0xc2,0xf1,0xa8,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vfmadd213pd xmm0,xmm1,[r9]              ; VFMADD213PD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 A8 /r || encoded[5]{c4 c2 f1 a8 01}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> fmadd(Vector256<float> x, Vector256<float> y, Vector256<float> z), hex://intrinsics/dinxfp?fmadd#fmadd_(v256x32f,v256x32f,v256x32f)
; fmadd_(v256x32f,v256x32f,v256x32f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0x75,0xa8,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfmadd213ps ymm0,ymm1,[r9]              ; VFMADD213PS ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 A8 /r || encoded[5]{c4 c2 75 a8 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> fmadd(Vector256<double> x, Vector256<double> y, Vector256<double> z), hex://intrinsics/dinxfp?fmadd#fmadd_(v256x64f,v256x64f,v256x64f)
; fmadd_(v256x64f,v256x64f,v256x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x08,0xc4,0xc2,0xf5,0xa8,0x01,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000eh vfmadd213pd ymm0,ymm1,[r9]              ; VFMADD213PD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 A8 /r || encoded[5]{c4 c2 f5 a8 01}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vhadd(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vhadd#vhadd_(v128x32f,v128x32f)
; vhadd_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x7c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vhaddps xmm0,xmm0,[r8]                  ; VHADDPS xmm1, xmm2, xmm3/m128 || VEX.128.F2.0F.WIG 7C /r || encoded[5]{c4 c1 7b 7c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vhadd(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vhadd#vhadd_(v128x64f,v128x64f)
; vhadd_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x7c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vhaddpd xmm0,xmm0,[r8]                  ; VHADDPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 7C /r || encoded[5]{c4 c1 79 7c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vhadd(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vhadd#vhadd_(v256x32f,v256x32f)
; vhadd_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7f,0x7c,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vhaddps ymm0,ymm0,[r8]                  ; VHADDPS ymm1, ymm2, ymm3/m256 || VEX.256.F2.0F.WIG 7C /r || encoded[5]{c4 c1 7f 7c 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vhadd(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vhadd#vhadd_(v256x64f,v256x64f)
; vhadd_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x7c,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vhaddpd ymm0,ymm0,[r8]                  ; VHADDPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 7C /r || encoded[5]{c4 c1 7d 7c 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vhsub(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vhsub#vhsub_(v128x32f,v128x32f)
; vhsub_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x7b,0x7d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vhsubps xmm0,xmm0,[r8]                  ; VHSUBPS xmm1, xmm2, xmm3/m128 || VEX.128.F2.0F.WIG 7D /r || encoded[5]{c4 c1 7b 7d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vhsub(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vhsub#vhsub_(v128x64f,v128x64f)
; vhsub_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x7d,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vhsubpd xmm0,xmm0,[r8]                  ; VHSUBPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 7D /r || encoded[5]{c4 c1 79 7d 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vhsub(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vhsub#vhsub_(v256x32f,v256x32f)
; vhsub_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7f,0x7d,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vhsubps ymm0,ymm0,[r8]                  ; VHSUBPS ymm1, ymm2, ymm3/m256 || VEX.256.F2.0F.WIG 7D /r || encoded[5]{c4 c1 7f 7d 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vhsub(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vhsub#vhsub_(v256x64f,v256x64f)
; vhsub_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x7d,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vhsubpd ymm0,ymm0,[r8]                  ; VHSUBPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 7D /r || encoded[5]{c4 c1 7d 7d 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmul(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vmul#vmul_(v128x32f,v128x32f)
; vmul_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x59,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmulps xmm0,xmm0,[r8]                   ; VMULPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 59 /r || encoded[5]{c4 c1 78 59 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmul(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vmul#vmul_(v128x64f,v128x64f)
; vmul_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x59,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmulpd xmm0,xmm0,[r8]                   ; VMULPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 59 /r || encoded[5]{c4 c1 79 59 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vmul(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vmul#vmul_(v256x32f,v256x32f)
; vmul_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x59,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmulps ymm0,ymm0,[r8]                   ; VMULPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 59 /r || encoded[5]{c4 c1 7c 59 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vmul(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vmul#vmul_(v256x64f,v256x64f)
; vmul_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x59,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmulpd ymm0,ymm0,[r8]                   ; VMULPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 59 /r || encoded[5]{c4 c1 7d 59 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vnegate(Vector128<float> x), hex://intrinsics/dinxfp?vnegate#vnegate_(v128x32f)
; vnegate_(v128x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc5,0xf8,0x5c,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vsubps xmm0,xmm0,xmm1                   ; VSUBPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5C /r || encoded[4]{c5 f8 5c c1}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vnegate(Vector128<double> x), hex://intrinsics/dinxfp?vnegate#vnegate_(v128x64f)
; vnegate_(v128x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x57,0xc0,0xc5,0xf9,0x10,0x0a,0xc5,0xf9,0x5c,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vsubpd xmm0,xmm0,xmm1                   ; VSUBPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5C /r || encoded[4]{c5 f9 5c c1}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vnegate(Vector256<float> x), hex://intrinsics/dinxfp?vnegate#vnegate_(v256x32f)
; vnegate_(v256x32f)[28] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x10,0x0a,0xc5,0xfc,0x5c,0xc1,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vsubps ymm0,ymm0,ymm1                   ; VSUBPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5C /r || encoded[4]{c5 fc 5c c1}
0011h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vnegate(Vector256<double> x), hex://intrinsics/dinxfp?vnegate#vnegate_(v256x64f)
; vnegate_(v256x64f)[28] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x57,0xc0,0xc5,0xfd,0x10,0x0a,0xc5,0xfd,0x5c,0xc1,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vxorps ymm0,ymm0,ymm0                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 fc 57 c0}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vsubpd ymm0,ymm0,ymm1                   ; VSUBPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5C /r || encoded[4]{c5 fd 5c c1}
0011h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> rcp(Vector128<float> x), hex://intrinsics/dinxfp?rcp#rcp_(v128x32f)
; rcp_(v128x32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x53,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vrcpps xmm0,[rdx]                       ; VRCPPS xmm1, xmm2/m128 || VEX.128.0F.WIG 53 /r || encoded[4]{c5 f8 53 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> rcp(Vector256<float> x), hex://intrinsics/dinxfp?rcp#rcp_(v256x32f)
; rcp_(v256x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x53,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vrcpps ymm0,[rdx]                       ; VRCPPS ymm1, ymm2/m256 || VEX.256.0F.WIG 53 /r || encoded[4]{c5 fc 53 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vround(Vector128<float> x), hex://intrinsics/dinxfp?vround#vround_(v128x32f)
; vround_(v128x32f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x08,0x02,0x08,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps xmm0,[rdx],8                   ; VROUNDPS xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 79 08 02 08}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vround(Vector128<double> x), hex://intrinsics/dinxfp?vround#vround_(v128x64f)
; vround_(v128x64f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x09,0x02,0x08,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd xmm0,[rdx],8                   ; VROUNDPD xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 79 09 02 08}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vroundz(Vector128<float> x), hex://intrinsics/dinxfp?vroundz#vroundz_(v128x32f)
; vroundz_(v128x32f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x08,0x02,0x0b,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps xmm0,[rdx],0bh                 ; VROUNDPS xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 79 08 02 0b}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vroundz(Vector128<double> x), hex://intrinsics/dinxfp?vroundz#vroundz_(v128x64f)
; vroundz_(v128x64f)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x79,0x09,0x02,0x0b,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd xmm0,[rdx],0bh                 ; VROUNDPD xmm1, xmm2/m128, imm8 || VEX.128.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 79 09 02 0b}
000bh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vround(Vector256<float> x), hex://intrinsics/dinxfp?vround#vround_(v256x32f)
; vround_(v256x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x08,0x02,0x08,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps ymm0,[rdx],8                   ; VROUNDPS ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 7d 08 02 08}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vround(Vector256<double> x), hex://intrinsics/dinxfp?vround#vround_(v256x64f)
; vround_(v256x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x09,0x02,0x08,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd ymm0,[rdx],8                   ; VROUNDPD ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 7d 09 02 08}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vroundz(Vector256<float> x), hex://intrinsics/dinxfp?vroundz#vroundz_(v256x32f)
; vroundz_(v256x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x08,0x02,0x0b,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundps ymm0,[rdx],0bh                 ; VROUNDPS ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 08 /r ib || encoded[6]{c4 e3 7d 08 02 0b}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vroundz(Vector256<double> x), hex://intrinsics/dinxfp?vroundz#vroundz_(v256x64f)
; vroundz_(v256x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xe3,0x7d,0x09,0x02,0x0b,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vroundpd ymm0,[rdx],0bh                 ; VROUNDPD ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.WIG 09 /r ib || encoded[6]{c4 e3 7d 09 02 0b}
000bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> sqrt(Vector128<float> src), hex://intrinsics/dinxfp?sqrt#sqrt_(v128x32f)
; sqrt_(v128x32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x51,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtps xmm0,[rdx]                      ; VSQRTPS xmm1, xmm2/m128 || VEX.128.0F.WIG 51 /r || encoded[4]{c5 f8 51 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> sqrt(Vector128<double> src), hex://intrinsics/dinxfp?sqrt#sqrt_(v128x64f)
; sqrt_(v128x64f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x51,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtpd xmm0,[rdx]                      ; VSQRTPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 51 /r || encoded[4]{c5 f9 51 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> sqrt(Vector256<float> src), hex://intrinsics/dinxfp?sqrt#sqrt_(v256x32f)
; sqrt_(v256x32f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfc,0x51,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtps ymm0,[rdx]                      ; VSQRTPS ymm1, ymm2/m256 || VEX.256.0F.WIG 51 /r || encoded[4]{c5 fc 51 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> sqrt(Vector256<double> src), hex://intrinsics/dinxfp?sqrt#sqrt_(v256x64f)
; sqrt_(v256x64f)[20] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x51,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vsqrtpd ymm0,[rdx]                      ; VSQRTPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 51 /r || encoded[4]{c5 fd 51 02}
0009h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> rsqrt(Vector128<float> src), hex://intrinsics/dinxfp?rsqrt#rsqrt_(v128x32f)
; rsqrt_(v128x32f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf8,0x52,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vrsqrtps xmm0,[rdx]                     ; VRSQRTPS xmm1, xmm2/m128 || VEX.128.0F.WIG 52 /r || encoded[4]{c5 f8 52 02}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vsub(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vsub#vsub_(v128x32f,v128x32f)
; vsub_(v128x32f,v128x32f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x78,0x5c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsubps xmm0,xmm0,[r8]                   ; VSUBPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 5C /r || encoded[5]{c4 c1 78 5c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vsub(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vsub#vsub_(v128x64f,v128x64f)
; vsub_(v128x64f,v128x64f)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x5c,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vsubpd xmm0,xmm0,[r8]                   ; VSUBPD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 5C /r || encoded[5]{c4 c1 79 5c 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vsub(Vector256<float> x, Vector256<float> y), hex://intrinsics/dinxfp?vsub#vsub_(v256x32f,v256x32f)
; vsub_(v256x32f,v256x32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7c,0x5c,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vsubps ymm0,ymm0,[r8]                   ; VSUBPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 5C /r || encoded[5]{c4 c1 7c 5c 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vsub(Vector256<double> x, Vector256<double> y), hex://intrinsics/dinxfp?vsub#vsub_(v256x64f,v256x64f)
; vsub_(v256x64f,v256x64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x5c,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vsubpd ymm0,ymm0,[r8]                   ; VSUBPD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 5C /r || encoded[5]{c4 c1 7d 5c 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vlo(Vector256<float> src), hex://intrinsics/dinxfp?vlo#vlo_(v256x32f)
; vlo_(v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xe3,0x7d,0x19,0xc0,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vlo(Vector256<double> src), hex://intrinsics/dinxfp?vlo#vlo_(v256x64f)
; vlo_(v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xe3,0x7d,0x19,0xc0,0x00,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 00}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vhi(Vector256<float> src), hex://intrinsics/dinxfp?vhi#vhi_(v256x32f)
; vhi_(v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vhi(Vector256<double> src), hex://intrinsics/dinxfp?vhi#vhi_(v256x64f)
; vhi_(v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xe3,0x7d,0x19,0xc0,0x01,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vscalar(float src), hex://intrinsics/dinxfp?vscalar#vscalar_(32f)
; vscalar_(32f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x4c,0x24,0x10,0xc5,0xfa,0x10,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+10h],xmm1         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 4c 24 10}
000bh vmovss xmm0,dword ptr [rsp+10h]         ; VMOVSS xmm1, m32 || VEX.LIG.F3.0F.WIG 10 /r || encoded[6]{c5 fa 10 44 24 10}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vscalar(double src), hex://intrinsics/dinxfp?vscalar#vscalar_(64f)
; vscalar_(64f)[25] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x4c,0x24,0x10,0xc5,0xfb,0x10,0x44,0x24,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+10h],xmm1         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 4c 24 10}
000bh vmovsd xmm0,qword ptr [rsp+10h]         ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[6]{c5 fb 10 44 24 10}
0011h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0015h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmovescalar(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?vmovescalar#vmovescalar_(v128x32f,v128x32f)
; vmovescalar_(v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf9,0x10,0x0a,0xc5,0xfa,0x10,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vmovss xmm0,xmm0,xmm1                   ; VMOVSS xmm1, xmm2, xmm3 || VEX.LIG.F3.0F.WIG 10 /r || encoded[4]{c5 fa 10 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmovescalar(Vector128<double> x, Vector128<double> y), hex://intrinsics/dinxfp?vmovescalar#vmovescalar_(v128x64f,v128x64f)
; vmovescalar_(v128x64f,v128x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc5,0xf9,0x10,0x0a,0xc5,0xfb,0x10,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vmovsd xmm0,xmm0,xmm1                   ; VMOVSD xmm1, xmm2, xmm3 || VEX.LIG.F2.0F.WIG 10 /r || encoded[4]{c5 fb 10 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> movehl(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?movehl#movehl_(v128x32f,v128x32f)
; movehl_(v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xf8,0x12,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovhlps xmm0,xmm0,xmm1                 ; VMOVHLPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 12 /r || encoded[4]{c5 f8 12 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> movelh(Vector128<float> x, Vector128<float> y), hex://intrinsics/dinxfp?movelh#movelh_(v128x32f,v128x32f)
; movelh_(v128x32f,v128x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0xc5,0xf8,0x16,0xc1,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovlhps xmm0,xmm0,xmm1                 ; VMOVLHPS xmm1, xmm2, xmm3 || VEX.128.0F.WIG 16 /r || encoded[4]{c5 f8 16 c1}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vtranspose(ref Vector128<float> row0, ref Vector128<float> row1, ref Vector128<float> row2, ref Vector128<float> row3), hex://intrinsics/dinxfp?vtranspose#vtranspose_(v128x32f~ref,v128x32f~ref,v128x32f~ref,v128x32f~ref)
; vtranspose_(v128x32f~ref,v128x32f~ref,v128x32f~ref,v128x32f~ref)[84] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0xc6,0x02,0x44,0xc5,0xf9,0x10,0x09,0xc5,0xf0,0xc6,0x0a,0xee,0xc4,0xc1,0x79,0x10,0x10,0xc4,0xc1,0x68,0xc6,0x11,0x44,0xc4,0xc1,0x79,0x10,0x18,0xc4,0xc1,0x60,0xc6,0x19,0xee,0xc5,0xf8,0xc6,0xe2,0x88,0xc5,0xf9,0x11,0x21,0xc5,0xf8,0xc6,0xc2,0xdd,0xc5,0xf9,0x11,0x02,0xc5,0xf0,0xc6,0xc3,0x88,0xc4,0xc1,0x79,0x11,0x00,0xc5,0xf0,0xc6,0xc3,0xdd,0xc4,0xc1,0x79,0x11,0x01,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vshufps xmm0,xmm0,[rdx],44h             ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f8 c6 02 44}
000eh vmovupd xmm1,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 09}
0012h vshufps xmm1,xmm1,[rdx],0eeh            ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f0 c6 0a ee}
0017h vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
001ch vshufps xmm2,xmm2,[r9],44h              ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[6]{c4 c1 68 c6 11 44}
0022h vmovupd xmm3,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 18}
0027h vshufps xmm3,xmm3,[r9],0eeh             ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[6]{c4 c1 60 c6 19 ee}
002dh vshufps xmm4,xmm0,xmm2,88h              ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f8 c6 e2 88}
0032h vmovupd [rcx],xmm4                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 21}
0036h vshufps xmm0,xmm0,xmm2,0ddh             ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f8 c6 c2 dd}
003bh vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
003fh vshufps xmm0,xmm1,xmm3,88h              ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f0 c6 c3 88}
0044h vmovupd [r8],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 00}
0049h vshufps xmm0,xmm1,xmm3,0ddh             ; VSHUFPS xmm1, xmm2, xmm3/m128, imm8 || VEX.128.0F.WIG C6 /r ib || encoded[5]{c5 f0 c6 c3 dd}
004eh vmovupd [r9],xmm0                       ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c4 c1 79 11 01}
0053h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vshuffle(Vector128<float> x, Vector128<float> y, byte control), hex://intrinsics/dinxfp?vshuffle#vshuffle_(v128x32f,v128x32f,8u)
; vshuffle_(v128x32f,v128x32f,8u)[63] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0xf2,0xad,0x14,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000fh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
001dh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0023h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0028h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
002dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0031h call 7ff7c7758748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ad 14 ff}
0036h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0039h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vshuffle(Vector128<double> x, Vector128<double> y, byte control), hex://intrinsics/dinxfp?vshuffle#vshuffle_(v128x64f,v128x64f,8u)
; vshuffle_(v128x64f,v128x64f,8u)[63] = {0x56,0x48,0x83,0xec,0x40,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x08,0x48,0x8b,0xce,0xc5,0xf9,0x29,0x44,0x24,0x30,0xc5,0xf9,0x29,0x4c,0x24,0x20,0x48,0x8d,0x54,0x24,0x30,0x4c,0x8d,0x44,0x24,0x20,0x45,0x0f,0xb6,0xc9,0xe8,0xda,0xb0,0x14,0xff,0x48,0x8b,0xc6,0x48,0x83,0xc4,0x40,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,40h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 40}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000fh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0014h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0017h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
001dh vmovapd [rsp+20h],xmm1                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 4c 24 20}
0023h lea rdx,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 30}
0028h lea r8,[rsp+20h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 20}
002dh movzx r9d,r9b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c9}
0031h call 7ff7c7758a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da b0 14 ff}
0036h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0039h add rsp,40h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 40}
003dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vblendv(Vector256<float> x, Vector256<float> y, Vector256<float> spec), hex://intrinsics/dinxfp?vblendv#vblendv_(v256x32f,v256x32f,v256x32f)
; vblendv_(v256x32f,v256x32f,v256x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x09,0xc4,0xc3,0x7d,0x4a,0x00,0x10,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
000eh vblendvps ymm0,ymm0,[r8],ymm1           ; VBLENDVPS ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 c3 7d 4a 00 10}
0014h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vblendv(Vector256<double> x, Vector256<double> y, Vector256<double> spec), hex://intrinsics/dinxfp?vblendv#vblendv_(v256x64f,v256x64f,v256x64f)
; vblendv_(v256x64f,v256x64f,v256x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x09,0xc4,0xc3,0x7d,0x4b,0x00,0x10,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
000eh vblendvpd ymm0,ymm0,[r8],ymm1           ; VBLENDVPD ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 c3 7d 4b 00 10}
0014h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vblend4x32(Vector128<float> x, Vector128<float> y, Vector128<float> spec), hex://intrinsics/dinxfp?vblend4x32#vblend4x32_(v128x32f,v128x32f,v128x32f)
; vblend4x32_(v128x32f,v128x32f,v128x32f)[28] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x09,0xc4,0xc3,0x79,0x4a,0x00,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
000eh vblendvps xmm0,xmm0,[r8],xmm1           ; VBLENDVPS xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 c3 79 4a 00 10}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vblend2x64(Vector128<double> x, Vector128<double> y, Vector128<double> spec), hex://intrinsics/dinxfp?vblend2x64#vblend2x64_(v128x64f,v128x64f,v128x64f)
; vblend2x64_(v128x64f,v128x64f,v128x64f)[28] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x02,0xc4,0xc1,0x79,0x10,0x09,0xc4,0xc3,0x79,0x4b,0x00,0x10,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 09}
000eh vblendvpd xmm0,xmm0,[r8],xmm1           ; VBLENDVPD xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 c3 79 4b 00 10}
0014h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vblend8x32(Vector256<float> x, Vector256<float> y, Vector256<float> spec), hex://intrinsics/dinxfp?vblend8x32#vblend8x32_(v256x32f,v256x32f,v256x32f)
; vblend8x32_(v256x32f,v256x32f,v256x32f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x09,0xc4,0xc3,0x7d,0x4a,0x00,0x10,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
000eh vblendvps ymm0,ymm0,[r8],ymm1           ; VBLENDVPS ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4A /r /is4 || encoded[6]{c4 c3 7d 4a 00 10}
0014h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vblend4x64(Vector256<double> x, Vector256<double> y, Vector256<double> spec), hex://intrinsics/dinxfp?vblend4x64#vblend4x64_(v256x64f,v256x64f,v256x64f)
; vblend4x64_(v256x64f,v256x64f,v256x64f)[31] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x02,0xc4,0xc1,0x7d,0x10,0x09,0xc4,0xc3,0x7d,0x4b,0x00,0x10,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vmovupd ymm1,[r9]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 09}
000eh vblendvpd ymm0,ymm0,[r8],ymm1           ; VBLENDVPD ymm1, ymm2, ymm3/m256, ymm4 || VEX.256.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 c3 7d 4b 00 10}
0014h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0018h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vbroadcast(N256 n, float src), hex://intrinsics/dinxfp?vbroadcast#vbroadcast_(n256,32f)
; vbroadcast_(n256,32f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x54,0x24,0x18,0xc4,0xe2,0x7d,0x18,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+18h],xmm2         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 18}
000bh vbroadcastss ymm0,dword ptr [rsp+18h]   ; VBROADCASTSS ymm1, xmm2/m32 || VEX.256.66.0F38.W0 18 /r || encoded[7]{c4 e2 7d 18 44 24 18}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vbroadcast(N256 n, double src), hex://intrinsics/dinxfp?vbroadcast#vbroadcast_(n256,64f)
; vbroadcast_(n256,64f)[29] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x11,0x54,0x24,0x18,0xc4,0xe2,0x7d,0x19,0x44,0x24,0x18,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsd qword ptr [rsp+18h],xmm2         ; VMOVSD m64, xmm1 || VEX.LIG.F2.0F.WIG 11 /r || encoded[6]{c5 fb 11 54 24 18}
000bh vbroadcastsd ymm0,qword ptr [rsp+18h]   ; VBROADCASTSD ymm1, xmm2/m64 || VEX.256.66.0F38.W0 19 /r || encoded[7]{c4 e2 7d 19 44 24 18}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vbroadcast(N128 n128, float src), hex://intrinsics/dinxfp?vbroadcast#vbroadcast_(n128,32f)
; vbroadcast_(n128,32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfa,0x11,0x54,0x24,0x18,0xc4,0xe2,0x79,0x18,0x44,0x24,0x18,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovss dword ptr [rsp+18h],xmm2         ; VMOVSS m32, xmm1 || VEX.LIG.F3.0F.WIG 11 /r || encoded[6]{c5 fa 11 54 24 18}
000bh vbroadcastss xmm0,dword ptr [rsp+18h]   ; VBROADCASTSS xmm1, xmm2/m32 || VEX.128.66.0F38.W0 18 /r || encoded[7]{c4 e2 79 18 44 24 18}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vbroadcast(N128 n128, double src), hex://intrinsics/dinxfp?vbroadcast#vbroadcast_(n128,64f)
; vbroadcast_(n128,64f)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfb,0x12,0xc2,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovddup xmm0,xmm2                      ; VMOVDDUP xmm1, xmm2/m64 || VEX.128.F2.0F.WIG 12 /r || encoded[4]{c5 fb 12 c2}
0009h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vdup32(N0 even, Vector256<float> src), hex://intrinsics/dinxfp?vdup32#vdup32_(n0,v256x32f)
; vdup32_(n0,v256x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7e,0x12,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovsldup ymm0,ymmword ptr [r8]         ; VMOVSLDUP ymm1, ymm2/m256 || VEX.256.F3.0F.WIG 12 /r || encoded[5]{c4 c1 7e 12 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vdup32(N1 odd, Vector256<float> src), hex://intrinsics/dinxfp?vdup32#vdup32_(n1,v256x32f)
; vdup32_(n1,v256x32f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7e,0x16,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovshdup ymm0,ymmword ptr [r8]         ; VMOVSHDUP ymm1, ymm2/m256 || VEX.256.F3.0F.WIG 16 /r || encoded[5]{c4 c1 7e 16 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vdup64(N0 even, Vector256<double> src), hex://intrinsics/dinxfp?vdup64#vdup64_(n0,v256x64f)
; vdup64_(n0,v256x64f)[21] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7f,0x12,0x00,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovddup ymm0,ymmword ptr [r8]          ; VMOVDDUP ymm1, ymm2/m256 || VEX.256.F2.0F.WIG 12 /r || encoded[5]{c4 c1 7f 12 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vdup64(N1 odd, Vector256<double> src), hex://intrinsics/dinxfp?vdup64#vdup64_(n1,v256x64f)
; vdup64_(n1,v256x64f)[30] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc5,0xfd,0x73,0xd0,0x40,0xc5,0xff,0x12,0xc0,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vpsrlq ymm0,ymm0,40h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 40}
000fh vmovddup ymm0,ymm0                      ; VMOVDDUP ymm1, ymm2/m256 || VEX.256.F2.0F.WIG 12 /r || encoded[4]{c5 ff 12 c0}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float vextract(Vector128<float> src, byte pos), hex://intrinsics/dinxfp?vextract#vextract_(v128x32f,8u)
; vextract_(v128x32f,8u)[36] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x29,0x44,0x24,0x20,0x48,0x8d,0x4c,0x24,0x20,0x0f,0xb6,0xd2,0xe8,0x12,0xba,0x14,0xff,0x90,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000bh vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0011h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h call 7ff7c7759700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ba 14 ff}
001eh nop                                     ; NOP || o32 90 || encoded[1]{90}
001fh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vextract(Vector256<float> src, byte pos), hex://intrinsics/dinxfp?vextract#vextract_(v256x32f,8u)
; vextract_(v256x32f,8u)[50] = {0x56,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xfd,0x10,0x02,0x48,0x8b,0xce,0xc5,0xfd,0x11,0x44,0x24,0x20,0x48,0x8d,0x54,0x24,0x20,0x45,0x0f,0xb6,0xc0,0xe8,0xaa,0xc0,0x14,0xff,0x48,0x8b,0xc6,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x50,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
001dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0021h call 7ff7c7759de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa c0 14 ff}
0026h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vextract(Vector256<double> src, byte pos), hex://intrinsics/dinxfp?vextract#vextract_(v256x64f,8u)
; vextract_(v256x64f,8u)[50] = {0x56,0x48,0x83,0xec,0x50,0xc5,0xf8,0x77,0x48,0x8b,0xf1,0xc5,0xfd,0x10,0x02,0x48,0x8b,0xce,0xc5,0xfd,0x11,0x44,0x24,0x20,0x48,0x8d,0x54,0x24,0x20,0x45,0x0f,0xb6,0xc0,0xe8,0x62,0xc0,0x14,0xff,0x48,0x8b,0xc6,0xc5,0xf8,0x77,0x48,0x83,0xc4,0x50,0x5e,0xc3}
; TermCode = CTC_RET_INTR
0000h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0001h sub rsp,50h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 50}
0005h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0008h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
000bh vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0012h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0018h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
001dh movzx r8d,r8b                           ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[4]{45 0f b6 c0}
0021h call 7ff7c7759de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c0 14 ff}
0026h mov rax,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c6}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch add rsp,50h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 50}
0030h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0031h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; float vxscalar(Vector128<float> src, byte pos), hex://intrinsics/dinxfp?vxscalar#vxscalar_(v128x32f,8u)
; vxscalar_(v128x32f,8u)[36] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x29,0x44,0x24,0x20,0x48,0x8d,0x4c,0x24,0x20,0x0f,0xb6,0xd2,0xe8,0x32,0xb9,0x14,0xff,0x90,0x48,0x83,0xc4,0x38,0xc3}
; TermCode = CTC_RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000bh vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0011h lea rcx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 20}
0016h movzx edx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 d2}
0019h call 7ff7c7759700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 b9 14 ff}
001eh nop                                     ; NOP || o32 90 || encoded[1]{90}
001fh add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
0023h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; double vxscalar(Vector128<double> src, byte pos), hex://intrinsics/dinxfp?vxscalar#vxscalar_(v128x64f,8u)
; vxscalar_(v128x64f,8u)[53] = {0x48,0x83,0xec,0x38,0xc5,0xf8,0x77,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x29,0x44,0x24,0x20,0x0f,0xb6,0xca,0x83,0xf9,0x02,0x73,0x12,0x48,0x8d,0x44,0x24,0x20,0x48,0x63,0xc9,0xc5,0xfb,0x10,0x04,0xc8,0x48,0x83,0xc4,0x38,0xc3,0xb9,0x15,0x00,0x00,0x00,0xe8,0xfb,0x74,0x15,0xff}
; TermCode = CTC_INTRx2
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000bh vmovapd [rsp+20h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 20}
0011h movzx ecx,dl                            ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[3]{0f b6 ca}
0014h cmp ecx,2                               ; CMP r/m32, imm8 || o32 83 /7 ib || encoded[3]{83 f9 02}
0017h jae short 002bh                         ; JAE rel8 || 73 cb || encoded[2]{73 12}
0019h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
001eh movsxd rcx,ecx                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{48 63 c9}
0021h vmovsd xmm0,qword ptr [rax+rcx*8]       ; VMOVSD xmm1, m64 || VEX.LIG.F2.0F.WIG 10 /r || encoded[5]{c5 fb 10 04 c8}
0026h add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
002ah ret                                     ; RET || C3 || encoded[1]{c3}
002bh mov ecx,15h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b9 15 00 00 00}
0030h call 7ff7c7765320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 74 15 ff}
------------------------------------------------------------------------------------------------------------------------
; Vector128<float> vmaskload(ref float src, Vector128<float> mask), hex://intrinsics/dinxfp?vmaskload#vmaskload_(32f~ref,v128x32f)
; vmaskload_(32f~ref,v128x32f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc4,0xe2,0x79,0x2c,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmaskmovps xmm0,xmm0,[rdx]              ; VMASKMOVPS xmm1, xmm2, m128 || VEX.128.66.0F38.W0 2C /r || encoded[5]{c4 e2 79 2c 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<double> vmaskload(ref double src, Vector128<double> mask), hex://intrinsics/dinxfp?vmaskload#vmaskload_(64f~ref,v128x64f)
; vmaskload_(64f~ref,v128x64f)[23] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x79,0x10,0x00,0xc4,0xe2,0x79,0x2d,0x02,0xc5,0xf9,0x11,0x01,0x48,0x8b,0xc1,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmaskmovpd xmm0,xmm0,[rdx]              ; VMASKMOVPD xmm1, xmm2, m128 || VEX.128.66.0F38.W0 2D /r || encoded[5]{c4 e2 79 2d 02}
000fh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<float> vmaskload(ref float src, Vector256<float> mask), hex://intrinsics/dinxfp?vmaskload#vmaskload_(32f~ref,v256x32f)
; vmaskload_(32f~ref,v256x32f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc4,0xe2,0x7d,0x2c,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmaskmovps ymm0,ymm0,[rdx]              ; VMASKMOVPS ymm1, ymm2, m256 || VEX.256.66.0F38.W0 2C /r || encoded[5]{c4 e2 7d 2c 02}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<double> vmaskload(ref double src, Vector256<double> mask), hex://intrinsics/dinxfp?vmaskload#vmaskload_(64f~ref,v256x64f)
; vmaskload_(64f~ref,v256x64f)[26] = {0xc5,0xf8,0x77,0x66,0x90,0xc4,0xc1,0x7d,0x10,0x00,0xc4,0xe2,0x7d,0x2d,0x02,0xc5,0xfd,0x11,0x01,0x48,0x8b,0xc1,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmaskmovpd ymm0,ymm0,[rdx]              ; VMASKMOVPD ymm1, ymm2, m256 || VEX.256.66.0F38.W0 2D /r || encoded[5]{c4 e2 7d 2d 02}
000fh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0013h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0016h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void maskstore(Vector128<float> src, Vector128<float> mask, ref float dst), hex://intrinsics/dinxfp?maskstore#maskstore_(v128x32f,v128x32f,32f~ref)
; maskstore_(v128x32f,v128x32f,32f~ref)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc4,0xc2,0x79,0x2e,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vmaskmovps [r8],xmm0,xmm1               ; VMASKMOVPS m128, xmm1, xmm2 || VEX.128.66.0F38.W0 2E /r || encoded[5]{c4 c2 79 2e 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void maskstore(Vector128<double> src, Vector128<double> mask, ref double dst), hex://intrinsics/dinxfp?maskstore#maskstore_(v128x64f,v128x64f,64f~ref)
; maskstore_(v128x64f,v128x64f,64f~ref)[19] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x10,0x0a,0xc4,0xc2,0x79,0x2f,0x08,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000dh vmaskmovpd [r8],xmm0,xmm1               ; VMASKMOVPD m128, xmm1, xmm2 || VEX.128.66.0F38.W0 2F /r || encoded[5]{c4 c2 79 2f 08}
0012h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void maskstore(Vector256<float> src, Vector256<float> mask, ref float dst), hex://intrinsics/dinxfp?maskstore#maskstore_(v256x32f,v256x32f,32f~ref)
; maskstore_(v256x32f,v256x32f,32f~ref)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x10,0x0a,0xc4,0xc2,0x7d,0x2e,0x08,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vmaskmovps [r8],ymm0,ymm1               ; VMASKMOVPS m256, ymm1, ymm2 || VEX.256.66.0F38.W0 2E /r || encoded[5]{c4 c2 7d 2e 08}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void maskstore(Vector256<double> src, Vector256<double> mask, ref double dst), hex://intrinsics/dinxfp?maskstore#maskstore_(v256x64f,v256x64f,64f~ref)
; maskstore_(v256x64f,v256x64f,64f~ref)[22] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x10,0x0a,0xc4,0xc2,0x7d,0x2f,0x08,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000dh vmaskmovpd [r8],ymm0,ymm1               ; VMASKMOVPD m256, ymm1, ymm2 || VEX.256.66.0F38.W0 2F /r || encoded[5]{c4 c2 7d 2f 08}
0012h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; int takemask(Vector128<float> src), hex://intrinsics/dinxfp?takemask#takemask_(v128x32f)
; takemask_(v128x32f)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x50,0xc0,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovmskps eax,xmm0                      ; VMOVMSKPS r32, xmm2 || VEX.128.0F.W0 50 /r || encoded[4]{c5 f8 50 c0}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
