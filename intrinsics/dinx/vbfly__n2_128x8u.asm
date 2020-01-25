; Vector128<byte> vbfly(N2 n, Vector128<byte> x)
; vbfly__n2_128x8u[7ff7c6a24610h, 7ff7c6a2469ah][138] = {48 83 ec 18 c5 f8 77 c7 44 24 14 3c 00 00 00 48 8d 44 24 14 c4 e2 79 78 44 24 14 c4 c1 79 10 08 c5 f8 28 d1 c5 f8 28 d8 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 02 c7 44 24 10 fc 00 00 00 48 8d 44 24 10 c4 e2 79 78 64 24 10 c5 e1 db dc c5 f8 28 e2 c5 d9 73 d4 02 c7 44 24 0c 3f 00 00 00 48 8d 44 24 0c c4 e2 79 78 6c 24 0c c5 d9 db e5 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c0 c5 f9 ef c1 c5 f9 11 01 48 8b c1 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:681
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov dword ptr [rsp+14h],3ch             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 3c 00 00 00}
000fh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0014h vpbroadcastb xmm0,byte ptr [rsp+14h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 44 24 14}
001bh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0020h vmovaps xmm2,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d1}
0024h vmovaps xmm3,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d8}
0028h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0030h vpsllq xmm3,xmm3,2                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 02}
0035h mov dword ptr [rsp+10h],0fch            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 fc 00 00 00}
003dh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0042h vpbroadcastb xmm4,byte ptr [rsp+10h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 64 24 10}
0049h vpand xmm3,xmm3,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db dc}
004dh vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0051h vpsrlq xmm4,xmm4,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 02}
0056h mov dword ptr [rsp+0ch],3fh             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 3f 00 00 00}
005eh lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0063h vpbroadcastb xmm5,byte ptr [rsp+0ch]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 6c 24 0c}
006ah vpand xmm4,xmm4,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db e5}
006eh vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0072h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0076h vpand xmm0,xmm2,xmm0                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c0}
007ah vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
007eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
