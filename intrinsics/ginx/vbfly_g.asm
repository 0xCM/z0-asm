------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbfly<byte>(N1 n, Vector128<byte> x)
; vbfly_gn1_v128x8u[138] = {48 83 ec 18 c5 f8 77 c4 c1 79 10 00 c7 44 24 14 66 00 00 00 48 8d 44 24 14 c4 e2 79 78 4c 24 14 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 01 c7 44 24 10 fe 00 00 00 48 8d 44 24 10 c4 e2 79 78 64 24 10 c5 e1 db dc c5 f8 28 e2 c5 d9 73 d4 01 c7 44 24 0c 7f 00 00 00 48 8d 44 24 0c c4 e2 79 78 6c 24 0c c5 d9 db e5 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ch mov dword ptr [rsp+14h],66h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 66 00 00 00}
0014h lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0019h vpbroadcastb xmm1,byte ptr [rsp+14h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 4c 24 14}
0020h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0024h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0028h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ch vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0030h vpsllq xmm3,xmm3,1                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 01}
0035h mov dword ptr [rsp+10h],0feh            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 fe 00 00 00}
003dh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0042h vpbroadcastb xmm4,byte ptr [rsp+10h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 64 24 10}
0049h vpand xmm3,xmm3,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db dc}
004dh vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0051h vpsrlq xmm4,xmm4,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 01}
0056h mov dword ptr [rsp+0ch],7fh             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 7f 00 00 00}
005eh lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0063h vpbroadcastb xmm5,byte ptr [rsp+0ch]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 6c 24 0c}
006ah vpand xmm4,xmm4,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db e5}
006eh vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0072h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0076h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
007ah vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
007eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbfly<ushort>(N1 n, Vector128<ushort> x)
; vbfly_gn1_v128x16u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 66 66 00 00 48 8d 44 24 04 c4 e2 79 79 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 71 f3 01 c5 f8 28 e2 c5 d9 71 d4 01 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],6666h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 66 66 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw xmm1,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpsllw xmm3,xmm3,1                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 e1 71 f3 01}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrlw xmm4,xmm4,1                      ; VPSRLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /2 ib || encoded[5]{c5 d9 71 d4 01}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbfly<uint>(N1 n, Vector128<uint> x)
; vbfly_gn1_v128x32u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 66 66 66 66 48 8d 44 24 04 c4 e2 79 58 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 72 f3 01 c5 f8 28 e2 c5 d9 72 d4 01 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],66666666h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 66 66 66 66}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd xmm1,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpslld xmm3,xmm3,1                      ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 e1 72 f3 01}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrld xmm4,xmm4,1                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 d9 72 d4 01}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbfly<ulong>(N1 n, Vector128<ulong> x)
; vbfly_gn1_v128x64u[92] = {50 c5 f8 77 90 c4 c1 79 10 00 48 b8 66 66 66 66 66 66 66 66 48 89 04 24 48 8d 04 24 c4 e2 79 59 0c 24 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 01 c5 f8 28 e2 c5 d9 73 d4 01 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov rax,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 66 66 66 66 66 66 66 66}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0022h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0026h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002eh vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0032h vpsllq xmm3,xmm3,1                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 01}
0037h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
003bh vpsrlq xmm4,xmm4,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 01}
0040h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0044h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0048h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
004ch vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0050h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbfly<byte>(N2 n, Vector128<byte> x)
; vbfly_gn2_v128x8u[138] = {48 83 ec 18 c5 f8 77 c4 c1 79 10 00 c7 44 24 14 3c 00 00 00 48 8d 44 24 14 c4 e2 79 78 4c 24 14 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 02 c7 44 24 10 fc 00 00 00 48 8d 44 24 10 c4 e2 79 78 64 24 10 c5 e1 db dc c5 f8 28 e2 c5 d9 73 d4 02 c7 44 24 0c 3f 00 00 00 48 8d 44 24 0c c4 e2 79 78 6c 24 0c c5 d9 db e5 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ch mov dword ptr [rsp+14h],3ch             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 3c 00 00 00}
0014h lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0019h vpbroadcastb xmm1,byte ptr [rsp+14h]    ; VPBROADCASTB xmm1, xmm2/m8 || VEX.128.66.0F38.W0 78 /r || encoded[7]{c4 e2 79 78 4c 24 14}
0020h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0024h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
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
0076h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
007ah vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
007eh vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
0089h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbfly<ushort>(N2 n, Vector128<ushort> x)
; vbfly_gn2_v128x16u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 3c 3c 00 00 48 8d 44 24 04 c4 e2 79 79 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 71 f3 02 c5 f8 28 e2 c5 d9 71 d4 02 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],3c3ch             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 3c 3c 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw xmm1,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpsllw xmm3,xmm3,2                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 e1 71 f3 02}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrlw xmm4,xmm4,2                      ; VPSRLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /2 ib || encoded[5]{c5 d9 71 d4 02}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbfly<uint>(N2 n, Vector128<uint> x)
; vbfly_gn2_v128x32u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 3c 3c 3c 3c 48 8d 44 24 04 c4 e2 79 58 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 72 f3 02 c5 f8 28 e2 c5 d9 72 d4 02 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],3c3c3c3ch         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 3c 3c 3c 3c}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd xmm1,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpslld xmm3,xmm3,2                      ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 e1 72 f3 02}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrld xmm4,xmm4,2                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 d9 72 d4 02}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbfly<ulong>(N2 n, Vector128<ulong> x)
; vbfly_gn2_v128x64u[92] = {50 c5 f8 77 90 c4 c1 79 10 00 48 b8 3c 3c 3c 3c 3c 3c 3c 3c 48 89 04 24 48 8d 04 24 c4 e2 79 59 0c 24 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 02 c5 f8 28 e2 c5 d9 73 d4 02 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov rax,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3c 3c 3c 3c 3c 3c 3c 3c}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0022h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0026h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002eh vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0032h vpsllq xmm3,xmm3,2                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 02}
0037h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
003bh vpsrlq xmm4,xmm4,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 02}
0040h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0044h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0048h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
004ch vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0050h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbfly<byte>(N4 n, Vector128<byte> x)
; vbfly_gn4_v128x8u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbfly<ushort>(N4 n, Vector128<ushort> x)
; vbfly_gn4_v128x16u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 f0 0f 00 00 48 8d 44 24 04 c4 e2 79 79 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 71 f3 04 c5 f8 28 e2 c5 d9 71 d4 04 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],0ff0h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 f0 0f 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw xmm1,word ptr [rsp+4]      ; VPBROADCASTW xmm1, xmm2/m16 || VEX.128.66.0F38.W0 79 /r || encoded[7]{c4 e2 79 79 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpsllw xmm3,xmm3,4                      ; VPSLLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /6 ib || encoded[5]{c5 e1 71 f3 04}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrlw xmm4,xmm4,4                      ; VPSRLW xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 71 /2 ib || encoded[5]{c5 d9 71 d4 04}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbfly<uint>(N4 n, Vector128<uint> x)
; vbfly_gn4_v128x32u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 f0 0f f0 0f 48 8d 44 24 04 c4 e2 79 58 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 72 f3 04 c5 f8 28 e2 c5 d9 72 d4 04 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],0ff00ff0h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 f0 0f f0 0f}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd xmm1,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpslld xmm3,xmm3,4                      ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 e1 72 f3 04}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrld xmm4,xmm4,4                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 d9 72 d4 04}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbfly<ulong>(N4 n, Vector128<ulong> x)
; vbfly_gn4_v128x64u[92] = {50 c5 f8 77 90 c4 c1 79 10 00 48 b8 f0 0f f0 0f f0 0f f0 0f 48 89 04 24 48 8d 04 24 c4 e2 79 59 0c 24 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 04 c5 f8 28 e2 c5 d9 73 d4 04 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov rax,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0f f0 0f f0 0f f0 0f}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0022h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0026h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002eh vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0032h vpsllq xmm3,xmm3,4                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 04}
0037h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
003bh vpsrlq xmm4,xmm4,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 04}
0040h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0044h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0048h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
004ch vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0050h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbfly<byte>(N8 n, Vector128<byte> x)
; vbfly_gn8_v128x8u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbfly<ushort>(N8 n, Vector128<ushort> x)
; vbfly_gn8_v128x16u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbfly<uint>(N8 n, Vector128<uint> x)
; vbfly_gn8_v128x32u[88] = {50 c5 f8 77 90 c4 c1 79 10 00 c7 44 24 04 00 ff ff 00 48 8d 44 24 04 c4 e2 79 58 4c 24 04 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 72 f3 08 c5 f8 28 e2 c5 d9 72 d4 08 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov dword ptr [rsp+4],0ffff00h          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 ff ff 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd xmm1,dword ptr [rsp+4]     ; VPBROADCASTD xmm1, xmm2/m32 || VEX.128.66.0F38.W0 58 /r || encoded[7]{c4 e2 79 58 4c 24 04}
001eh vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0022h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
0026h vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002ah vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
002eh vpslld xmm3,xmm3,8                      ; VPSLLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /6 ib || encoded[5]{c5 e1 72 f3 08}
0033h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
0037h vpsrld xmm4,xmm4,8                      ; VPSRLD xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 72 /2 ib || encoded[5]{c5 d9 72 d4 08}
003ch vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0040h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0044h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
0048h vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
004ch vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
0057h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbfly<ulong>(N8 n, Vector128<ulong> x)
; vbfly_gn8_v128x64u[92] = {50 c5 f8 77 90 c4 c1 79 10 00 48 b8 00 ff ff 00 00 ff ff 00 48 89 04 24 48 8d 04 24 c4 e2 79 59 0c 24 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 08 c5 f8 28 e2 c5 d9 73 d4 08 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov rax,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ff ff 00 00 ff ff 00}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0022h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0026h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002eh vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0032h vpsllq xmm3,xmm3,8                      ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 08}
0037h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
003bh vpsrlq xmm4,xmm4,8                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 08}
0040h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0044h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0048h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
004ch vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0050h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<byte> vbfly<byte>(N16 n, Vector128<byte> x)
; vbfly_gn16_v128x8u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ushort> vbfly<ushort>(N16 n, Vector128<ushort> x)
; vbfly_gn16_v128x16u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<uint> vbfly<uint>(N16 n, Vector128<uint> x)
; vbfly_gn16_v128x32u[18] = {c5 f8 77 66 90 c4 c1 79 10 00 c5 f9 11 01 48 8b c1 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector128<ulong> vbfly<ulong>(N16 n, Vector128<ulong> x)
; vbfly_gn16_v128x64u[92] = {50 c5 f8 77 90 c4 c1 79 10 00 48 b8 00 00 ff ff ff ff 00 00 48 89 04 24 48 8d 04 24 c4 e2 79 59 0c 24 c5 f8 28 d0 c5 f8 28 d9 c5 e9 db d3 c5 f8 28 da c5 e1 73 f3 10 c5 f8 28 e2 c5 d9 73 d4 10 c5 e1 ef dc c5 e9 ef d3 c5 e9 db c9 c5 f1 ef c0 c5 f9 11 01 48 8b c1 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd xmm0,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 00}
000ah mov rax,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 ff ff ff ff 00 00}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq xmm1,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 0c 24}
0022h vmovaps xmm2,xmm0                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d0}
0026h vmovaps xmm3,xmm1                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 d9}
002ah vpand xmm2,xmm2,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d3}
002eh vmovaps xmm3,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 da}
0032h vpsllq xmm3,xmm3,10h                    ; VPSLLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /6 ib || encoded[5]{c5 e1 73 f3 10}
0037h vmovaps xmm4,xmm2                       ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[4]{c5 f8 28 e2}
003bh vpsrlq xmm4,xmm4,10h                    ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 10}
0040h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
0044h vpxor xmm2,xmm2,xmm3                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e9 ef d3}
0048h vpand xmm1,xmm2,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db c9}
004ch vpxor xmm0,xmm1,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f1 ef c0}
0050h vmovupd [rcx],xmm0                      ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[4]{c5 f9 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005bh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbfly<byte>(N1 n, Vector256<byte> x)
; vbfly_gn1_v256x8u[141] = {48 83 ec 18 c5 f8 77 c4 c1 7d 10 00 c7 44 24 14 66 00 00 00 48 8d 44 24 14 c4 e2 7d 78 4c 24 14 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 01 c7 44 24 10 fe 00 00 00 48 8d 44 24 10 c4 e2 7d 78 64 24 10 c5 e5 db dc c5 fc 28 e2 c5 dd 73 d4 01 c7 44 24 0c 7f 00 00 00 48 8d 44 24 0c c4 e2 7d 78 6c 24 0c c5 dd db e5 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ch mov dword ptr [rsp+14h],66h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 66 00 00 00}
0014h lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0019h vpbroadcastb ymm1,byte ptr [rsp+14h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 4c 24 14}
0020h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0024h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
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
0076h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
007ah vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
007eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0088h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbfly<ushort>(N1 n, Vector256<ushort> x)
; vbfly_gn1_v256x16u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 66 66 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 71 f3 01 c5 fc 28 e2 c5 dd 71 d4 01 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],6666h             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 66 66 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw ymm1,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpsllw ymm3,ymm3,1                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 e5 71 f3 01}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrlw ymm4,ymm4,1                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 dd 71 d4 01}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbfly<uint>(N1 n, Vector256<uint> x)
; vbfly_gn1_v256x32u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 66 66 66 66 48 8d 44 24 04 c4 e2 7d 58 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 72 f3 01 c5 fc 28 e2 c5 dd 72 d4 01 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],66666666h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 66 66 66 66}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd ymm1,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpslld ymm3,ymm3,1                      ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 e5 72 f3 01}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrld ymm4,ymm4,1                      ; VPSRLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /2 ib || encoded[5]{c5 dd 72 d4 01}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbfly<ulong>(N1 n, Vector256<ulong> x)
; vbfly_gn1_v256x64u[95] = {50 c5 f8 77 90 c4 c1 7d 10 00 48 b8 66 66 66 66 66 66 66 66 48 89 04 24 48 8d 04 24 c4 e2 7d 59 0c 24 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 01 c5 fc 28 e2 c5 dd 73 d4 01 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov rax,6666666666666666h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 66 66 66 66 66 66 66 66}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0022h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0026h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
002ah vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002eh vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0032h vpsllq ymm3,ymm3,1                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 01}
0037h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
003bh vpsrlq ymm4,ymm4,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 01}
0040h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0044h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0048h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
004ch vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0050h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbfly<byte>(N2 n, Vector256<byte> x)
; vbfly_gn2_v256x8u[141] = {48 83 ec 18 c5 f8 77 c4 c1 7d 10 00 c7 44 24 14 3c 00 00 00 48 8d 44 24 14 c4 e2 7d 78 4c 24 14 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 02 c7 44 24 10 fc 00 00 00 48 8d 44 24 10 c4 e2 7d 78 64 24 10 c5 e5 db dc c5 fc 28 e2 c5 dd 73 d4 02 c7 44 24 0c 3f 00 00 00 48 8d 44 24 0c c4 e2 7d 78 6c 24 0c c5 dd db e5 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 18 c3}
; TermCode = CTC_RET_INTR
0000h sub rsp,18h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 18}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ch mov dword ptr [rsp+14h],3ch             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 14 3c 00 00 00}
0014h lea rax,[rsp+14h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 14}
0019h vpbroadcastb ymm1,byte ptr [rsp+14h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 4c 24 14}
0020h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0024h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0028h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ch vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0030h vpsllq ymm3,ymm3,2                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 02}
0035h mov dword ptr [rsp+10h],0fch            ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 10 fc 00 00 00}
003dh lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0042h vpbroadcastb ymm4,byte ptr [rsp+10h]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 64 24 10}
0049h vpand ymm3,ymm3,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db dc}
004dh vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0051h vpsrlq ymm4,ymm4,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 02}
0056h mov dword ptr [rsp+0ch],3fh             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 0c 3f 00 00 00}
005eh lea rax,[rsp+0ch]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 0c}
0063h vpbroadcastb ymm5,byte ptr [rsp+0ch]    ; VPBROADCASTB ymm1, xmm2/m8 || VEX.256.66.0F38.W0 78 /r || encoded[7]{c4 e2 7d 78 6c 24 0c}
006ah vpand ymm4,ymm4,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e5}
006eh vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0072h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0076h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
007ah vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
007eh vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0082h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0085h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0088h add rsp,18h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 18}
008ch ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbfly<ushort>(N2 n, Vector256<ushort> x)
; vbfly_gn2_v256x16u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 3c 3c 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 71 f3 02 c5 fc 28 e2 c5 dd 71 d4 02 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],3c3ch             ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 3c 3c 00 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastw ymm1,word ptr [rsp+4]      ; VPBROADCASTW ymm1, xmm2/m16 || VEX.256.66.0F38.W0 79 /r || encoded[7]{c4 e2 7d 79 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpsllw ymm3,ymm3,2                      ; VPSLLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /6 ib || encoded[5]{c5 e5 71 f3 02}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrlw ymm4,ymm4,2                      ; VPSRLW ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 71 /2 ib || encoded[5]{c5 dd 71 d4 02}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbfly<uint>(N2 n, Vector256<uint> x)
; vbfly_gn2_v256x32u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 3c 3c 3c 3c 48 8d 44 24 04 c4 e2 7d 58 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 72 f3 02 c5 fc 28 e2 c5 dd 72 d4 02 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],3c3c3c3ch         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 3c 3c 3c 3c}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd ymm1,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpslld ymm3,ymm3,2                      ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 e5 72 f3 02}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrld ymm4,ymm4,2                      ; VPSRLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /2 ib || encoded[5]{c5 dd 72 d4 02}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbfly<ulong>(N2 n, Vector256<ulong> x)
; vbfly_gn2_v256x64u[95] = {50 c5 f8 77 90 c4 c1 7d 10 00 48 b8 3c 3c 3c 3c 3c 3c 3c 3c 48 89 04 24 48 8d 04 24 c4 e2 7d 59 0c 24 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 02 c5 fc 28 e2 c5 dd 73 d4 02 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov rax,3c3c3c3c3c3c3c3ch               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 3c 3c 3c 3c 3c 3c 3c 3c}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0022h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0026h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
002ah vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002eh vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0032h vpsllq ymm3,ymm3,2                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 02}
0037h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
003bh vpsrlq ymm4,ymm4,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 02}
0040h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0044h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0048h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
004ch vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0050h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbfly<byte>(N4 n, Vector256<byte> x)
; vbfly_gn4_v256x8u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbfly<ushort>(N4 n, Vector256<ushort> x)
; vbfly_gn4_v256x16u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 f0 0f 00 00 48 8d 44 24 04 c4 e2 7d 79 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 71 f3 04 c5 fc 28 e2 c5 dd 71 d4 04 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
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
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbfly<uint>(N4 n, Vector256<uint> x)
; vbfly_gn4_v256x32u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 f0 0f f0 0f 48 8d 44 24 04 c4 e2 7d 58 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 72 f3 04 c5 fc 28 e2 c5 dd 72 d4 04 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],0ff00ff0h         ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 f0 0f f0 0f}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd ymm1,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpslld ymm3,ymm3,4                      ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 e5 72 f3 04}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrld ymm4,ymm4,4                      ; VPSRLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /2 ib || encoded[5]{c5 dd 72 d4 04}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbfly<ulong>(N4 n, Vector256<ulong> x)
; vbfly_gn4_v256x64u[95] = {50 c5 f8 77 90 c4 c1 7d 10 00 48 b8 f0 0f f0 0f f0 0f f0 0f 48 89 04 24 48 8d 04 24 c4 e2 7d 59 0c 24 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 04 c5 fc 28 e2 c5 dd 73 d4 04 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov rax,0ff00ff00ff00ff0h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 0f f0 0f f0 0f f0 0f}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0022h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0026h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
002ah vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002eh vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0032h vpsllq ymm3,ymm3,4                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 04}
0037h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
003bh vpsrlq ymm4,ymm4,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 04}
0040h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0044h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0048h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
004ch vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0050h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbfly<byte>(N8 n, Vector256<byte> x)
; vbfly_gn8_v256x8u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbfly<ushort>(N8 n, Vector256<ushort> x)
; vbfly_gn8_v256x16u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbfly<uint>(N8 n, Vector256<uint> x)
; vbfly_gn8_v256x32u[91] = {50 c5 f8 77 90 c4 c1 7d 10 00 c7 44 24 04 00 ff ff 00 48 8d 44 24 04 c4 e2 7d 58 4c 24 04 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 72 f3 08 c5 fc 28 e2 c5 dd 72 d4 08 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov dword ptr [rsp+4],0ffff00h          ; MOV r/m32, imm32 || o32 C7 /0 id || encoded[8]{c7 44 24 04 00 ff ff 00}
0012h lea rax,[rsp+4]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 04}
0017h vpbroadcastd ymm1,dword ptr [rsp+4]     ; VPBROADCASTD ymm1, xmm2/m32 || VEX.256.66.0F38.W0 58 /r || encoded[7]{c4 e2 7d 58 4c 24 04}
001eh vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0022h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
0026h vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002ah vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
002eh vpslld ymm3,ymm3,8                      ; VPSLLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /6 ib || encoded[5]{c5 e5 72 f3 08}
0033h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
0037h vpsrld ymm4,ymm4,8                      ; VPSRLD ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 72 /2 ib || encoded[5]{c5 dd 72 d4 08}
003ch vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0040h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0044h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
0048h vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
004ch vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0050h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0053h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0056h add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005ah ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbfly<ulong>(N8 n, Vector256<ulong> x)
; vbfly_gn8_v256x64u[95] = {50 c5 f8 77 90 c4 c1 7d 10 00 48 b8 00 ff ff 00 00 ff ff 00 48 89 04 24 48 8d 04 24 c4 e2 7d 59 0c 24 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 08 c5 fc 28 e2 c5 dd 73 d4 08 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov rax,0ffff0000ffff00h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 ff ff 00 00 ff ff 00}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0022h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0026h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
002ah vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002eh vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0032h vpsllq ymm3,ymm3,8                      ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 08}
0037h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
003bh vpsrlq ymm4,ymm4,8                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 08}
0040h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0044h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0048h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
004ch vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0050h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<byte> vbfly<byte>(N16 n, Vector256<byte> x)
; vbfly_gn16_v256x8u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ushort> vbfly<ushort>(N16 n, Vector256<ushort> x)
; vbfly_gn16_v256x16u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<uint> vbfly<uint>(N16 n, Vector256<uint> x)
; vbfly_gn16_v256x32u[21] = {c5 f8 77 66 90 c4 c1 7d 10 00 c5 fd 11 01 48 8b c1 c5 f8 77 c3}
; TermCode = CTC_RET_INTR
0000h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0003h xchg ax,ax                              ; NOP || o16 90 || encoded[2]{66 90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
000eh mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0011h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0014h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; Vector256<ulong> vbfly<ulong>(N16 n, Vector256<ulong> x)
; vbfly_gn16_v256x64u[95] = {50 c5 f8 77 90 c4 c1 7d 10 00 48 b8 00 00 ff ff ff ff 00 00 48 89 04 24 48 8d 04 24 c4 e2 7d 59 0c 24 c5 fc 28 d0 c5 fc 28 d9 c5 ed db d3 c5 fc 28 da c5 e5 73 f3 10 c5 fc 28 e2 c5 dd 73 d4 10 c5 e5 ef dc c5 ed ef d3 c5 ed db c9 c5 f5 ef c0 c5 fd 11 01 48 8b c1 c5 f8 77 48 83 c4 08 c3}
; TermCode = CTC_RET_INTR
0000h push rax                                ; PUSH r64 || 50+ro || encoded[1]{50}
0001h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0004h nop                                     ; NOP || o32 90 || encoded[1]{90}
0005h vmovupd ymm0,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 00}
000ah mov rax,0ffffffff0000h                  ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 00 ff ff ff ff 00 00}
0014h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0018h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
001ch vpbroadcastq ymm1,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 0c 24}
0022h vmovaps ymm2,ymm0                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d0}
0026h vmovaps ymm3,ymm1                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 d9}
002ah vpand ymm2,ymm2,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d3}
002eh vmovaps ymm3,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 da}
0032h vpsllq ymm3,ymm3,10h                    ; VPSLLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /6 ib || encoded[5]{c5 e5 73 f3 10}
0037h vmovaps ymm4,ymm2                       ; VMOVAPS ymm1, ymm2/m256 || VEX.256.0F.WIG 28 /r || encoded[4]{c5 fc 28 e2}
003bh vpsrlq ymm4,ymm4,10h                    ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 10}
0040h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0044h vpxor ymm2,ymm2,ymm3                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 ed ef d3}
0048h vpand ymm1,ymm2,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db c9}
004ch vpxor ymm0,ymm1,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 f5 ef c0}
0050h vmovupd [rcx],ymm0                      ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[4]{c5 fd 11 01}
0054h mov rax,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c1}
0057h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
005ah add rsp,8                               ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 08}
005eh ret                                     ; RET || C3 || encoded[1]{c3}
