------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vsllv(Vector128<uint> src, Vector128<uint> counts)
; vsllv_128x32u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c2 79 47 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpsllvd xmm0,xmm0,[r8]                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 c2 79 47 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<long> vsllv(Vector128<long> src, Vector128<long> counts)
; vsllv_128x64i[27] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 10 0a c4 e2 f1 47 c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vpsllvq xmm0,xmm1,xmm0                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 e2 f1 47 c0}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vsllv(Vector128<ulong> src, Vector128<ulong> counts)
; vsllv_128x64u[22] = {c5 f8 77 66 90 c5 f9 10 02 c4 c2 f9 47 00 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpsllvq xmm0,xmm0,[r8]                  ; VPSLLVQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W1 47 /r || encoded[5]{c4 c2 f9 47 00}
000eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<sbyte> vsllv(Vector256<sbyte> src, Vector256<sbyte> counts)
; vsllv_256x8i[219] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 20 c9 c4 e3 7d 19 c0 01 c4 e2 7d 20 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 20 db c4 e3 7d 19 d2 01 c4 e2 7d 20 d2 c5 fc 28 e3 c4 e3 7d 19 cd 00 c4 e2 7d 23 ed c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e3 7d 19 db 00 c4 e2 7d 23 db c4 e3 7d 19 e4 01 c4 e2 7d 23 e4 c4 e2 55 47 db c4 e2 75 47 cc c5 e5 6b c9 c4 e3 fd 00 c9 d8 c5 fc 28 d8 c4 e3 7d 19 db 00 c4 e2 7d 23 db c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c5 fc 28 e2 c4 e3 7d 19 e4 00 c4 e2 7d 23 e4 c4 e3 7d 19 d2 01 c4 e2 7d 23 d2 c4 e2 65 47 dc c4 e2 7d 47 c2 c5 e5 6b c0 c4 e3 fd 00 c0 d8 c5 f5 63 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxbw ymm1,xmm1                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxbw ymm0,xmm0                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovsxbw ymm3,xmm3                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovsxbw ymm2,xmm2                     ; VPMOVSXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 20 /r || encoded[5]{c4 e2 7d 20 d2}
003ah vmovaps ymm4,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e3}
003eh vextractf128 xmm5,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cd 00}
0044h vpmovsxwd ymm5,xmm5                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 ed}
0049h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
004fh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0054h vextractf128 xmm3,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 00}
005ah vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
005fh vextractf128 xmm4,ymm4,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 e4 01}
0065h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
006ah vpsllvd ymm3,ymm5,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 55 47 db}
006fh vpsllvd ymm1,ymm1,ymm4                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 cc}
0074h vpackssdw ymm1,ymm3,ymm1                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 e5 6b c9}
0078h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
007eh vmovaps ymm3,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d8}
0082h vextractf128 xmm3,ymm3,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 00}
0088h vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
008dh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0093h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
0098h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
009ch vextractf128 xmm4,ymm4,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 e4 00}
00a2h vpmovsxwd ymm4,xmm4                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 e4}
00a7h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
00adh vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
00b2h vpsllvd ymm3,ymm3,ymm4                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 65 47 dc}
00b7h vpsllvd ymm0,ymm0,ymm2                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c2}
00bch vpackssdw ymm0,ymm3,ymm0                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 e5 6b c0}
00c0h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00c6h vpacksswb ymm0,ymm1,ymm0                ; VPACKSSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 63 /r || encoded[4]{c5 f5 63 c0}
00cah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00d0h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
00d4h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00d7h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00dah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vsllv(Vector256<byte> src, Vector256<byte> counts)
; vsllv_256x8u[303] = {48 83 ec 18 c5 f8 77 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 30 c9 c4 e3 7d 19 c0 01 c4 e2 7d 30 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 30 db c4 e3 7d 19 d2 01 c4 e2 7d 30 d2 c4 e3 7d 19 cc 00 c4 e2 7d 33 e4 c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c5 fc 28 eb c4 e3 7d 19 ed 00 c4 e2 7d 33 ed c4 e3 7d 19 db 01 c4 e2 7d 33 db c4 e2 5d 47 e5 c4 e2 75 47 cb c7 44 24 14 ff ff 00 00 48 8d 44 24 14 c4 e2 7d 58 5c 24 14 c5 dd db e3 c5 f5 db cb c4 e2 5d 2b c9 c4 e3 fd 00 c9 d8 c4 e3 7d 19 c3 00 c4 e2 7d 33 db c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c4 e3 7d 19 d4 00 c4 e2 7d 33 e4 c4 e3 7d 19 d2 01 c4 e2 7d 33 d2 c4 e2 65 47 dc c4 e2 7d 47 c2 c7 44 24 10 ff ff 00 00 48 8d 44 24 10 c4 e2 7d 58 54 24 10 c5 e5 db da c5 fd db c2 c4 e2 65 2b c0 c4 e3 fd 00 c0 d8 c7 44 24 0c ff 00 00 00 48 8d 44 24 0c c4 e2 7d 79 54 24 0c c5 f5 db ca c5 fd db c2 c5 f5 67 c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
000bh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0011h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0016h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ch vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
0021h vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0026h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ch vpmovzxbw ymm3,xmm3                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 db}
0031h vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0037h vpmovzxbw ymm2,xmm2                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 d2}
003ch vextractf128 xmm4,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cc 00}
0042h vpmovzxwd ymm4,xmm4                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 e4}
0047h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
004dh vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0052h vmovaps ymm5,ymm3                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 eb}
0056h vextractf128 xmm5,ymm5,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 ed 00}
005ch vpmovzxwd ymm5,xmm5                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 ed}
0061h vextractf128 xmm3,ymm3,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 db 01}
0067h vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
006ch vpsllvd ymm4,ymm4,ymm5                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 5d 47 e5}
0071h vpsllvd ymm1,ymm1,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 cb}
0076h mov dword ptr [rsp+14h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 ff ff 00 00}
007eh lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0083h vpbroadcastd ymm3,dword ptr [rsp+14h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 5c 24 14}
008ah vpand ymm4,ymm4,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e3}
008eh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
0092h vpackusdw ymm1,ymm4,ymm1                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 5d 2b c9}
0097h vpermq ymm1,ymm1,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c9 d8}
009dh vextractf128 xmm3,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c3 00}
00a3h vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
00a8h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
00aeh vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
00b3h vextractf128 xmm4,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d4 00}
00b9h vpmovzxwd ymm4,xmm4                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 e4}
00beh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
00c4h vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
00c9h vpsllvd ymm3,ymm3,ymm4                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 65 47 dc}
00ceh vpsllvd ymm0,ymm0,ymm2                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c2}
00d3h mov dword ptr [rsp+10h],0ffffh          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 ff ff 00 00}
00dbh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
00e0h vpbroadcastd ymm2,dword ptr [rsp+10h]   ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 10}
00e7h vpand ymm3,ymm3,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db da}
00ebh vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
00efh vpackusdw ymm0,ymm3,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 65 2b c0}
00f4h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
00fah mov dword ptr [rsp+0ch],0ffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c ff 00 00 00}
0102h lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0107h vpbroadcastw ymm2,word ptr [rsp+0ch]    ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 54 24 0c}
010eh vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
0112h vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0116h vpackuswb ymm0,ymm1,ymm0                ; VPACKUSWB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 67 /r || encoded[4]{c5 f5 67 c0}
011ah vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0120h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0124h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0127h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
012ah add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
012eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<Int16> vsllv(Vector256<Int16> src, Vector256<Int16> counts)
; vsllv_256x16i[89] = {c5 f8 77 66 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 23 c9 c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 23 db c4 e3 7d 19 d2 01 c4 e2 7d 23 d2 c4 e2 75 47 cb c4 e2 7d 47 c2 c5 f5 6b c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
003ah vpsllvd ymm1,ymm1,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 cb}
003fh vpsllvd ymm0,ymm0,ymm2                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c2}
0044h vpackssdw ymm0,ymm1,ymm0                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 f5 6b c0}
0048h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
004eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0052h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0055h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vsllv(Vector256<ushort> src, Vector256<ushort> counts)
; vsllv_256x16u[122] = {50 c5 f8 77 90 c5 fd 10 02 c4 e3 7d 19 c1 00 c4 e2 7d 33 c9 c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c4 c1 7d 10 10 c4 e3 7d 19 d3 00 c4 e2 7d 33 db c4 e3 7d 19 d2 01 c4 e2 7d 33 d2 c4 e2 75 47 cb c4 e2 7d 47 c2 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 54 24 04 c5 f5 db ca c5 fd db c2 c4 e2 75 2b c0 c4 e3 fd 00 c0 d8 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
000fh vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0014h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
001ah vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
001fh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0024h vextractf128 xmm3,ymm2,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d3 00}
002ah vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
002fh vextractf128 xmm2,ymm2,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 d2 01}
0035h vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
003ah vpsllvd ymm1,ymm1,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 cb}
003fh vpsllvd ymm0,ymm0,ymm2                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c2}
0044h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
004ch lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0051h vpbroadcastd ymm2,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 54 24 04}
0058h vpand ymm1,ymm1,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db ca}
005ch vpand ymm0,ymm0,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c2}
0060h vpackusdw ymm0,ymm1,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 75 2b c0}
0065h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
006bh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
006fh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0072h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0075h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0079h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<int> vsllv(Vector256<int> src, Vector256<int> counts)
; vsllv_256x32i[30] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 10 0a c4 e2 75 47 c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000eh vpsllvd ymm0,ymm1,ymm0                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 75 47 c0}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vsllv(Vector256<uint> src, Vector256<uint> counts)
; vsllv_256x32u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 7d 47 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpsllvd ymm0,ymm0,[r8]                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 c2 7d 47 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<long> vsllv(Vector256<long> src, Vector256<long> counts)
; vsllv_256x64i[30] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 10 0a c4 e2 f5 47 c0 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
000eh vpsllvq ymm0,ymm1,ymm0                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 e2 f5 47 c0}
0013h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
001dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vsllv(Vector256<ulong> src, Vector256<ulong> counts)
; vsllv_256x64u[25] = {c5 f8 77 66 90 c5 fd 10 02 c4 c2 fd 47 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 02}
0009h vpsllvq ymm0,ymm0,[r8]                  ; VPSLLVQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W1 47 /r || encoded[5]{c4 c2 fd 47 00}
000eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0012h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0015h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0018h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<sbyte> vsllv(Vector128<sbyte> src, Vector128<sbyte> counts)
; vsllv_128x8i[183] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 79 20 c8 c4 e3 f9 16 c0 01 c4 e1 f9 6e c0 c4 e2 79 20 c0 c5 ec 57 d2 c4 e3 6d 38 c9 00 c4 e3 75 38 c0 01 c4 c1 79 10 08 c4 e2 79 20 d1 c4 e3 f9 16 c8 01 c4 e1 f9 6e c8 c4 e2 79 20 c9 c5 e4 57 db c4 e3 65 38 d2 00 c4 e3 6d 38 c9 01 c4 e3 7d 19 c2 00 c4 e2 7d 23 d2 c4 e3 7d 19 c0 01 c4 e2 7d 23 c0 c4 e3 7d 19 cb 00 c4 e2 7d 23 db c4 e3 7d 19 c9 01 c4 e2 7d 23 c9 c4 e2 6d 47 d3 c4 e2 7d 47 c1 c5 ed 6b c0 c4 e3 fd 00 c0 d8 c5 fc 28 c8 c4 e3 7d 19 c9 00 c4 e3 7d 19 c0 01 c5 f1 63 c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovsxbw xmm1,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c8}
000eh vpextrq rax,xmm0,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c0 01}
0014h vmovq xmm0,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c0}
0019h vpmovsxbw xmm0,xmm0                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c0}
001eh vxorps ymm2,ymm2,ymm2                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 ec 57 d2}
0022h vinserti128 ymm1,ymm2,xmm1,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 00}
0028h vinserti128 ymm0,ymm1,xmm0,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 75 38 c0 01}
002eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0033h vpmovsxbw xmm2,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 d1}
0038h vpextrq rax,xmm1,1                      ; VPEXTRQ r/m64, xmm2, imm8 || VEX.128.66.0F3A.W1 16 /r ib || encoded[6]{c4 e3 f9 16 c8 01}
003eh vmovq xmm1,rax                          ; VMOVQ xmm1, r/m64 || VEX.128.66.0F.W1 6E /r || encoded[5]{c4 e1 f9 6e c8}
0043h vpmovsxbw xmm1,xmm1                     ; VPMOVSXBW xmm1, xmm2/m64 || VEX.128.66.0F38.WIG 20 /r || encoded[5]{c4 e2 79 20 c9}
0048h vxorps ymm3,ymm3,ymm3                   ; VXORPS ymm1, ymm2, ymm3/m256 || VEX.256.0F.WIG 57 /r || encoded[4]{c5 e4 57 db}
004ch vinserti128 ymm2,ymm3,xmm2,0            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 65 38 d2 00}
0052h vinserti128 ymm1,ymm2,xmm1,1            ; VINSERTI128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 38 /r ib || encoded[6]{c4 e3 6d 38 c9 01}
0058h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
005eh vpmovsxwd ymm2,xmm2                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 d2}
0063h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0069h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
006eh vextractf128 xmm3,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cb 00}
0074h vpmovsxwd ymm3,xmm3                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 db}
0079h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
007fh vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0084h vpsllvd ymm2,ymm2,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 6d 47 d3}
0089h vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
008eh vpackssdw ymm0,ymm2,ymm0                ; VPACKSSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 6B /r || encoded[4]{c5 ed 6b c0}
0092h vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0098h vmovaps ymm1,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 c8}
009ch vextractf128 xmm1,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 00}
00a2h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
00a8h vpacksswb xmm0,xmm1,xmm0                ; VPACKSSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 63 /r || encoded[4]{c5 f1 63 c0}
00ach vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00b0h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00b3h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00b6h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vsllv(Vector128<byte> src, Vector128<byte> counts)
; vsllv_128x8u[173] = {50 c5 f8 77 90 c5 f9 10 02 c4 e2 7d 30 c0 c4 c1 79 10 08 c4 e2 7d 30 c9 c4 e3 7d 19 c2 00 c4 e2 7d 33 d2 c4 e3 7d 19 c0 01 c4 e2 7d 33 c0 c4 e3 7d 19 cb 00 c4 e2 7d 33 db c4 e3 7d 19 c9 01 c4 e2 7d 33 c9 c4 e2 6d 47 d3 c4 e2 7d 47 c1 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 7d 58 4c 24 04 c5 ed db d1 c5 fd db c1 c4 e2 6d 2b c0 c4 e3 fd 00 c0 d8 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 04 24 ff 00 00 00 48 8d 04 24 c4 e2 79 79 14 24 c5 f1 db ca c5 f9 db c2 c5 f1 67 c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovzxbw ymm0,xmm0                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovzxbw ymm1,xmm1                     ; VPMOVZXBW ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 30 /r || encoded[5]{c4 e2 7d 30 c9}
0018h vextractf128 xmm2,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c2 00}
001eh vpmovzxwd ymm2,xmm2                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 d2}
0023h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0029h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
002eh vextractf128 xmm3,ymm1,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 cb 00}
0034h vpmovzxwd ymm3,xmm3                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 db}
0039h vextractf128 xmm1,ymm1,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c9 01}
003fh vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0044h vpsllvd ymm2,ymm2,ymm3                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 6d 47 d3}
0049h vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
004eh mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0056h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
005bh vpbroadcastd ymm1,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 04}
0062h vpand ymm2,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d1}
0066h vpand ymm0,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c1}
006ah vpackusdw ymm0,ymm2,ymm0                ; VPACKUSDW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 2B /r || encoded[5]{c4 e2 6d 2b c0}
006fh vpermq ymm0,ymm0,0d8h                   ; VPERMQ ymm1, ymm2/m256, imm8 || VEX.256.66.0F3A.W1 00 /r ib || encoded[6]{c4 e3 fd 00 c0 d8}
0075h vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
007bh vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0081h mov dword ptr [rsp],0ffh                ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[7]{c7 04 24 ff 00 00 00}
0088h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
008ch vpbroadcastw xmm2,word ptr [rsp]        ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[6]{c4 e2 79 79 14 24}
0092h vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0096h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
009ah vpackuswb xmm0,xmm1,xmm0                ; VPACKUSWB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 67 /r || encoded[4]{c5 f1 67 c0}
009eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
00a2h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
00a5h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
00a8h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
00ach ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<Int16> vsllv(Vector128<Int16> src, Vector128<Int16> counts)
; vsllv_128x16i[56] = {c5 f8 77 66 90 c5 f9 10 02 c4 e2 7d 23 c0 c4 c1 79 10 08 c4 e2 7d 23 c9 c4 e2 7d 47 c1 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c5 f1 6b c0 c5 f9 11 01 48 8b c1 c5 f8 77 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovsxwd ymm0,xmm0                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovsxwd ymm1,xmm1                     ; VPMOVSXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 23 /r || encoded[5]{c4 e2 7d 23 c9}
0018h vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
001dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0023h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0029h vpackssdw xmm0,xmm1,xmm0                ; VPACKSSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 6B /r || encoded[4]{c5 f1 6b c0}
002dh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0031h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0034h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0037h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vsllv(Vector128<ushort> src, Vector128<ushort> counts)
; vsllv_128x16u[89] = {50 c5 f8 77 90 c5 f9 10 02 c4 e2 7d 33 c0 c4 c1 79 10 08 c4 e2 7d 33 c9 c4 e2 7d 47 c1 c4 e3 7d 19 c1 00 c4 e3 7d 19 c0 01 c7 44 24 04 ff ff 00 00 48 8d 44 24 04 c4 e2 79 58 54 24 04 c5 f1 db ca c5 f9 db c2 c4 e2 71 2b c0 c5 f9 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; Capture completion code = RET_INTRx2
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 02}
0009h vpmovzxwd ymm0,xmm0                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c0}
000eh vmovupd xmm1,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 08}
0013h vpmovzxwd ymm1,xmm1                     ; VPMOVZXWD ymm1, xmm2/m128 || VEX.256.66.0F38.WIG 33 /r || encoded[5]{c4 e2 7d 33 c9}
0018h vpsllvd ymm0,ymm0,ymm1                  ; VPSLLVD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.W0 47 /r || encoded[5]{c4 e2 7d 47 c1}
001dh vextractf128 xmm1,ymm0,0                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c1 00}
0023h vextractf128 xmm0,ymm0,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 c0 01}
0029h mov dword ptr [rsp+4],0ffffh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 ff ff 00 00}
0031h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0036h vpbroadcastd xmm2,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 54 24 04}
003dh vpand xmm1,xmm1,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db ca}
0041h vpand xmm0,xmm0,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c2}
0045h vpackusdw xmm0,xmm1,xmm0                ; VPACKUSDW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.WIG 2B /r || encoded[5]{c4 e2 71 2b c0}
004ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
004eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0051h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0054h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0058h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<int> vsllv(Vector128<int> src, Vector128<int> counts)
; vsllv_128x32i[27] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 10 0a c4 e2 71 47 c0 c5 f9 11 01 48 8b c1 c3}
; Capture completion code = RET_INTRx2
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
000eh vpsllvd xmm0,xmm1,xmm0                  ; VPSLLVD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F38.W0 47 /r || encoded[5]{c4 e2 71 47 c0}
0013h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0017h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
001ah ret                                     ; RET || C3 || encoded[1]{c3}
