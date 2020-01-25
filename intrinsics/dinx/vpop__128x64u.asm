; uint vpop(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
; vpop__128x64u[7ff7c71db1f0h, 7ff7c71db32eh][318] = {48 83 ec 28 c5 f8 77 33 c0 48 89 44 24 18 48 89 44 24 20 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 44 24 10 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 4c 24 08 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 04 24 48 8d 04 24 c4 e2 79 59 14 24 c5 f9 10 19 c5 f9 10 22 c5 e1 ef dc c4 c1 79 10 20 c5 e1 db dc c5 f9 10 21 c5 f9 10 2a c5 d9 db e5 c5 e1 eb dc c5 f9 10 21 c5 f9 10 2a c5 d9 ef e5 c4 c1 79 10 28 c5 d9 ef e5 c5 d1 73 d3 01 c5 d1 db e8 c5 e1 fb dd c5 d1 73 d4 01 c5 d1 db c0 c5 d9 fb e0 c5 e1 db c1 c5 e1 73 d3 02 c5 e1 db d9 c5 f9 d4 db c5 d9 db c1 c5 d9 73 d4 02 c5 d9 db c9 c5 f9 d4 e1 c5 f9 73 d3 04 c5 e1 d4 d8 c5 e1 db da c5 f9 73 d4 04 c5 d9 d4 e0 c5 d9 db e2 c5 e1 d4 c3 c5 f9 d4 e4 33 c0 48 89 44 24 18 48 89 44 24 20 48 8d 44 24 18 c5 fa 7f 20 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 18 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 20 48 c1 ea 38 48 03 c2 48 83 c4 28 c3}
; Capture completion code, RET_INTR
; 2020-01-25 02:11:03:618
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
