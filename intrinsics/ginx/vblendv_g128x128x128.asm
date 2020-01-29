------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vblendv<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> spec)
; vblendv_g128x8u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x8i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x16u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x16i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x32u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x32i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x64u[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x64i[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4c c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x32f[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4a c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
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
; vblendv_g128x64f[33] = {c5 f8 77 66 90 c5 f9 10 02 c4 c1 79 10 08 c4 c1 79 10 11 c4 e3 79 4b c1 20 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000eh vmovupd xmm2,[r9]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 11}
0013h vblendvpd xmm0,xmm0,xmm1,xmm2           ; VBLENDVPD xmm1, xmm2, xmm3/m128, xmm4 || VEX.128.66.0F3A.W0 4B /r /is4 || encoded[6]{c4 e3 79 4b c1 20}
0019h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
001dh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0020h ret                                     ; RET || C3 || encoded[1]{c3}
