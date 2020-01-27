------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16u-imm5
; vshufhi4x16_128x16u-imm5[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 05 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,5                    ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 05}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16u-imm9
; vshufhi4x16_128x16u-imm9[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 09 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,9                    ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 09}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16u-imm13
; vshufhi4x16_128x16u-imm13[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 0d c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,0dh                  ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 0d}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16u-imm5
; vshufhi4x16_256x16u-imm5[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,5                    ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 05}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16u-imm9
; vshufhi4x16_256x16u-imm9[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,9                    ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 09}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16u-imm13
; vshufhi4x16_256x16u-imm13[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,0dh                  ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 0d}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16i-imm5
; vshufhi4x16_256x16i-imm5[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 05 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,5                    ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 05}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16i-imm9
; vshufhi4x16_256x16i-imm9[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 09 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,9                    ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 09}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_256x16i-imm13
; vshufhi4x16_256x16i-imm13[23] = {c5 f8 77 c5 fd 10 02 c5 fe 70 c0 0d c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpshufhw ymm0,ymm0,0dh                  ; VPSHUFHW ymm1, ymm2/m256, imm8 || VEX.256.F3.0F.WIG 70 /r ib || encoded[5]{c5 fe 70 c0 0d}
000ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0016h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16i-imm5
; vshufhi4x16_128x16i-imm5[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 05 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,5                    ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 05}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16i-imm9
; vshufhi4x16_128x16i-imm9[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 09 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,9                    ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 09}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vshufhi4x16_128x16i-imm13
; vshufhi4x16_128x16i-imm13[20] = {c5 f8 77 c5 f9 10 02 c5 fa 70 c0 0d c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpshufhw xmm0,xmm0,0dh                  ; VPSHUFHW xmm1, xmm2/m128, imm8 || VEX.128.F3.0F.WIG 70 /r ib || encoded[5]{c5 fa 70 c0 0d}
000ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0010h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0013h ret                                     ; RET || C3 || encoded[1]{c3}
