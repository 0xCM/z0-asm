; Vector256<ushort> vbfly<ushort>(N4 n, Vector256<ushort> x)
; vbfly__n4_256x16u[7ff7c6bf8eb0h, 7ff7c6bf8f0bh][91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 f0 0f 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 71 f3 04 c5 fc 28 e2 c5 dd 71 d4 04 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:04:975
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],0ff0h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 f0 0f 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw ymm1,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpsllw ymm3,ymm3,4                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 e5 71 f3 04}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrlw ymm4,ymm4,4                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 dd 71 d4 04}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
