------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<sbyte> src, ref sbyte dst), hex://vectorized/direct?vstore#vstore_(v128x8i,8i~ref)
; vstore_(v128x8i,8i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<byte> src, ref byte dst), hex://vectorized/direct?vstore#vstore_(v128x8u,8u~ref)
; vstore_(v128x8u,8u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<short> src, ref short dst), hex://vectorized/direct?vstore#vstore_(v128x16i,16i~ref)
; vstore_(v128x16i,16i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ushort> src, ref ushort dst), hex://vectorized/direct?vstore#vstore_(v128x16u,16u~ref)
; vstore_(v128x16u,16u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<int> src, ref int dst), hex://vectorized/direct?vstore#vstore_(v128x32i,32i~ref)
; vstore_(v128x32i,32i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<uint> src, ref uint dst), hex://vectorized/direct?vstore#vstore_(v128x32u,32u~ref)
; vstore_(v128x32u,32u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<long> src, ref long dst), hex://vectorized/direct?vstore#vstore_(v128x64i,64i~ref)
; vstore_(v128x64i,64i~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ulong> src, ref ulong dst), hex://vectorized/direct?vstore#vstore_(v128x64u,64u~ref)
; vstore_(v128x64u,64u~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovdqu xmmword ptr [rdx],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<float> src, ref float dst), hex://vectorized/direct?vstore#vstore_(v128x32f,32f~ref)
; vstore_(v128x32f,32f~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovups [rdx],xmm0                      ; VMOVUPS xmm2/m128, xmm1 || VEX.128.0F.WIG 11 /r || encoded[4]{c5 f8 11 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<double> src, ref double dst), hex://vectorized/direct?vstore#vstore_(v128x64f,64f~ref)
; vstore_(v128x64f,64f~ref)[14] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x11,0x02,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0009h vmovupd [rdx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 02}
000dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<sbyte> src, ref sbyte dst), hex://vectorized/direct?vstore#vstore_(v256x8i,8i~ref)
; vstore_(v256x8i,8i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<byte> src, ref byte dst), hex://vectorized/direct?vstore#vstore_(v256x8u,8u~ref)
; vstore_(v256x8u,8u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<short> src, ref short dst), hex://vectorized/direct?vstore#vstore_(v256x16i,16i~ref)
; vstore_(v256x16i,16i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ushort> src, ref ushort dst), hex://vectorized/direct?vstore#vstore_(v256x16u,16u~ref)
; vstore_(v256x16u,16u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<int> src, ref int dst), hex://vectorized/direct?vstore#vstore_(v256x32i,32i~ref)
; vstore_(v256x32i,32i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<uint> src, ref uint dst), hex://vectorized/direct?vstore#vstore_(v256x32u,32u~ref)
; vstore_(v256x32u,32u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<long> src, ref long dst), hex://vectorized/direct?vstore#vstore_(v256x64i,64i~ref)
; vstore_(v256x64i,64i~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ulong> src, ref ulong dst), hex://vectorized/direct?vstore#vstore_(v256x64u,64u~ref)
; vstore_(v256x64u,64u~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<float> src, ref float dst), hex://vectorized/direct?vstore#vstore_(v256x32f,32f~ref)
; vstore_(v256x32f,32f~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfc,0x11,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovups [rdx],ymm0                      ; VMOVUPS ymm2/m256, ymm1 || VEX.256.0F.WIG 11 /r || encoded[4]{c5 fc 11 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<double> src, ref double dst), hex://vectorized/direct?vstore#vstore_(v256x64f,64f~ref)
; vstore_(v256x64f,64f~ref)[17] = {0xc5,0xf8,0x77,0x66,0x90,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x11,0x02,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0009h vmovupd [rdx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 02}
000dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0010h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<sbyte> src, ref sbyte dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x8i,8i~ref,32i)
; vstore_(v128x8i,8i~ref,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000fh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<byte> src, ref byte dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x8u,8u~ref,32i)
; vstore_(v128x8u,8u~ref,32i)[20] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
000fh vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<short> src, ref short dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x16i,16i~ref,32i)
; vstore_(v128x16i,16i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ushort> src, ref ushort dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x16u,16u~ref,32i)
; vstore_(v128x16u,16u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<int> src, ref int dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x32i,32i~ref,32i)
; vstore_(v128x32i,32i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<uint> src, ref uint dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x32u,32u~ref,32i)
; vstore_(v128x32u,32u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<long> src, ref long dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x64i,64i~ref,32i)
; vstore_(v128x64i,64i~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<ulong> src, ref ulong dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x64u,64u~ref,32i)
; vstore_(v128x64u,64u~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xfa,0x7f,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<float> src, ref float dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x32f,32f~ref,32i)
; vstore_(v128x32f,32f~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xf9,0x10,0x01,0xc5,0xf8,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovups [rax],xmm0                      ; VMOVUPS xmm2/m128, xmm1 || VEX.128.0F.WIG 11 /r || encoded[4]{c5 f8 11 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector128<double> src, ref double dst, int offset), hex://vectorized/direct?vstore#vstore_(v128x64f,64f~ref,32i)
; vstore_(v128x64f,64f~ref,32i)[21] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xf9,0x10,0x01,0xc5,0xf9,0x11,0x00,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0010h vmovupd [rax],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 00}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<sbyte> src, ref sbyte dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x8i,8i~ref,32i)
; vstore_(v256x8i,8i~ref,32i)[23] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000fh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<byte> src, ref byte dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x8u,8u~ref,32i)
; vstore_(v256x8u,8u~ref,32i)[23] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x03,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
000bh vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
000fh vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<short> src, ref short dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x16i,16i~ref,32i)
; vstore_(v256x16i,16i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ushort> src, ref ushort dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x16u,16u~ref,32i)
; vstore_(v256x16u,16u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x42,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*2]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 42}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<int> src, ref int dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x32i,32i~ref,32i)
; vstore_(v256x32i,32i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<uint> src, ref uint dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x32u,32u~ref,32i)
; vstore_(v256x32u,32u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<long> src, ref long dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x64i,64i~ref,32i)
; vstore_(v256x64i,64i~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<ulong> src, ref ulong dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x64u,64u~ref,32i)
; vstore_(v256x64u,64u~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfe,0x7f,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovdqu ymmword ptr [rax],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<float> src, ref float dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x32f,32f~ref,32i)
; vstore_(v256x32f,32f~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0x82,0xc5,0xfd,0x10,0x01,0xc5,0xfc,0x11,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*4]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 82}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovups [rax],ymm0                      ; VMOVUPS ymm2/m256, ymm1 || VEX.256.0F.WIG 11 /r || encoded[4]{c5 fc 11 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; void vstore(Vector256<double> src, ref double dst, int offset), hex://vectorized/direct?vstore#vstore_(v256x64f,64f~ref,32i)
; vstore_(v256x64f,64f~ref,32i)[24] = {0xc5,0xf8,0x77,0x66,0x90,0x49,0x63,0xc0,0x48,0x8d,0x04,0xc2,0xc5,0xfd,0x10,0x01,0xc5,0xfd,0x11,0x00,0xc5,0xf8,0x77,0xc3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h movsxd rax,r8d                          ; MOVSXD r64, r/m32 || REX.W 63 /r || encoded[3]{49 63 c0}
0008h lea rax,[rdx+rax*8]                     ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 c2}
000ch vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0010h vmovupd [rax],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 00}
0014h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0017h ret                                     ; RET || C3 || encoded[1]{c3}
