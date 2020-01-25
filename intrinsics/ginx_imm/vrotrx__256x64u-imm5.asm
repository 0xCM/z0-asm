; vrotrx__256x64u-imm5
; vrotrx__256x64u-imm5[7ff7c7587060h, 7ff7c75870a2h][66] = {c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 ed 73 d1 05 c5 f5 73 d9 08 b8 3b 00 00 00 c5 f9 6e d8 c5 f5 f3 cb c5 ed eb c9 c5 fd 73 f8 08 c5 f9 6e d0 c5 fd f3 c2 c5 f5 eb c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:11:036
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
