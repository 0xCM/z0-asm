------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm5
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm9
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm13
; vblend8x16_g[8u](v128x8u,v128x8u,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm5
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm9
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm13
; vblend8x16_g[8i](v128x8i,v128x8i,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm5
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm9
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm13
; vblend8x16_g[16u](v128x16u,v128x16u,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm5
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm9
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm13
; vblend8x16_g[16i](v128x16i,v128x16i,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm5
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm9
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm13
; vblend8x16_g[32u](v128x32u,v128x32u,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm5
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm9
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm13
; vblend8x16_g[32i](v128x32i,v128x32i,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm5
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm9
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm13
; vblend8x16_g[64u](v128x64u,v128x64u,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm5
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm5[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 05 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,5               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 05}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm9
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm9[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 09 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,9               ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 09}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm13
; vblend8x16_g[64i](v128x64i,v128x64i,8u)-imm13[26] = {c5 f8 77 c5 f9 10 02 c4 c1 79 10 08 c4 e3 79 0e c1 0d c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
000ch vpblendw xmm0,xmm0,xmm1,0dh             ; VPBLENDW xmm1, xmm2, xmm3/m128, imm8 || VEX.128.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 79 0e c1 0d}
0012h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm5
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm9
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm13
; vblend8x16_g[8u](v256x8u,v256x8u,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm5
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm9
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm13
; vblend8x16_g[8i](v256x8i,v256x8i,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm5
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm9
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm13
; vblend8x16_g[16u](v256x16u,v256x16u,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm5
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm9
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm13
; vblend8x16_g[16i](v256x16i,v256x16i,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm5
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm9
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm13
; vblend8x16_g[32u](v256x32u,v256x32u,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm5
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm9
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm13
; vblend8x16_g[32i](v256x32i,v256x32i,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm5
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm9
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm13
; vblend8x16_g[64u](v256x64u,v256x64u,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm5
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,5               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm9
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,9               ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm13
; vblend8x16_g[64i](v256x64i,v256x64i,8u)-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0e c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vpblendw ymm0,ymm0,ymm1,0dh             ; VPBLENDW ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0E /r ib || encoded[6]{c4 e3 7d 0e c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
