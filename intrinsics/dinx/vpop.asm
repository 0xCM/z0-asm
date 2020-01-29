------------------------------------------------------------------------------------------------------------------------
; uint vpop(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
; vpop_128x64u_128x64u_128x64u[318] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 18 48 89 44 24 20 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 44 24 10 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 4c 24 08 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 04 24 48 8d 04 24 c4 e2 79 59 14 24 c5 f9 10 19 c5 f9 10 22 c5 e1 ef dc c4 c1 79 10 20 c5 e1 db dc c5 f9 10 21 c5 f9 10 2a c5 d9 db e5 c5 e1 eb dc c5 f9 10 21 c5 f9 10 2a c5 d9 ef e5 c4 c1 79 10 28 c5 d9 ef e5 c5 d1 73 d3 01 c5 d1 db e8 c5 e1 fb dd c5 d1 73 d4 01 c5 d1 db c0 c5 d9 fb e0 c5 e1 db c1 c5 e1 73 d3 02 c5 e1 db d9 c5 f9 d4 db c5 d9 db c1 c5 d9 73 d4 02 c5 d9 db c9 c5 f9 d4 e1 c5 f9 73 d3 04 c5 e1 d4 d8 c5 e1 db da c5 f9 73 d4 04 c5 d9 d4 e0 c5 d9 db e2 c5 e1 d4 c3 c5 f9 d4 e4 33 c0 48 89 44 24 18 48 89 44 24 20 48 8d 44 24 18 c5 fa 7f 20 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 18 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 20 48 c1 ea 38 48 03 c2 48 83 c4 28 c3}
; TermCode = RET_INTR
0000h sub rsp,28h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 28}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
000eh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0013h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
001dh mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0022h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0027h vpbroadcastq xmm0,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 44 24 10}
002eh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0038h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
003dh lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0042h vpbroadcastq xmm1,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 4c 24 08}
0049h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0053h mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0057h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
005bh vpbroadcastq xmm2,qword ptr [rsp]       ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[6]{c4 e2 79 59 14 24}
0061h vmovupd xmm3,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 19}
0065h vmovupd xmm4,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 22}
0069h vpxor xmm3,xmm3,xmm4                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 e1 ef dc}
006dh vmovupd xmm4,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 20}
0072h vpand xmm3,xmm3,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db dc}
0076h vmovupd xmm4,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 21}
007ah vmovupd xmm5,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 2a}
007eh vpand xmm4,xmm4,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db e5}
0082h vpor xmm3,xmm3,xmm4                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 e1 eb dc}
0086h vmovupd xmm4,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 21}
008ah vmovupd xmm5,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 2a}
008eh vpxor xmm4,xmm4,xmm5                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 d9 ef e5}
0092h vmovupd xmm5,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 28}
0097h vpxor xmm4,xmm4,xmm5                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 d9 ef e5}
009bh vpsrlq xmm5,xmm3,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d1 73 d3 01}
00a0h vpand xmm5,xmm5,xmm0                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d1 db e8}
00a4h vpsubq xmm3,xmm3,xmm5                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 e1 fb dd}
00a8h vpsrlq xmm5,xmm4,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d1 73 d4 01}
00adh vpand xmm0,xmm5,xmm0                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d1 db c0}
00b1h vpsubq xmm4,xmm4,xmm0                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 d9 fb e0}
00b5h vpand xmm0,xmm3,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db c1}
00b9h vpsrlq xmm3,xmm3,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e1 73 d3 02}
00beh vpand xmm3,xmm3,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db d9}
00c2h vpaddq xmm3,xmm0,xmm3                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 db}
00c6h vpand xmm0,xmm4,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db c1}
00cah vpsrlq xmm4,xmm4,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 d9 73 d4 02}
00cfh vpand xmm1,xmm4,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db c9}
00d3h vpaddq xmm4,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 e1}
00d7h vpsrlq xmm0,xmm3,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d3 04}
00dch vpaddq xmm3,xmm3,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 e1 d4 d8}
00e0h vpand xmm3,xmm3,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e1 db da}
00e4h vpsrlq xmm0,xmm4,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d4 04}
00e9h vpaddq xmm4,xmm4,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 d9 d4 e0}
00edh vpand xmm4,xmm4,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 d9 db e2}
00f1h vpaddq xmm0,xmm3,xmm3                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 e1 d4 c3}
00f5h vpaddq xmm4,xmm0,xmm4                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 e4}
00f9h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00fbh mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0100h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0105h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
010ah vmovdqu xmmword ptr [rax],xmm4          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 20}
010eh mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0118h imul rax,[rsp+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 18}
011eh shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
0122h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
012ch imul rdx,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 20}
0132h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0136h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0139h add rsp,28h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 28}
013dh ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
; vpop_256x64u_256x64u_256x64u[383] = {48 83 ec 38 c5 f8 77 33 c0 48 89 44 24 18 48 89 44 24 20 48 89 44 24 28 48 89 44 24 30 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 44 24 10 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 4c 24 08 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 04 24 48 8d 04 24 c4 e2 7d 59 14 24 c5 fd 10 19 c5 fd 10 22 c5 e5 ef dc c4 c1 7d 10 20 c5 e5 db dc c5 fd 10 21 c5 fd 10 2a c5 dd db e5 c5 e5 eb dc c5 fd 10 21 c5 fd 10 2a c5 dd ef e5 c4 c1 7d 10 28 c5 dd ef e5 c5 d5 73 d3 01 c5 d5 db e8 c5 e5 fb dd c5 d5 73 d4 01 c5 d5 db c0 c5 dd fb e0 c5 e5 db c1 c5 e5 73 d3 02 c5 e5 db d9 c5 fd d4 db c5 dd db c1 c5 dd 73 d4 02 c5 dd db c9 c5 fd d4 e1 c5 fd 73 d3 04 c5 e5 d4 d8 c5 e5 db da c5 fd 73 d4 04 c5 dd d4 e0 c5 dd db e2 c5 e5 d4 c3 c5 fd d4 e4 48 8d 44 24 18 c5 f8 57 c0 c5 fa 7f 00 c5 fa 7f 40 10 48 8d 44 24 18 48 8b d0 c5 fe 7f 22 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 77 48 83 c4 38 c3}
; TermCode = RET_INTR
0000h sub rsp,38h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 38}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0009h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
000eh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0013h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
0018h mov [rsp+30h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 30}
001dh mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0027h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
002ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0031h vpbroadcastq ymm0,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 44 24 10}
0038h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0042h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0047h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
004ch vpbroadcastq ymm1,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 4c 24 08}
0053h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
005dh mov [rsp],rax                           ; MOV r/m64, r64 || REX.W 89 /r || encoded[4]{48 89 04 24}
0061h lea rax,[rsp]                           ; LEA r64, m || REX.W 8D /r || encoded[4]{48 8d 04 24}
0065h vpbroadcastq ymm2,qword ptr [rsp]       ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[6]{c4 e2 7d 59 14 24}
006bh vmovupd ymm3,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 19}
006fh vmovupd ymm4,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 22}
0073h vpxor ymm3,ymm3,ymm4                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 e5 ef dc}
0077h vmovupd ymm4,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 20}
007ch vpand ymm3,ymm3,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db dc}
0080h vmovupd ymm4,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 21}
0084h vmovupd ymm5,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 2a}
0088h vpand ymm4,ymm4,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e5}
008ch vpor ymm3,ymm3,ymm4                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 e5 eb dc}
0090h vmovupd ymm4,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 21}
0094h vmovupd ymm5,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 2a}
0098h vpxor ymm4,ymm4,ymm5                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 dd ef e5}
009ch vmovupd ymm5,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 28}
00a1h vpxor ymm4,ymm4,ymm5                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 dd ef e5}
00a5h vpsrlq ymm5,ymm3,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 d5 73 d3 01}
00aah vpand ymm5,ymm5,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 d5 db e8}
00aeh vpsubq ymm3,ymm3,ymm5                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 e5 fb dd}
00b2h vpsrlq ymm5,ymm4,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 d5 73 d4 01}
00b7h vpand ymm0,ymm5,ymm0                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 d5 db c0}
00bbh vpsubq ymm4,ymm4,ymm0                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 dd fb e0}
00bfh vpand ymm0,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db c1}
00c3h vpsrlq ymm3,ymm3,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 e5 73 d3 02}
00c8h vpand ymm3,ymm3,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db d9}
00cch vpaddq ymm3,ymm0,ymm3                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 db}
00d0h vpand ymm0,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db c1}
00d4h vpsrlq ymm4,ymm4,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 dd 73 d4 02}
00d9h vpand ymm1,ymm4,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db c9}
00ddh vpaddq ymm4,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 e1}
00e1h vpsrlq ymm0,ymm3,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d3 04}
00e6h vpaddq ymm3,ymm3,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 e5 d4 d8}
00eah vpand ymm3,ymm3,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 e5 db da}
00eeh vpsrlq ymm0,ymm4,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d4 04}
00f3h vpaddq ymm4,ymm4,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 dd d4 e0}
00f7h vpand ymm4,ymm4,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 dd db e2}
00fbh vpaddq ymm0,ymm3,ymm3                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 e5 d4 c3}
00ffh vpaddq ymm4,ymm0,ymm4                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 e4}
0103h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0108h vxorps xmm0,xmm0,xmm0                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f8 57 c0}
010ch vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0110h vmovdqu xmmword ptr [rax+10h],xmm0      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 40 10}
0115h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
011ah mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
011dh vmovdqu ymmword ptr [rdx],ymm4          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 22}
0121h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
012bh imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
012fh shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0133h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
013dh imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0142h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0146h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0149h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0153h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
0158h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
015ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
015fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0169h imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
016eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0172h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0175h mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
0177h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ah add rsp,38h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 38}
017eh ret                                     ; RET || C3 || encoded[1]{c3}
