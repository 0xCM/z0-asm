------------------------------------------------------------------------------------------------------------------------
; valignr_v128x64u_v128x64u_8u-imm5
; valignr_v128x64u_v128x64u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,5               ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v128x64u_v128x64u_8u-imm9
; valignr_v128x64u_v128x64u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,9               ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v128x64u_v128x64u_8u-imm13
; valignr_v128x64u_v128x64u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,0dh             ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x64u_v256x64u_8u-imm5
; valignr_v256x64u_v256x64u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,5               ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x64u_v256x64u_8u-imm9
; valignr_v256x64u_v256x64u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,9               ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x64u_v256x64u_8u-imm13
; valignr_v256x64u_v256x64u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,0dh             ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v128x8u_v128x8u_8u-imm5
; valignr_v128x8u_v128x8u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,5               ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v128x8u_v128x8u_8u-imm9
; valignr_v128x8u_v128x8u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,9               ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v128x8u_v128x8u_8u-imm13
; valignr_v128x8u_v128x8u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0f c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpalignr xmm0,xmm0,xmm1,0dh             ; VPALIGNR xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 79 0f c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x8u_v256x8u_8u-imm5
; valignr_v256x8u_v256x8u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,5               ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x8u_v256x8u_8u-imm9
; valignr_v256x8u_v256x8u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,9               ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; valignr_v256x8u_v256x8u_8u-imm13
; valignr_v256x8u_v256x8u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0f c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpalignr ymm0,ymm0,ymm1,0dh             ; VPALIGNR ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0F /r ib || encoded[6]{c4 e3 7d 0f c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
