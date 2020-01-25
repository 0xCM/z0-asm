; vxors__128x8i-imm13
; vxors__128x8i-imm13[7ff7c6ca20d0h, 7ff7c6ca2183h][179] = {48 83 ec 18 c5 f8 77 c5 f9 10 02 c5 f8 28 c8 c5 f1 73 f1 0d 33 c0 89 44 24 14 48 8d 44 24 14 c4 e2 79 78 54 24 14 c5 f1 db ca c5 f8 28 d0 c4 e2 79 20 da c4 e3 f9 16 d0 01 c4 e1 f9 6e d0 c4 e2 79 20 d2 c5 dc 57 e4 c4 e3 5d 38 db 00 c4 e3 65 38 d2 01 c5 ed 71 d2 0d c7 44 24 10 ff 00 00 00 48 8d 44 24 10 c4 e2 7d 78 5c 24 10 c5 ed db d3 c4 e3 7d 19 d3 00 c4 e3 7d 19 d2 01 c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 79 79 64 24 0c c5 e1 db dc c5 e9 db d4 c5 e1 67 d2 c5 f1 ef ca c5 f9 ef c1 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:727
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
000bh vmovaps xmm1,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 c8}
000fh vpsllq xmm1,xmm1,0dh                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 f1 73 f1 0d}
0014h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0016h mov [rsp+14h],eax                       ; MOV r/m32, r32 || o32 89 /r || encoded[4]{89 44 24 14}
001ah lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
001fh vpbroadcastb xmm2,byte ptr [rsp+14h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 54 24 14}
0026h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
002ah vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
002eh vpmovsxbw xmm3,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 da}
0033h vpextrq rax,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d0 01}
0039h vmovq xmm2,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d0}
003eh vpmovsxbw xmm2,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d2}
0043h vxorps ymm4,ymm4,ymm4                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 dc 57 e4}
0047h vinserti128 ymm3,ymm4,xmm3,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 00}
004dh vinserti128 ymm2,ymm3,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 01}
0053h vpsrlw ymm2,ymm2,0dh                    ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 ed 71 d2 0d}
0058h mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0060h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0065h vpbroadcastb ymm3,byte ptr [rsp+10h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 5c 24 10}
006ch vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0070h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
0076h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
007ch mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
0084h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0089h vpbroadcastw xmm4,word ptr [rsp+0ch]    ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 64 24 0c}
0090h vpand xmm3,xmm3,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db dc}
0094h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
0098h vpackuswb xmm2,xmm3,xmm2                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 e1 67 d2}
009ch vpxor xmm1,xmm1,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef ca}
00a0h vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
00a4h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a8h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00abh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00aeh add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
00b2h ret                                     ; RET || C3 || encoded[1]{c3}
