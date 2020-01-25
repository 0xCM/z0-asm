; Vector256<byte> vbfly(N1 n, Vector256<byte> x)
; vbfly__n1_256x8u[7ff7c6a25130h, 7ff7c6a251bdh][141] = {48 83 ec 18 c5 f8 77 c7 44 24 14 66 00 00 00 48 8d 44 24 14 c4 e2 7d 78 44 24 14 c4 c1 7d 10 08 c5 fc 28 d1 c5 fc 28 d8 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 01 c7 44 24 10 fe 00 00 00 48 8d 44 24 10 c4 e2 7d 78 64 24 10 c5 e5 db dc c5 fc 28 e2 c5 dd 73 d4 01 c7 44 24 0c 7f 00 00 00 48 8d 44 24 0c c4 e2 7d 78 6c 24 0c c5 dd db e5 c5 e5 ef dc c5 ed ef d3 c5 ed db c0 c5 fd ef c1 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:44:58:721
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h mov dword ptr [rsp+14h],66h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 66 00 00 00}
000fh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0014h vpbroadcastb ymm0,byte ptr [rsp+14h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 44 24 14}
001bh vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
0020h vmovaps ymm2,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d1}
0024h vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0028h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ch vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0030h vpsllq ymm3,ymm3,1                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 01}
0035h mov dword ptr [rsp+10h],0feh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 fe 00 00 00}
003dh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0042h vpbroadcastb ymm4,byte ptr [rsp+10h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 64 24 10}
0049h vpand ymm3,ymm3,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db dc}
004dh vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0051h vpsrlq ymm4,ymm4,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 01}
0056h mov dword ptr [rsp+0ch],7fh             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 7f 00 00 00}
005eh lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0063h vpbroadcastb ymm5,byte ptr [rsp+0ch]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 6c 24 0c}
006ah vpand ymm4,ymm4,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e5}
006eh vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0072h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0076h vpand ymm0,ymm2,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c0}
007ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
007eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0088h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
