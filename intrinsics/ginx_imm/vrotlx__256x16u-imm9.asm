; vrotlx__256x16u-imm9
; vrotlx__256x16u-imm9[7ff7c7584150h, 7ff7c7584192h][66] = {c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 ed 73 f1 09 c5 f5 73 f9 08 b8 37 00 00 00 c5 f9 6e d8 c5 f5 d3 cb c5 ed eb c9 c5 fd 73 d8 08 c5 f9 6e d0 c5 fd d3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:10:946
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0007h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000bh vpsllq ymm2,ymm1,9                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 ed 73 f1 09}
0010h vpslldq ymm1,ymm1,8                     ; VPSLLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /7 ib || encoded[5]{c5 f5 73 f9 08}
0015h mov eax,37h                             ; MOV r32, imm32 || o32 B8+rd id || encoded[5]{b8 37 00 00 00}
001ah vmovd xmm3,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d8}
001eh vpsrlq ymm1,ymm1,xmm3                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 f5 d3 cb}
0022h vpor ymm1,ymm2,ymm1                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 ed eb c9}
0026h vpsrldq ymm0,ymm0,8                     ; VPSRLDQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /3 ib || encoded[5]{c5 fd 73 d8 08}
002bh vmovd xmm2,eax                          ; VMOVD xmm1, r/m32 || VEX.128.66.0F.W0 6E /r || encoded[4]{c5 f9 6e d0}
002fh vpsrlq ymm0,ymm0,xmm2                   ; VPSRLQ ymm1, ymm2, xmm3/m128 || VEX.256.66.0F.WIG D3 /r || encoded[4]{c5 fd d3 c2}
0033h vpor ymm0,ymm1,ymm0                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 f5 eb c0}
0037h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
003bh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
003eh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0041h ret                                     ; RET || C3 || encoded[1]{c3}
