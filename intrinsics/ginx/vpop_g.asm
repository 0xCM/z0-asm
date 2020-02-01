------------------------------------------------------------------------------------------------------------------------
; uint vpop<byte>(Vector128<byte> x, Vector128<byte> y, Vector128<byte> z)
; vpop_gv128x8u_v128x8u_v128x8u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x8i_v128x8i_v128x8i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x16u_v128x16u_v128x16u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x16i_v128x16i_v128x16i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x32u_v128x32u_v128x32u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x32i_v128x32i_v128x32i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x64u_v128x64u_v128x64u[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; vpop_gv128x64i_v128x64i_v128x64i[324] = {48 83 ec 58 c5 f8 77 c5 f8 29 74 24 40 c5 f8 29 7c 24 30 c5 f9 10 01 c5 f9 10 0a c4 c1 79 10 10 33 c0 48 89 44 24 20 48 89 44 24 28 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 79 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 79 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 79 59 6c 24 08 c5 f9 ef f1 c5 c9 db f2 c5 f9 db f9 c5 c9 eb f7 c5 f9 ef c1 c5 f9 ef c2 c5 f1 73 d6 01 c5 f1 db cb c5 c9 fb f1 c5 f1 73 d0 01 c5 f1 db cb c5 f9 fb c1 c5 c9 db cc c5 e9 73 d6 02 c5 e9 db d4 c5 f1 d4 f2 c5 f9 db cc c5 f9 73 d0 02 c5 f9 db c4 c5 f1 d4 c0 c5 f1 73 d6 04 c5 c9 d4 c9 c5 f1 db f5 c5 f1 73 d0 04 c5 f9 d4 c1 c5 f9 db c5 c5 c9 d4 ce c5 f1 d4 c0 33 c0 48 89 44 24 20 48 89 44 24 28 48 8d 44 24 20 c5 fa 7f 00 48 b8 01 01 01 01 01 01 01 01 48 0f af 44 24 20 48 c1 e8 38 48 ba 01 01 01 01 01 01 01 01 48 0f af 54 24 28 48 c1 ea 38 48 03 c2 c5 f8 28 74 24 40 c5 f8 28 7c 24 30 48 83 c4 58 c3}
; TermCode = RET_INTR
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
; uint vpop<byte>(Vector256<byte> x, Vector256<byte> y, Vector256<byte> z)
; vpop_gv256x8u_v256x8u_v256x8u[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<sbyte>(Vector256<sbyte> x, Vector256<sbyte> y, Vector256<sbyte> z)
; vpop_gv256x8i_v256x8i_v256x8i[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<ushort>(Vector256<ushort> x, Vector256<ushort> y, Vector256<ushort> z)
; vpop_gv256x16u_v256x16u_v256x16u[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<short>(Vector256<short> x, Vector256<short> y, Vector256<short> z)
; vpop_gv256x16i_v256x16i_v256x16i[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<uint>(Vector256<uint> x, Vector256<uint> y, Vector256<uint> z)
; vpop_gv256x32u_v256x32u_v256x32u[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<int>(Vector256<int> x, Vector256<int> y, Vector256<int> z)
; vpop_gv256x32i_v256x32i_v256x32i[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<ulong>(Vector256<ulong> x, Vector256<ulong> y, Vector256<ulong> z)
; vpop_gv256x64u_v256x64u_v256x64u[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
------------------------------------------------------------------------------------------------------------------------
; uint vpop<long>(Vector256<long> x, Vector256<long> y, Vector256<long> z)
; vpop_gv256x64i_v256x64i_v256x64i[385] = {48 83 ec 68 c5 f8 77 c5 f8 29 74 24 50 c5 f8 29 7c 24 40 c5 fd 10 01 c5 fd 10 0a c4 c1 7d 10 10 48 8d 44 24 20 c5 e0 57 db c5 fa 7f 18 c5 fa 7f 58 10 48 b8 55 55 55 55 55 55 55 55 48 89 44 24 18 48 8d 44 24 18 c4 e2 7d 59 5c 24 18 48 b8 33 33 33 33 33 33 33 33 48 89 44 24 10 48 8d 44 24 10 c4 e2 7d 59 64 24 10 48 b8 0f 0f 0f 0f 0f 0f 0f 0f 48 89 44 24 08 48 8d 44 24 08 c4 e2 7d 59 6c 24 08 c5 fd ef f1 c5 cd db f2 c5 fd db f9 c5 cd eb f7 c5 fd ef c1 c5 fd ef c2 c5 f5 73 d6 01 c5 f5 db cb c5 cd fb f1 c5 f5 73 d0 01 c5 f5 db cb c5 fd fb c1 c5 cd db cc c5 ed 73 d6 02 c5 ed db d4 c5 f5 d4 f2 c5 fd db cc c5 fd 73 d0 02 c5 fd db c4 c5 f5 d4 c0 c5 f5 73 d6 04 c5 cd d4 c9 c5 f5 db f5 c5 f5 73 d0 04 c5 fd d4 c1 c5 fd db c5 c5 cd d4 ce c5 f5 d4 c0 48 8d 44 24 20 c5 f0 57 c9 c5 fa 7f 08 c5 fa 7f 48 10 48 8d 44 24 20 48 8b d0 c5 fe 7f 02 48 ba 01 01 01 01 01 01 01 01 48 0f af 10 48 c1 ea 38 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 08 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 10 48 c1 e9 38 48 03 d1 48 b9 01 01 01 01 01 01 01 01 48 0f af 48 18 48 c1 e9 38 48 03 d1 8b c2 c5 f8 28 74 24 50 c5 f8 28 7c 24 40 c5 f8 77 48 83 c4 68 c3}
; TermCode = RET_INTR
0000h sub rsp,68h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 68}
0004h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0007h vmovaps [rsp+50h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 50}
000dh vmovaps [rsp+40h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 40}
0013h vmovupd ymm0,[rcx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 01}
0017h vmovupd ymm1,[rdx]                      ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[4]{c5 fd 10 0a}
001bh vmovupd ymm2,[r8]                       ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c4 c1 7d 10 10}
0020h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0025h vxorps xmm3,xmm3,xmm3                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 e0 57 db}
0029h vmovdqu xmmword ptr [rax],xmm3          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 18}
002dh vmovdqu xmmword ptr [rax+10h],xmm3      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 58 10}
0032h mov rax,5555555555555555h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 55 55 55 55 55 55 55 55}
003ch mov [rsp+18h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 18}
0041h lea rax,[rsp+18h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 18}
0046h vpbroadcastq ymm3,qword ptr [rsp+18h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 5c 24 18}
004dh mov rax,3333333333333333h               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 33 33 33 33 33 33 33 33}
0057h mov [rsp+10h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 10}
005ch lea rax,[rsp+10h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 10}
0061h vpbroadcastq ymm4,qword ptr [rsp+10h]   ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 64 24 10}
0068h mov rax,0f0f0f0f0f0f0f0fh               ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 0f 0f 0f 0f 0f 0f 0f 0f}
0072h mov [rsp+8],rax                         ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 08}
0077h lea rax,[rsp+8]                         ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 08}
007ch vpbroadcastq ymm5,qword ptr [rsp+8]     ; VPBROADCASTQ ymm1, xmm2/m64 || VEX.256.66.0F38.W0 59 /r || encoded[7]{c4 e2 7d 59 6c 24 08}
0083h vpxor ymm6,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef f1}
0087h vpand ymm6,ymm6,ymm2                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db f2}
008bh vpand ymm7,ymm0,ymm1                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db f9}
008fh vpor ymm6,ymm6,ymm7                     ; VPOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EB /r || encoded[4]{c5 cd eb f7}
0093h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0097h vpxor ymm0,ymm0,ymm2                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c2}
009bh vpsrlq ymm1,ymm6,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 01}
00a0h vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00a4h vpsubq ymm6,ymm6,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 cd fb f1}
00a8h vpsrlq ymm1,ymm0,1                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 01}
00adh vpand ymm1,ymm1,ymm3                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db cb}
00b1h vpsubq ymm0,ymm0,ymm1                   ; VPSUBQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG FB /r || encoded[4]{c5 fd fb c1}
00b5h vpand ymm1,ymm6,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 cd db cc}
00b9h vpsrlq ymm2,ymm6,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 ed 73 d6 02}
00beh vpand ymm2,ymm2,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 ed db d4}
00c2h vpaddq ymm6,ymm1,ymm2                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 f2}
00c6h vpand ymm1,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db cc}
00cah vpsrlq ymm0,ymm0,2                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 fd 73 d0 02}
00cfh vpand ymm0,ymm0,ymm4                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c4}
00d3h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00d7h vpsrlq ymm1,ymm6,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d6 04}
00dch vpaddq ymm1,ymm6,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 c9}
00e0h vpand ymm6,ymm1,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 f5 db f5}
00e4h vpsrlq ymm1,ymm0,4                      ; VPSRLQ ymm1, ymm2, imm8 || VEX.256.66.0F.WIG 73 /2 ib || encoded[5]{c5 f5 73 d0 04}
00e9h vpaddq ymm0,ymm0,ymm1                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 fd d4 c1}
00edh vpand ymm0,ymm0,ymm5                    ; VPAND ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG DB /r || encoded[4]{c5 fd db c5}
00f1h vpaddq ymm1,ymm6,ymm6                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 cd d4 ce}
00f5h vpaddq ymm0,ymm1,ymm0                   ; VPADDQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG D4 /r || encoded[4]{c5 f5 d4 c0}
00f9h lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
00feh vxorps xmm1,xmm1,xmm1                   ; VXORPS xmm1, xmm2, xmm3/m128 || VEX.128.0F.WIG 57 /r || encoded[4]{c5 f0 57 c9}
0102h vmovdqu xmmword ptr [rax],xmm1          ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[4]{c5 fa 7f 08}
0106h vmovdqu xmmword ptr [rax+10h],xmm1      ; VMOVDQU xmm2/m128, xmm1 || VEX.128.F3.0F.WIG 7F /r || encoded[5]{c5 fa 7f 48 10}
010bh lea rax,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 20}
0110h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0113h vmovdqu ymmword ptr [rdx],ymm0          ; VMOVDQU ymm2/m256, ymm1 || VEX.256.F3.0F.WIG 7F /r || encoded[4]{c5 fe 7f 02}
0117h mov rdx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 ba 01 01 01 01 01 01 01 01}
0121h imul rdx,[rax]                          ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[4]{48 0f af 10}
0125h shr rdx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 ea 38}
0129h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0133h imul rcx,[rax+8]                        ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 08}
0138h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
013ch add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
013fh mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
0149h imul rcx,[rax+10h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 10}
014eh shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0152h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
0155h mov rcx,101010101010101h                ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 01 01 01 01 01 01 01 01}
015fh imul rcx,[rax+18h]                      ; IMUL r64, r/m64 || REX.W 0F AF /r || encoded[5]{48 0f af 48 18}
0164h shr rcx,38h                             ; SHR r/m64, imm8 || REX.W C1 /5 ib || encoded[4]{48 c1 e9 38}
0168h add rdx,rcx                             ; ADD r64, r/m64 || REX.W 03 /r || encoded[3]{48 03 d1}
016bh mov eax,edx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b c2}
016dh vmovaps xmm6,[rsp+50h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 50}
0173h vmovaps xmm7,[rsp+40h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 40}
0179h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
017ch add rsp,68h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 68}
0180h ret                                     ; RET || C3 || encoded[1]{c3}
