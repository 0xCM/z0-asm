------------------------------------------------------------------------------------------------------------------------
; uint vpop<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
; vpop__g128x8u_128x8u_128x8u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<sbyte>(Vector128<sbyte> x, Vector128<sbyte> y, Vector128<sbyte> z)
; vpop__g128x8i_128x8i_128x8i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<ushort>(Vector128<ushort> x, Vector128<ushort> y, Vector128<ushort> z)
; vpop__g128x16u_128x16u_128x16u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<short>(Vector128<short> x, Vector128<short> y, Vector128<short> z)
; vpop__g128x16i_128x16i_128x16i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<uint>(Vector128<uint> x, Vector128<uint> y, Vector128<uint> z)
; vpop__g128x32u_128x32u_128x32u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<int>(Vector128<int> x, Vector128<int> y, Vector128<int> z)
; vpop__g128x32i_128x32i_128x32i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<ulong>(Vector128<ulong> x, Vector128<ulong> y, Vector128<ulong> z)
; vpop__g128x64u_128x64u_128x64u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<long>(Vector128<long> x, Vector128<long> y, Vector128<long> z)
; vpop__g128x64i_128x64i_128x64i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; Capture completion code = RET_INTRx2
0000h sub rsp,58h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 58}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+40h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 40}
000dh vmovaps [rsp+30h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 30}
0013h vmovupd xmm0,[rcx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 01}
0017h vmovupd xmm1,[rdx]                      ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[4]{c5 f9 10 0a}
001bh vmovupd xmm2,[r8]                       ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c4 c1 79 10 10}
0020h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
0022h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0027h mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
002ch mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
0036h mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
003bh lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0040h vpbroadcastq xmm3,qword ptr [rsp+18h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 5c 24 18}
0047h mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0051h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
0056h lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
005bh vpbroadcastq xmm4,qword ptr [rsp+10h]   ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 64 24 10}
0062h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
006ch mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0071h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
0076h vpbroadcastq xmm5,qword ptr [rsp+8]     ; VPBROADCASTQ xmm1, xmm2/m64 || VEX.128.66.0F38.W0 59 /r || encoded[7]{c4 e2 79 59 6c 24 08}
007dh vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
0081h vpand xmm6,xmm6,xmm2                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db f2}
0085h vpand xmm7,xmm0,xmm1                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db f9}
0089h vpor xmm6,xmm6,xmm7                     ; VPOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EB /r || encoded[4]{c5 c9 eb f7}
008dh vpxor xmm0,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c1}
0091h vpxor xmm0,xmm0,xmm2                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef c2}
0095h vpsrlq xmm1,xmm6,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 01}
009ah vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
009eh vpsubq xmm6,xmm6,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 c9 fb f1}
00a2h vpsrlq xmm1,xmm0,1                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 01}
00a7h vpand xmm1,xmm1,xmm3                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db cb}
00abh vpsubq xmm0,xmm0,xmm1                   ; VPSUBQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG FB /r || encoded[4]{c5 f9 fb c1}
00afh vpand xmm1,xmm6,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 c9 db cc}
00b3h vpsrlq xmm2,xmm6,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 e9 73 d6 02}
00b8h vpand xmm2,xmm2,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 e9 db d4}
00bch vpaddq xmm6,xmm1,xmm2                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 f2}
00c0h vpand xmm1,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db cc}
00c4h vpsrlq xmm0,xmm0,2                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f9 73 d0 02}
00c9h vpand xmm0,xmm0,xmm4                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c4}
00cdh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00d1h vpsrlq xmm1,xmm6,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d6 04}
00d6h vpaddq xmm1,xmm6,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 c9}
00dah vpand xmm6,xmm1,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f1 db f5}
00deh vpsrlq xmm1,xmm0,4                      ; VPSRLQ xmm1, xmm2, imm8 || VEX.128.66.0F.WIG 73 /2 ib || encoded[5]{c5 f1 73 d0 04}
00e3h vpaddq xmm0,xmm0,xmm1                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f9 d4 c1}
00e7h vpand xmm0,xmm0,xmm5                    ; VPAND xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG DB /r || encoded[4]{c5 f9 db c5}
00ebh vpaddq xmm1,xmm6,xmm6                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 c9 d4 ce}
00efh vpaddq xmm0,xmm1,xmm0                   ; VPADDQ xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG D4 /r || encoded[4]{c5 f1 d4 c0}
00f3h xor eax,eax                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 c0}
00f5h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
00fah mov [rsp+28h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 28}
00ffh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0104h vmovdqu xmmword ptr [rax],xmm0          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 00}
0108h mov rax,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 01 01 01 01 01 01 01 01}
0112h imul rax,[rsp+20h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 44 24 20}
0118h shr rax,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e8 38}
011ch mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0126h imul rdx,[rsp+28h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[6]{48 0f af 54 24 28}
012ch shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0130h add rax,rdx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 c2}
0133h vmovaps xmm6,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 40}
0139h vmovaps xmm7,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 30}
013fh add rsp,58h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 58}
0143h ret                                     ; RET || C3 || encoded[1]{c3}
