------------------------------------------------------------------------------------------------------------------------
; vrotrx_v128x64u_8u-imm5
; vrotrx_v128x64u_8u-imm5[63] = {c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 e9 73 d1 05 c5 f1 73 d9 08 b8 3b 00 00 00 c5 f9 6e d8 c5 f1 f3 cb c5 e9 eb c9 c5 f9 73 f8 08 c5 f9 6e d0 c5 f9 f3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000bh vpsrlq xmm2,xmm1,5                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d1 05}
0010h vpsrldq xmm1,xmm1,8                     ; VPSRLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /3 ib || encoded[5]{c5 f1 73 d9 08}
0015h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq xmm1,xmm1,xmm3                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f1 f3 cb}
0022h vpor xmm1,xmm2,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 e9 eb c9}
0026h vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq xmm0,xmm0,xmm2                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c2}
0033h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0037h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vrotrx_v128x64u_8u-imm9
; vrotrx_v128x64u_8u-imm9[63] = {c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 e9 73 d1 09 c5 f1 73 d9 08 b8 37 00 00 00 c5 f9 6e d8 c5 f1 f3 cb c5 e9 eb c9 c5 f9 73 f8 08 c5 f9 6e d0 c5 f9 f3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000bh vpsrlq xmm2,xmm1,9                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d1 09}
0010h vpsrldq xmm1,xmm1,8                     ; VPSRLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /3 ib || encoded[5]{c5 f1 73 d9 08}
0015h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq xmm1,xmm1,xmm3                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f1 f3 cb}
0022h vpor xmm1,xmm2,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 e9 eb c9}
0026h vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq xmm0,xmm0,xmm2                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c2}
0033h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0037h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vrotrx_v128x64u_8u-imm13
; vrotrx_v128x64u_8u-imm13[63] = {c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 e9 73 d1 0d c5 f1 73 d9 08 b8 33 00 00 00 c5 f9 6e d8 c5 f1 f3 cb c5 e9 eb c9 c5 f9 73 f8 08 c5 f9 6e d0 c5 f9 f3 c2 c5 f1 eb c0 c5 f9 11 01 48 8b c1 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0007h vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000bh vpsrlq xmm2,xmm1,0dh                    ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d1 0d}
0010h vpsrldq xmm1,xmm1,8                     ; VPSRLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /3 ib || encoded[5]{c5 f1 73 d9 08}
0015h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq xmm1,xmm1,xmm3                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f1 f3 cb}
0022h vpor xmm1,xmm2,xmm1                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 e9 eb c9}
0026h vpslldq xmm0,xmm0,8                     ; VPSLLDQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /7 ib || encoded[5]{c5 f9 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq xmm0,xmm0,xmm2                   ; VPSLLQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG F3 /r || encoded[4]{c5 f9 f3 c2}
0033h vpor xmm0,xmm1,xmm0                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 f1 eb c0}
0037h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vrotrx_v256x64u_8u-imm5
; vrotrx_v256x64u_8u-imm5[66] = {c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 ed 73 d1 05 c5 f5 73 d9 08 b8 3b 00 00 00 c5 f9 6e d8 c5 f5 f3 cb c5 ed eb c9 c5 fd 73 f8 08 c5 f9 6e d0 c5 fd f3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000bh vpsrlq ymm2,ymm1,5                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d1 05}
0010h vpsrldq ymm1,ymm1,8                     ; VPSRLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /3 ib || encoded[5]{c5 f5 73 d9 08}
0015h mov eax,3bh                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 3b 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq ymm1,ymm1,xmm3                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 f5 f3 cb}
0022h vpor ymm1,ymm2,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c9}
0026h vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq ymm0,ymm0,xmm2                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c2}
0033h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0037h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vrotrx_v256x64u_8u-imm9
; vrotrx_v256x64u_8u-imm9[66] = {c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 ed 73 d1 09 c5 f5 73 d9 08 b8 37 00 00 00 c5 f9 6e d8 c5 f5 f3 cb c5 ed eb c9 c5 fd 73 f8 08 c5 f9 6e d0 c5 fd f3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000bh vpsrlq ymm2,ymm1,9                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d1 09}
0010h vpsrldq ymm1,ymm1,8                     ; VPSRLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /3 ib || encoded[5]{c5 f5 73 d9 08}
0015h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq ymm1,ymm1,xmm3                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 f5 f3 cb}
0022h vpor ymm1,ymm2,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c9}
0026h vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq ymm0,ymm0,xmm2                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c2}
0033h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0037h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; vrotrx_v256x64u_8u-imm13
; vrotrx_v256x64u_8u-imm13[66] = {c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 ed 73 d1 0d c5 f5 73 d9 08 b8 33 00 00 00 c5 f9 6e d8 c5 f5 f3 cb c5 ed eb c9 c5 fd 73 f8 08 c5 f9 6e d0 c5 fd f3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000bh vpsrlq ymm2,ymm1,0dh                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d1 0d}
0010h vpsrldq ymm1,ymm1,8                     ; VPSRLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /3 ib || encoded[5]{c5 f5 73 d9 08}
0015h mov eax,33h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 33 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsllq ymm1,ymm1,xmm3                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 f5 f3 cb}
0022h vpor ymm1,ymm2,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c9}
0026h vpslldq ymm0,ymm0,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 fd 73 f8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsllq ymm0,ymm0,xmm2                   ; VPSLLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG F3 /r || encoded[4]{c5 fd f3 c2}
0033h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0037h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
