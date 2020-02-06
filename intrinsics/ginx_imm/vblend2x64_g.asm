------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8u_v128x8u_8u-imm5
; vblend2x64_gv128x8u_v128x8u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8u_v128x8u_8u-imm9
; vblend2x64_gv128x8u_v128x8u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8u_v128x8u_8u-imm13
; vblend2x64_gv128x8u_v128x8u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8i_v128x8i_8u-imm5
; vblend2x64_gv128x8i_v128x8i_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8i_v128x8i_8u-imm9
; vblend2x64_gv128x8i_v128x8i_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x8i_v128x8i_8u-imm13
; vblend2x64_gv128x8i_v128x8i_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16u_v128x16u_8u-imm5
; vblend2x64_gv128x16u_v128x16u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16u_v128x16u_8u-imm9
; vblend2x64_gv128x16u_v128x16u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16u_v128x16u_8u-imm13
; vblend2x64_gv128x16u_v128x16u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16i_v128x16i_8u-imm5
; vblend2x64_gv128x16i_v128x16i_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16i_v128x16i_8u-imm9
; vblend2x64_gv128x16i_v128x16i_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x16i_v128x16i_8u-imm13
; vblend2x64_gv128x16i_v128x16i_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32u_v128x32u_8u-imm5
; vblend2x64_gv128x32u_v128x32u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32u_v128x32u_8u-imm9
; vblend2x64_gv128x32u_v128x32u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32u_v128x32u_8u-imm13
; vblend2x64_gv128x32u_v128x32u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32i_v128x32i_8u-imm5
; vblend2x64_gv128x32i_v128x32i_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32i_v128x32i_8u-imm9
; vblend2x64_gv128x32i_v128x32i_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x32i_v128x32i_8u-imm13
; vblend2x64_gv128x32i_v128x32i_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64u_v128x64u_8u-imm5
; vblend2x64_gv128x64u_v128x64u_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64u_v128x64u_8u-imm9
; vblend2x64_gv128x64u_v128x64u_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64u_v128x64u_8u-imm13
; vblend2x64_gv128x64u_v128x64u_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64i_v128x64i_8u-imm5
; vblend2x64_gv128x64i_v128x64i_8u-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,5               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64i_v128x64i_8u-imm9
; vblend2x64_gv128x64i_v128x64i_8u-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,9               ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend2x64_gv128x64i_v128x64i_8u-imm13
; vblend2x64_gv128x64i_v128x64i_8u-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0d c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vblendpd xmm0,xmm0,xmm1,0dh             ; VBLENDPD xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 79 0d c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
