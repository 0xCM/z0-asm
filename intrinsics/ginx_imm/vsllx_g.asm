------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x8u_8u-imm5
; vsllx_gv128x8u_8u-imm5[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 05 c5 f9 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,5                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 05}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x8u_8u-imm9
; vsllx_gv128x8u_8u-imm9[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 09 c5 f9 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,9                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 09}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x8u_8u-imm13
; vsllx_gv128x8u_8u-imm13[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 0d c5 f9 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,0dh                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 0d}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x16u_8u-imm5
; vsllx_gv128x16u_8u-imm5[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 05 c5 f9 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,5                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 05}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x16u_8u-imm9
; vsllx_gv128x16u_8u-imm9[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 09 c5 f9 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,9                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 09}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x16u_8u-imm13
; vsllx_gv128x16u_8u-imm13[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 0d c5 f9 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,0dh                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 0d}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x32u_8u-imm5
; vsllx_gv128x32u_8u-imm5[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 05 c5 f9 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,5                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 05}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x32u_8u-imm9
; vsllx_gv128x32u_8u-imm9[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 09 c5 f9 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,9                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 09}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x32u_8u-imm13
; vsllx_gv128x32u_8u-imm13[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 0d c5 f9 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,0dh                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 0d}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x64u_8u-imm5
; vsllx_gv128x64u_8u-imm5[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 05 c5 f9 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,5                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 05}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x64u_8u-imm9
; vsllx_gv128x64u_8u-imm9[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 09 c5 f9 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,9                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 09}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv128x64u_8u-imm13
; vsllx_gv128x64u_8u-imm13[42] = {c5 f8 77 c5 f9 10 02 c5 f1 73 f0 0d c5 f9 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 f9 d3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vpsllq xmm1,xmm0,0dh                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f0 0d}
000ch vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq xmm0,xmm0,xmm2                   ; VPSRLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D3 /r || encoded[4]{c5 f9 d3 c2}
001eh vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0022h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x8u_8u-imm5
; vsllx_gv256x8u_8u-imm5[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 05 c5 fd 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,5                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 05}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x8u_8u-imm9
; vsllx_gv256x8u_8u-imm9[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 09 c5 fd 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,9                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 09}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x8u_8u-imm13
; vsllx_gv256x8u_8u-imm13[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 0d c5 fd 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,0dh                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 0d}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x16u_8u-imm5
; vsllx_gv256x16u_8u-imm5[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 05 c5 fd 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,5                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 05}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x16u_8u-imm9
; vsllx_gv256x16u_8u-imm9[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 09 c5 fd 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,9                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 09}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x16u_8u-imm13
; vsllx_gv256x16u_8u-imm13[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 0d c5 fd 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,0dh                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 0d}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x32u_8u-imm5
; vsllx_gv256x32u_8u-imm5[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 05 c5 fd 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,5                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 05}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x32u_8u-imm9
; vsllx_gv256x32u_8u-imm9[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 09 c5 fd 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,9                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 09}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x32u_8u-imm13
; vsllx_gv256x32u_8u-imm13[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 0d c5 fd 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,0dh                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 0d}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x64u_8u-imm5
; vsllx_gv256x64u_8u-imm5[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 05 c5 fd 73 f8 08 b8 3b 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,5                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 05}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x64u_8u-imm9
; vsllx_gv256x64u_8u-imm9[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 09 c5 fd 73 f8 08 b8 37 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,9                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 09}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vsllx_gv256x64u_8u-imm13
; vsllx_gv256x64u_8u-imm13[45] = {c5 f8 77 c5 fd 10 02 c5 f5 73 f0 0d c5 fd 73 f8 08 b8 33 00 00 00 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vpsllq ymm1,ymm0,0dh                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f0 0d}
000ch vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
0011h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
0016h vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
001ah vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
001eh vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0022h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0026h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0029h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
002ch ret                                     ; RET || C3 || encoded[1]{c3}