------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_vec256_expr_g[8u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 28 64 cd c8 f7 7f 00 00 e8 83 5f b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 b8 ea ce c8 f7 7f 00 00 e8 68 5f b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 a0 eb ce c8 f7 7f 00 00 e8 4d 5f b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 50 ec ce c8 f7 7f 00 00 e8 32 5f b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 78 65 cd c8 f7 7f 00 00 e8 17 5f b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 68 18 63 c7 f7 7f 00 00 39 09 ff 15 8e 1a f4 fe 48 8b c8 e8 56 89 ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6e 1a f4 fe 48 8b c8 e8 2e 89 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f8 62 cd c8 f7 7f 00 00 e8 7a 6e b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 50 18 63 c7 f7 7f 00 00 39 09 ff 15 f0 19 f4 fe 48 b9 f8 62 cd c8 f7 7f 00 00 e8 41 6e b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 58 18 63 c7 f7 7f 00 00 39 09 ff 15 c7 19 f4 fe 48 8b c8 e8 9f 88 ff ff eb 27 48 8b c8 49 bb 60 18 63 c7 f7 7f 00 00 39 09 ff 15 b0 19 f4 fe 48 8b c8 e8 80 88 ff ff eb 08 48 8b c8 e8 96 fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ec 68 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 ba 6d b7 5e 48 8b f8 48 8b ce 33 d2 e8 0d d1 7f 4d 48 8b d0 48 8b cf e8 a2 92 08 ff 48 8b cf e8 ea b9 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd6428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 64 cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 5f b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8ceeab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 ea ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 5f b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8ceeba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 eb ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 5f b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8ceec50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ec ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 5f b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd6578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 65 cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 5f b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10be572h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e 1a f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 89 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10be592h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e 1a f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 89 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 6e b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7631850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10be610h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 19 f4 fe}
0140h mov rcx,7ff7c8cd62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 6e b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7631858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10be639h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 19 f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 88 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7631860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10be650h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 19 f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e8738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 88 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86ef958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 fa ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 68 ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 6d b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d d1 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 92 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea b9 ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_vec256_expr_g[8i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 f8 68 cd c8 f7 7f 00 00 e8 53 5d b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 70 f1 ce c8 f7 7f 00 00 e8 38 5d b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 58 f2 ce c8 f7 7f 00 00 e8 1d 5d b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 08 f3 ce c8 f7 7f 00 00 e8 02 5d b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 48 6a cd c8 f7 7f 00 00 e8 e7 5c b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 90 18 63 c7 f7 7f 00 00 39 09 ff 15 86 18 f4 fe 48 8b c8 e8 56 87 ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 66 18 f4 fe 48 8b c8 e8 2e 87 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 c8 67 cd c8 f7 7f 00 00 e8 4a 6c b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 78 18 63 c7 f7 7f 00 00 39 09 ff 15 e8 17 f4 fe 48 b9 c8 67 cd c8 f7 7f 00 00 e8 11 6c b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 80 18 63 c7 f7 7f 00 00 39 09 ff 15 bf 17 f4 fe 48 8b c8 e8 9f 86 ff ff eb 27 48 8b c8 49 bb 88 18 63 c7 f7 7f 00 00 39 09 ff 15 a8 17 f4 fe 48 8b c8 e8 80 86 ff ff eb 08 48 8b c8 e8 06 f9 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 bc 66 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 8a 6b b7 5e 48 8b f8 48 8b ce 33 d2 e8 dd ce 7f 4d 48 8b d0 48 8b cf e8 72 90 08 ff 48 8b cf e8 ba b7 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd68f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 68 cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 5d b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cef170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f1 ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 5d b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cef258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f2 ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 5d b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cef308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f3 ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 5d b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd6a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6a cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 5c b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10be77ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 18 f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 87 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10be79ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 18 f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 87 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 6c b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7631878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10be818h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 17 f4 fe}
0140h mov rcx,7ff7c8cd67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 6c b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7631880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10be841h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf 17 f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 86 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7631888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10be858h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 17 f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e8768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 86 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86ef9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f9 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 66 ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 6b b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ce 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 90 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b7 ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_vec256_expr_g[16u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 68 6d cd c8 f7 7f 00 00 e8 23 5b b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 28 f4 ce c8 f7 7f 00 00 e8 08 5b b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 10 f5 ce c8 f7 7f 00 00 e8 ed 5a b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 c0 f5 ce c8 f7 7f 00 00 e8 d2 5a b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 b8 6e cd c8 f7 7f 00 00 e8 b7 5a b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb b8 18 63 c7 f7 7f 00 00 39 09 ff 15 7e 16 f4 fe 48 8b c8 e8 46 85 ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5e 16 f4 fe 48 8b c8 e8 1e 85 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 38 6c cd c8 f7 7f 00 00 e8 1a 6a b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a0 18 63 c7 f7 7f 00 00 39 09 ff 15 e0 15 f4 fe 48 b9 38 6c cd c8 f7 7f 00 00 e8 e1 69 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb a8 18 63 c7 f7 7f 00 00 39 09 ff 15 b7 15 f4 fe 48 8b c8 e8 8f 84 ff ff eb 27 48 8b c8 49 bb b0 18 63 c7 f7 7f 00 00 39 09 ff 15 a0 15 f4 fe 48 8b c8 e8 70 84 ff ff eb 08 48 8b c8 e8 2e f7 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 8c 64 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 5a 69 b7 5e 48 8b f8 48 8b ce 33 d2 e8 ad cc 7f 4d 48 8b d0 48 8b cf e8 42 8e 08 ff 48 8b cf e8 8a b5 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd6d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6d cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 5b b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cef428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f4 ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 5b b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cef510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f5 ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 5a b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cef5c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f5 ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 5a b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd6eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6e cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 5a b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76318b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10be982h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e 16 f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 85 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c76318c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10be9a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e 16 f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 85 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6a b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c76318a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10bea20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 15 f4 fe}
0140h mov rcx,7ff7c8cd6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 69 b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c76318a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10bea49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 15 f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 84 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c76318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10bea60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 15 f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e8788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 84 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86efa50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f7 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 64 ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 69 b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cc 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 8e 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a b5 ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_vec256_expr_g[16i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d8 71 cd c8 f7 7f 00 00 e8 f3 58 b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 e0 f6 ce c8 f7 7f 00 00 e8 d8 58 b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 c8 f7 ce c8 f7 7f 00 00 e8 bd 58 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 78 f8 ce c8 f7 7f 00 00 e8 a2 58 b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 28 73 cd c8 f7 7f 00 00 e8 87 58 b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb e0 18 63 c7 f7 7f 00 00 39 09 ff 15 76 14 f4 fe 48 8b c8 e8 36 83 ff ff c5 fd 10 70 08 48 8b cf 49 bb e8 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 56 14 f4 fe 48 8b c8 e8 0e 83 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a8 70 cd c8 f7 7f 00 00 e8 ea 67 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb c8 18 63 c7 f7 7f 00 00 39 09 ff 15 d8 13 f4 fe 48 b9 a8 70 cd c8 f7 7f 00 00 e8 b1 67 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb d0 18 63 c7 f7 7f 00 00 39 09 ff 15 af 13 f4 fe 48 8b c8 e8 7f 82 ff ff eb 27 48 8b c8 49 bb d8 18 63 c7 f7 7f 00 00 39 09 ff 15 98 13 f4 fe 48 8b c8 e8 60 82 ff ff eb 08 48 8b c8 e8 56 f5 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 5c 62 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 2a 67 b7 5e 48 8b f8 48 8b ce 33 d2 e8 7d ca 7f 4d 48 8b d0 48 8b cf e8 12 8c 08 ff 48 8b cf e8 5a b3 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd71d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 71 cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 58 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cef6e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 f6 ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 58 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cef7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f7 ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 58 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cef878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f8 ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 58 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd7328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 73 cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 58 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76318e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10beb8ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 14 f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 83 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c76318e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10bebaah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 14 f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 83 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 67 b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c76318c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10bec28h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 13 f4 fe}
0140h mov rcx,7ff7c8cd70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 67 b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c76318d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10bec51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af 13 f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 82 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c76318d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10bec68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 13 f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e87a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 82 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86efaa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f5 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 62 ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 67 b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ca 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 8c 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b3 ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_vec256_expr_g[32u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 48 76 cd c8 f7 7f 00 00 e8 c3 56 b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 98 f9 ce c8 f7 7f 00 00 e8 a8 56 b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 80 fa ce c8 f7 7f 00 00 e8 8d 56 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 30 fb ce c8 f7 7f 00 00 e8 72 56 b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 98 77 cd c8 f7 7f 00 00 e8 57 56 b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 08 19 63 c7 f7 7f 00 00 39 09 ff 15 6e 12 f4 fe 48 8b c8 e8 26 81 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 4e 12 f4 fe 48 8b c8 e8 fe 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 18 75 cd c8 f7 7f 00 00 e8 ba 65 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f0 18 63 c7 f7 7f 00 00 39 09 ff 15 d0 11 f4 fe 48 b9 18 75 cd c8 f7 7f 00 00 e8 81 65 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb f8 18 63 c7 f7 7f 00 00 39 09 ff 15 a7 11 f4 fe 48 8b c8 e8 6f 80 ff ff eb 27 48 8b c8 49 bb 00 19 63 c7 f7 7f 00 00 39 09 ff 15 90 11 f4 fe 48 8b c8 e8 50 80 ff ff eb 08 48 8b c8 e8 7e f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 2c 60 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 fa 64 b7 5e 48 8b f8 48 8b ce 33 d2 e8 4d c8 7f 4d 48 8b d0 48 8b cf e8 e2 89 08 ff 48 8b cf e8 2a b1 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd7648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 56 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cef998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f9 ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 56 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cefa80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fa ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 56 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cefb30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 fb ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 56 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd7798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 77 cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 56 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10bed92h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e 12 f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 81 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10bedb2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e 12 f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 80 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 65 b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c76318f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10bee30h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 11 f4 fe}
0140h mov rcx,7ff7c8cd7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 65 b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c76318f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10bee59h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 11 f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 80 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7631900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10bee70h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 11 f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e87c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 80 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86efb00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 60 ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 64 b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c8 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 89 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a b1 ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_vec256_expr_g[32i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b8 7a cd c8 f7 7f 00 00 e8 93 54 b7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 50 fc ce c8 f7 7f 00 00 e8 78 54 b7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 38 fd ce c8 f7 7f 00 00 e8 5d 54 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 e8 fd ce c8 f7 7f 00 00 e8 42 54 b7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 08 7c cd c8 f7 7f 00 00 e8 27 54 b7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 30 19 63 c7 f7 7f 00 00 39 09 ff 15 66 10 f4 fe 48 8b c8 e8 16 7f ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 46 10 f4 fe 48 8b c8 e8 ee 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 88 79 cd c8 f7 7f 00 00 e8 8a 63 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 18 19 63 c7 f7 7f 00 00 39 09 ff 15 c8 0f f4 fe 48 b9 88 79 cd c8 f7 7f 00 00 e8 51 63 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 20 19 63 c7 f7 7f 00 00 39 09 ff 15 9f 0f f4 fe 48 8b c8 e8 5f 7e ff ff eb 27 48 8b c8 49 bb 28 19 63 c7 f7 7f 00 00 39 09 ff 15 88 0f f4 fe 48 8b c8 e8 40 7e ff ff eb 08 48 8b c8 e8 a6 f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fc 5d ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 ca 62 b7 5e 48 8b f8 48 8b ce 33 d2 e8 1d c6 7f 4d 48 8b d0 48 8b cf e8 b2 87 08 ff 48 8b cf e8 fa ae ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd7ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7a cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 54 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cefc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fc ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 54 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cefd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 fd ce c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 54 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cefde8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fd ce c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 54 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd7c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 7c cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 54 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10bef9ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 10 f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 7f ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10befbah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 10 f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 7e ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8cd7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 cd c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 63 b7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7631918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 63 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10bf038h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 0f f4 fe}
0140h mov rcx,7ff7c8cd7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 cd c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 63 b7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7631920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 63 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10bf061h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 0f f4 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 7e ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7631928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 63 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10bf078h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 0f f4 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86e87e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 7e ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86efb58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5d ac 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 62 b7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c6 7f 4d}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 87 08 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ae ae 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_vec256_expr_g[64u]()[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a8 c5 cd c8 f7 7f 00 00 e8 63 52 b7 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 08 ff ce c8 f7 7f 00 00 e8 48 52 b7 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 20 00 d0 c8 f7 7f 00 00 e8 2d 52 b7 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 d0 00 d0 c8 f7 7f 00 00 e8 12 52 b7 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 c0 33 ce c8 f7 7f 00 00 e8 f7 51 b7 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 58 19 63 c7 f7 7f 00 00 39 09 ff 15 5e 0e f4 fe 48 8b c8 e8 76 7d ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 3e 0e f4 fe 48 8b c8 e8 4e 7d ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 78 c4 cd c8 f7 7f 00 00 e8 59 61 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 40 19 63 c7 f7 7f 00 00 39 09 ff 15 bf 0d f4 fe 48 b9 78 c4 cd c8 f7 7f 00 00 e8 20 61 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 48 19 63 c7 f7 7f 00 00 39 09 ff 15 96 0d f4 fe 48 8b c8 e8 be 7c ff ff eb 27 48 8b c8 49 bb 50 19 63 c7 f7 7f 00 00 39 09 ff 15 7f 0d f4 fe 48 8b c8 e8 9f 7c ff ff eb 08 48 8b c8 e8 cd ef ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cb 5b ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 99 60 b7 5e 48 8b f8 48 8b ce 33 d2 e8 ec c3 7f 4d 48 8b d0 48 8b cf e8 81 85 08 ff 48 8b cf e8 c9 ac ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cdc5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c5 cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 52 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8ceff08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ff ce c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 52 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d00020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 d0 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 52 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d000d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 00 d0 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 52 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ce33c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 33 ce c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 51 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10bf1a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e 0e f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e8878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 7d ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10bf1c2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e 0e f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e8878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 7d ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c8cdc478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 cd c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 61 b7 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c7631940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 63 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-10bf241h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf 0d f4 fe}
0141h mov rcx,7ff7c8cdc478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 cd c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 61 b7 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c7631948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 63 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-10bf26ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 0d f4 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c86e8878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 7c ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c7631950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-10bf281h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 0d f4 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c86e8878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 7c ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c86efbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ef ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 5b ac 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 60 b7 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c3 7f 4d}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 85 08 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ac ae 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_vec256_expr_g[64i]()[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 28 7f cd c8 f7 7f 00 00 e8 33 50 b7 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 f0 01 d0 c8 f7 7f 00 00 e8 18 50 b7 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 d8 02 d0 c8 f7 7f 00 00 e8 fd 4f b7 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 88 03 d0 c8 f7 7f 00 00 e8 e2 4f b7 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 78 80 cd c8 f7 7f 00 00 e8 c7 4f b7 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 80 19 63 c7 f7 7f 00 00 39 09 ff 15 56 0c f4 fe 48 8b c8 e8 66 7b ff ff c5 fd 10 70 08 48 8b cf 49 bb 88 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 36 0c f4 fe 48 8b c8 e8 3e 7b ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f8 7d cd c8 f7 7f 00 00 e8 29 5f b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 68 19 63 c7 f7 7f 00 00 39 09 ff 15 b7 0b f4 fe 48 b9 f8 7d cd c8 f7 7f 00 00 e8 f0 5e b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 70 19 63 c7 f7 7f 00 00 39 09 ff 15 8e 0b f4 fe 48 8b c8 e8 ae 7a ff ff eb 27 48 8b c8 49 bb 78 19 63 c7 f7 7f 00 00 39 09 ff 15 77 0b f4 fe 48 8b c8 e8 8f 7a ff ff eb 08 48 8b c8 e8 f5 ed ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9b 59 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 69 5e b7 5e 48 8b f8 48 8b ce 33 d2 e8 bc c1 7f 4d 48 8b d0 48 8b cf e8 51 83 08 ff 48 8b cf e8 99 aa ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cd7f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7f cd c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 50 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d001f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 01 d0 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 50 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d002d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 02 d0 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 4f b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d00388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 03 d0 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 4f b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cd8078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 80 cd c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 4f b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10bf3aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 0c f4 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 7b ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7631988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 63 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10bf3cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 0c f4 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 7b ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c8cd7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d cd c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 5f b7 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c7631968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 63 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-10bf449h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 0b f4 fe}
0141h mov rcx,7ff7c8cd7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d cd c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 5e b7 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c7631970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 63 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-10bf472h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e 0b f4 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 7a ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c7631978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-10bf489h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 0b f4 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c86e8898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 7a ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c86efc08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 ed ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 59 ac 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 5e b7 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc c1 7f 4d}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 83 08 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 aa ae 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
