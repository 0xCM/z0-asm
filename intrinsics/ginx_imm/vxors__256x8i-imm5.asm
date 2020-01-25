; vxors__256x8i-imm5
; vxors__256x8i-imm5[7ff7c6ca3170h, 7ff7c6ca3259h][233] = {48 83 ec 18 c5 f8 77 c5 fd 10 02 c5 fc 28 c8 c5 f5 73 f1 05 c7 44 24 14 e0 00 00 00 48 8d 44 24 14 c4 e2 7d 78 54 24 14 c5 f5 db ca c5 fc 28 d0 c4 e3 7d 19 d3 00 c4 e2 79 20 e3 c4 e3 f9 16 d8 01 c4 e1 f9 6e d8 c4 e2 79 20 db c5 d4 57 ed c4 e3 55 38 e4 00 c4 e3 5d 38 db 01 c5 e5 71 d3 05 c4 e3 7d 19 d2 01 c4 e2 79 20 e2 c4 e3 f9 16 d0 01 c4 e1 f9 6e d0 c4 e2 79 20 d2 c5 d4 57 ed c4 e3 55 38 e4 00 c4 e3 5d 38 d2 01 c5 ed 71 d2 05 c7 44 24 10 ff 00 00 00 48 8d 44 24 10 c4 e2 7d 78 64 24 10 c5 e5 db dc c5 ed db d4 c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 7d 79 64 24 0c c5 e5 db dc c5 ed db d4 c5 e5 67 d2 c4 e3 fd 00 d2 d8 c5 f5 ef ca c5 fd ef c1 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; Capture completion code, RET_INTR
; 2020-01-24 18:45:06:997
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000bh vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
000fh vpsllq ymm1,ymm1,5                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 f5 73 f1 05}
0014h mov dword ptr [rsp+14h],0e0h            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 e0 00 00 00}
001ch lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0021h vpbroadcastb ymm2,byte ptr [rsp+14h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 54 24 14}
0028h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
002ch vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0030h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
0036h vpmovsxbw xmm4,xmm3                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 e3}
003bh vpextrq rax,xmm3,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d8 01}
0041h vmovq xmm3,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d8}
0046h vpmovsxbw xmm3,xmm3                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 db}
004bh vxorps ymm5,ymm5,ymm5                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 d4 57 ed}
004fh vinserti128 ymm4,ymm5,xmm4,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 55 38 e4 00}
0055h vinserti128 ymm3,ymm4,xmm3,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 db 01}
005bh vpsrlw ymm3,ymm3,5                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 e5 71 d3 05}
0060h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0066h vpmovsxbw xmm4,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 e2}
006bh vpextrq rax,xmm2,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 d0 01}
0071h vmovq xmm2,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e d0}
0076h vpmovsxbw xmm2,xmm2                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d2}
007bh vxorps ymm5,ymm5,ymm5                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 d4 57 ed}
007fh vinserti128 ymm4,ymm5,xmm4,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 55 38 e4 00}
0085h vinserti128 ymm2,ymm4,xmm2,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 5d 38 d2 01}
008bh vpsrlw ymm2,ymm2,5                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 ed 71 d2 05}
0090h mov dword ptr [rsp+10h],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff 00 00 00}
0098h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
009dh vpbroadcastb ymm4,byte ptr [rsp+10h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 64 24 10}
00a4h vpand ymm3,ymm3,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db dc}
00a8h vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00ach mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
00b4h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
00b9h vpbroadcastw ymm4,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 64 24 0c}
00c0h vpand ymm3,ymm3,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db dc}
00c4h vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c8h vpackuswb ymm2,ymm3,ymm2                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 e5 67 d2}
00cch vpermq ymm2,ymm2,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 d2 d8}
00d2h vpxor ymm1,ymm1,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef ca}
00d6h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
00dah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00deh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00e1h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00e4h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
00e8h ret                                     ; RET || C3 || encoded[1]{c3}
