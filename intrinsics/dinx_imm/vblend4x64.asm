------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8i_v256x8i_8u-imm5
; vblend4x64_v256x8i_v256x8i_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8i_v256x8i_8u-imm9
; vblend4x64_v256x8i_v256x8i_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8i_v256x8i_8u-imm13
; vblend4x64_v256x8i_v256x8i_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8u_v256x8u_8u-imm5
; vblend4x64_v256x8u_v256x8u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8u_v256x8u_8u-imm9
; vblend4x64_v256x8u_v256x8u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x8u_v256x8u_8u-imm13
; vblend4x64_v256x8u_v256x8u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16i_v256x16i_8u-imm5
; vblend4x64_v256x16i_v256x16i_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16i_v256x16i_8u-imm9
; vblend4x64_v256x16i_v256x16i_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16i_v256x16i_8u-imm13
; vblend4x64_v256x16i_v256x16i_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16u_v256x16u_8u-imm5
; vblend4x64_v256x16u_v256x16u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16u_v256x16u_8u-imm9
; vblend4x64_v256x16u_v256x16u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x16u_v256x16u_8u-imm13
; vblend4x64_v256x16u_v256x16u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32i_v256x32i_8u-imm5
; vblend4x64_v256x32i_v256x32i_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32i_v256x32i_8u-imm9
; vblend4x64_v256x32i_v256x32i_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32i_v256x32i_8u-imm13
; vblend4x64_v256x32i_v256x32i_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32u_v256x32u_8u-imm5
; vblend4x64_v256x32u_v256x32u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32u_v256x32u_8u-imm9
; vblend4x64_v256x32u_v256x32u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x32u_v256x32u_8u-imm13
; vblend4x64_v256x32u_v256x32u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64i_v256x64i_8u-imm5
; vblend4x64_v256x64i_v256x64i_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64i_v256x64i_8u-imm9
; vblend4x64_v256x64i_v256x64i_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64i_v256x64i_8u-imm13
; vblend4x64_v256x64i_v256x64i_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64u_v256x64u_8u-imm5
; vblend4x64_v256x64u_v256x64u_8u-imm5[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,5               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 05}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64u_v256x64u_8u-imm9
; vblend4x64_v256x64u_v256x64u_8u-imm9[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,9               ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 09}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vblend4x64_v256x64u_v256x64u_8u-imm13
; vblend4x64_v256x64u_v256x64u_8u-imm13[29] = {c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 0d c1 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
000ch vblendpd ymm0,ymm0,ymm1,0dh             ; VBLENDPD ymm1, ymm2, ymm3/m256, imm8 || VEX.256.66.0F3A.WIG 0D /r ib || encoded[6]{c4 e3 7d 0d c1 0d}
0012h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0016h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0019h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001ch ret                                     ; RET || C3 || encoded[1]{c3}
