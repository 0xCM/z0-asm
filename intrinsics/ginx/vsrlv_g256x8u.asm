; Vector256<byte> vsrlv<byte>(Vector256<byte> x, Vector256<byte> counts)
; vsrlv_g256x8u[7ff7c71fa530h, 7ff7c71fa65fh][303] = {48 83 ec 18 c5 f8 77 c5 fd 10 02 c4 c1 7d 10 08 c4 e3 7d 19 c2 00 c4 e2 7d 30 d2 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c4 e3 7d 19 cb 00 c4 e2 7d 30 db c4 e3 7d 19 c9 01 c4 e2 7d 30 c9 c4 e3 7d 19 d4 00 c4 e2 7d 33 e4 c4 e3 7d 19 d2 01 c4 e2 7d 33 d2 c5 fc 28 eb c4 e3 7d 19 ed 00 c4 e2 7d 33 ed c4 e3 7d 19 db 01 c4 e2 7d 33 db c4 e2 5d 45 e5 c4 e2 6d 45 d3 c7 44 24 14 ff ff 00 00 48 8d 44 24 14 c4 e2 7d 58 5c 24 14 c5 dd db e3 c5 ed db d3 c4 e2 5d 2b d2 c4 e3 fd 00 d2 d8 c4 e3 7d 19 c3 00 c4 e2 7d 33 db c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c4 e3 7d 19 cc 00 c4 e2 7d 33 e4 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c4 e2 65 45 dc c4 e2 7d 45 c1 c7 44 24 10 ff ff 00 00 48 8d 44 24 10 c4 e2 7d 58 4c 24 10 c5 e5 db d9 c5 fd db c1 c4 e2 65 2b c0 c4 e3 fd 00 c0 d8 c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 7d 79 4c 24 0c c5 ed db d1 c5 fd db c1 c5 ed 67 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:09:924
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000bh vmovupd ymm1,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 08}
0010h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
0016h vpmovzxbw ymm2,xmm2                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 d2}
001bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0021h vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
0026h vextractf128 xmm3,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cb 00}
002ch vpmovzxbw ymm3,xmm3                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 db}
0031h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
0037h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
003ch vextractf128 xmm4,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d4 00}
0042h vpmovzxwd ymm4,xmm4                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 e4}
0047h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
004dh vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
0052h vmovaps ymm5,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 eb}
0056h vextractf128 xmm5,ymm5,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ed 00}
005ch vpmovzxwd ymm5,xmm5                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 ed}
0061h vextractf128 xmm3,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 01}
0067h vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
006ch vpsrlvd ymm4,ymm4,ymm5                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 5d 45 e5}
0071h vpsrlvd ymm2,ymm2,ymm3                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 6d 45 d3}
0076h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
007eh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0083h vpbroadcastd ymm3,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 14}
008ah vpand ymm4,ymm4,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e3}
008eh vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
0092h vpackusdw ymm2,ymm4,ymm2                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 5d 2b d2}
0097h vpermq ymm2,ymm2,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 d2 d8}
009dh vextractf128 xmm3,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c3 00}
00a3h vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
00a8h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
00aeh vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
00b3h vextractf128 xmm4,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cc 00}
00b9h vpmovzxwd ymm4,xmm4                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 e4}
00beh vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
00c4h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
00c9h vpsrlvd ymm3,ymm3,ymm4                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 65 45 dc}
00ceh vpsrlvd ymm0,ymm0,ymm1                  ; VPSRLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 45 /r || encoded[5]{c4 e2 7d 45 c1}
00d3h mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
00dbh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
00e0h vpbroadcastd ymm1,dword ptr [rsp+10h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 10}
00e7h vpand ymm3,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db d9}
00ebh vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
00efh vpackusdw ymm0,ymm3,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 65 2b c0}
00f4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00fah mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
0102h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0107h vpbroadcastw ymm1,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 0c}
010eh vpand ymm2,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d1}
0112h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
0116h vpackuswb ymm0,ymm2,ymm0                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 ed 67 c0}
011ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0120h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0124h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0127h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
012ah add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
012eh ret                                     ; RET || C3 || encoded[1]{c3}
