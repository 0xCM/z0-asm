------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_vec128_expr_g[8u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a0 3e cd c8 f7 7f 00 00 e8 1c 73 b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 c8 cb ce c8 f7 7f 00 00 e8 01 73 b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 b0 cc ce c8 f7 7f 00 00 e8 e6 72 b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 60 cd ce c8 f7 7f 00 00 e8 cb 72 b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 f0 3f cd c8 f7 7f 00 00 e8 b0 72 b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 28 17 63 c7 f7 7f 00 00 39 09 ff 15 e7 2c f4 fe 48 8b c8 e8 3f 98 ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 17 63 c7 f7 7f 00 00 39 09 ff 15 cd 2c f4 fe 48 8b c8 e8 1d 98 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 70 3d cd c8 f7 7f 00 00 e8 25 82 b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 10 17 63 c7 f7 7f 00 00 39 09 ff 15 61 2c f4 fe 48 b9 70 3d cd c8 f7 7f 00 00 e8 f2 81 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 18 17 63 c7 f7 7f 00 00 39 09 ff 15 38 2c f4 fe 48 8b c8 e8 a0 97 ff ff eb 27 48 8b c8 49 bb 20 17 63 c7 f7 7f 00 00 39 09 ff 15 21 2c f4 fe 48 8b c8 e8 81 97 ff ff eb 08 48 8b c8 e8 df f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 a9 7c ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 77 81 b7 5e 48 8b f8 48 8b ce 33 d2 e8 ca e4 7f 4d 48 8b d0 48 8b cf e8 5f a6 08 ff 48 8b cf e8 a7 cd ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd3ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3e cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 73 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cecbc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 cb ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 73 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ceccb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 cc ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 72 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cecd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 cd ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 72 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd3ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3f cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 72 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bd319h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 2c f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e8288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 98 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7631730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bd333h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd 2c f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e8288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 98 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 82 b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bd39fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 2c f4 fe}
011fh mov rcx,7ff7c8cd3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 81 b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bd3c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 2c f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e8288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 97 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bd3dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 2c f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e8288h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 97 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86eddf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 7c ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 81 b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e4 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a6 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 cd ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_vec128_expr_g[8i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 70 43 cd c8 f7 7f 00 00 e8 2c 71 b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 80 d2 ce c8 f7 7f 00 00 e8 11 71 b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 68 d3 ce c8 f7 7f 00 00 e8 f6 70 b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 18 d4 ce c8 f7 7f 00 00 e8 db 70 b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 c0 44 cd c8 f7 7f 00 00 e8 c0 70 b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 50 17 63 c7 f7 7f 00 00 39 09 ff 15 1f 2b f4 fe 48 8b c8 e8 7f 96 ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 17 63 c7 f7 7f 00 00 39 09 ff 15 05 2b f4 fe 48 8b c8 e8 5d 96 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 40 42 cd c8 f7 7f 00 00 e8 35 80 b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 38 17 63 c7 f7 7f 00 00 39 09 ff 15 99 2a f4 fe 48 b9 40 42 cd c8 f7 7f 00 00 e8 02 80 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 40 17 63 c7 f7 7f 00 00 39 09 ff 15 70 2a f4 fe 48 8b c8 e8 e0 95 ff ff eb 27 48 8b c8 49 bb 48 17 63 c7 f7 7f 00 00 39 09 ff 15 59 2a f4 fe 48 8b c8 e8 c1 95 ff ff eb 08 48 8b c8 e8 27 f9 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 b9 7a ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 87 7f b7 5e 48 8b f8 48 8b ce 33 d2 e8 da e2 7f 4d 48 8b d0 48 8b cf e8 6f a4 08 ff 48 8b cf e8 b7 cb ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd4370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 43 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 71 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ced280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d2 ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 71 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ced368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d3 ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 70 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ced418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d4 ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 70 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd44c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 44 cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 70 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bd4e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f 2b f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e82b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 96 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7631758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bd4fbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 2b f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e82b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 96 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 80 b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bd567h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 2a f4 fe}
011fh mov rcx,7ff7c8cd4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 80 b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bd590h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 2a f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e82b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 95 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bd5a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 2a f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e82b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 95 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 f9 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 7a ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 7f b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e2 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f a4 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 cb ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_vec128_expr_g[16u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 e0 47 cd c8 f7 7f 00 00 e8 3c 6f b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 38 d5 ce c8 f7 7f 00 00 e8 21 6f b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 20 d6 ce c8 f7 7f 00 00 e8 06 6f b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 d0 d6 ce c8 f7 7f 00 00 e8 eb 6e b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 30 49 cd c8 f7 7f 00 00 e8 d0 6e b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 78 17 63 c7 f7 7f 00 00 39 09 ff 15 57 29 f4 fe 48 8b c8 e8 af 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 17 63 c7 f7 7f 00 00 39 09 ff 15 3d 29 f4 fe 48 8b c8 e8 8d 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 b0 46 cd c8 f7 7f 00 00 e8 45 7e b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 60 17 63 c7 f7 7f 00 00 39 09 ff 15 d1 28 f4 fe 48 b9 b0 46 cd c8 f7 7f 00 00 e8 12 7e b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 68 17 63 c7 f7 7f 00 00 39 09 ff 15 a8 28 f4 fe 48 8b c8 e8 10 94 ff ff eb 27 48 8b c8 49 bb 70 17 63 c7 f7 7f 00 00 39 09 ff 15 91 28 f4 fe 48 8b c8 e8 f1 93 ff ff eb 08 48 8b c8 e8 8f f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 c9 78 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 97 7d b7 5e 48 8b f8 48 8b ce 33 d2 e8 ea e0 7f 4d 48 8b d0 48 8b cf e8 7f a2 08 ff 48 8b cf e8 c7 c9 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd47e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 47 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6f b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ced538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 d5 ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 6f b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ced620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d6 ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 6f b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ced6d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d6 ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 6e b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd4930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 49 cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 6e b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bd6a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 29 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e82d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 94 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7631780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bd6c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d 29 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e82d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 94 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 7e b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bd72fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 28 f4 fe}
011fh mov rcx,7ff7c8cd46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 7e b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bd758h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 28 f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e82d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 94 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bd76fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 28 f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e82d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 93 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 78 ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7d b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e0 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a2 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 c9 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_vec128_expr_g[16i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 4c cd c8 f7 7f 00 00 e8 4c 6d b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 f0 d7 ce c8 f7 7f 00 00 e8 31 6d b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 d8 d8 ce c8 f7 7f 00 00 e8 16 6d b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 88 d9 ce c8 f7 7f 00 00 e8 fb 6c b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 a0 4d cd c8 f7 7f 00 00 e8 e0 6c b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb a0 17 63 c7 f7 7f 00 00 39 09 ff 15 8f 27 f4 fe 48 8b c8 e8 df 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb a8 17 63 c7 f7 7f 00 00 39 09 ff 15 75 27 f4 fe 48 8b c8 e8 bd 92 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 20 4b cd c8 f7 7f 00 00 e8 55 7c b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 88 17 63 c7 f7 7f 00 00 39 09 ff 15 09 27 f4 fe 48 b9 20 4b cd c8 f7 7f 00 00 e8 22 7c b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 90 17 63 c7 f7 7f 00 00 39 09 ff 15 e0 26 f4 fe 48 8b c8 e8 40 92 ff ff eb 27 48 8b c8 49 bb 98 17 63 c7 f7 7f 00 00 39 09 ff 15 c9 26 f4 fe 48 8b c8 e8 21 92 ff ff eb 08 48 8b c8 e8 f7 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 d9 76 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 a7 7b b7 5e 48 8b f8 48 8b ce 33 d2 e8 fa de 7f 4d 48 8b d0 48 8b cf e8 8f a0 08 ff 48 8b cf e8 d7 c7 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd4c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4c cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 6d b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ced7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d7 ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 6d b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ced8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 6d b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ced988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d9 ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 6c b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd4da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4d cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 6c b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76317a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bd871h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f 27 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e82f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 92 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76317a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bd88bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 27 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e82f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 92 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 7c b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bd8f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 27 f4 fe}
011fh mov rcx,7ff7c8cd4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 7c b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bd920h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 26 f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e82f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 92 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bd937h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 26 f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e82f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 92 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f5 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 76 ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 7b b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa de 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a0 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 c7 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_vec128_expr_g[32u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c0 50 cd c8 f7 7f 00 00 e8 5c 6b b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 a8 da ce c8 f7 7f 00 00 e8 41 6b b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 90 db ce c8 f7 7f 00 00 e8 26 6b b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 40 dc ce c8 f7 7f 00 00 e8 0b 6b b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 10 52 cd c8 f7 7f 00 00 e8 f0 6a b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb c8 17 63 c7 f7 7f 00 00 39 09 ff 15 c7 25 f4 fe 48 8b c8 e8 0f 91 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 17 63 c7 f7 7f 00 00 39 09 ff 15 ad 25 f4 fe 48 8b c8 e8 ed 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 90 4f cd c8 f7 7f 00 00 e8 65 7a b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b0 17 63 c7 f7 7f 00 00 39 09 ff 15 41 25 f4 fe 48 b9 90 4f cd c8 f7 7f 00 00 e8 32 7a b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb b8 17 63 c7 f7 7f 00 00 39 09 ff 15 18 25 f4 fe 48 8b c8 e8 70 90 ff ff eb 27 48 8b c8 49 bb c0 17 63 c7 f7 7f 00 00 39 09 ff 15 01 25 f4 fe 48 8b c8 e8 51 90 ff ff eb 08 48 8b c8 e8 5f f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 e9 74 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 b7 79 b7 5e 48 8b f8 48 8b ce 33 d2 e8 0a dd 7f 4d 48 8b d0 48 8b cf e8 9f 9e 08 ff 48 8b cf e8 e7 c5 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd50c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 50 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 6b b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cedaa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 da ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 6b b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cedb90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 db ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 6b b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cedc40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 dc ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 6b b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd5210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 52 cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 6a b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76317c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bda39h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 25 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e8318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 91 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76317d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bda53h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ad 25 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e8318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 90 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 7a b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76317b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bdabfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 25 f4 fe}
011fh mov rcx,7ff7c8cd4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7a b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76317b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bdae8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 25 f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e8318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 90 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76317c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bdaffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 25 f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e8318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 90 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f4 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 74 ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 79 b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a dd 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 9e 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 c5 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_vec128_expr_g[32i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 30 55 cd c8 f7 7f 00 00 e8 6c 69 b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 60 dd ce c8 f7 7f 00 00 e8 51 69 b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 48 de ce c8 f7 7f 00 00 e8 36 69 b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 f8 de ce c8 f7 7f 00 00 e8 1b 69 b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 80 56 cd c8 f7 7f 00 00 e8 00 69 b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb f0 17 63 c7 f7 7f 00 00 39 09 ff 15 ff 23 f4 fe 48 8b c8 e8 3f 8f ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 17 63 c7 f7 7f 00 00 39 09 ff 15 e5 23 f4 fe 48 8b c8 e8 1d 8f ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 00 54 cd c8 f7 7f 00 00 e8 75 78 b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d8 17 63 c7 f7 7f 00 00 39 09 ff 15 79 23 f4 fe 48 b9 00 54 cd c8 f7 7f 00 00 e8 42 78 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb e0 17 63 c7 f7 7f 00 00 39 09 ff 15 50 23 f4 fe 48 8b c8 e8 a0 8e ff ff eb 27 48 8b c8 49 bb e8 17 63 c7 f7 7f 00 00 39 09 ff 15 39 23 f4 fe 48 8b c8 e8 81 8e ff ff eb 08 48 8b c8 e8 c7 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 f9 72 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 c7 77 b7 5e 48 8b f8 48 8b ce 33 d2 e8 1a db 7f 4d 48 8b d0 48 8b cf e8 af 9c 08 ff 48 8b cf e8 f7 c3 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 69 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cedd60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 dd ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 69 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cede48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 de ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 69 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cedef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 de ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 69 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd5680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 56 cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 69 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76317f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bdc01h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 23 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e8338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8f ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76317f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bdc1bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 23 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e8338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8f ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 78 b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76317d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bdc87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 23 f4 fe}
011fh mov rcx,7ff7c8cd5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 78 b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76317e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bdcb0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 23 f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e8338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 8e ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76317e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bdcc7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 23 f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e8338h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8e ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 72 ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 77 b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a db 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 9c 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c3 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_vec128_expr_g[64u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 b7 cd c8 f7 7f 00 00 e8 7c 67 b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 18 e0 ce c8 f7 7f 00 00 e8 61 67 b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 00 e1 ce c8 f7 7f 00 00 e8 46 67 b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 b0 e1 ce c8 f7 7f 00 00 e8 2b 67 b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 08 07 ce c8 f7 7f 00 00 e8 10 67 b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 18 18 63 c7 f7 7f 00 00 39 09 ff 15 37 22 f4 fe 48 8b c8 e8 df 8d ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 18 63 c7 f7 7f 00 00 39 09 ff 15 1d 22 f4 fe 48 8b c8 e8 bd 8d ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 20 b6 cd c8 f7 7f 00 00 e8 85 76 b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 00 18 63 c7 f7 7f 00 00 39 09 ff 15 b1 21 f4 fe 48 b9 20 b6 cd c8 f7 7f 00 00 e8 52 76 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 08 18 63 c7 f7 7f 00 00 39 09 ff 15 88 21 f4 fe 48 8b c8 e8 40 8d ff ff eb 27 48 8b c8 49 bb 10 18 63 c7 f7 7f 00 00 39 09 ff 15 71 21 f4 fe 48 8b c8 e8 21 8d ff ff eb 08 48 8b c8 e8 2f f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 09 71 ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 d7 75 b7 5e 48 8b f8 48 8b ce 33 d2 e8 2a d9 7f 4d 48 8b d0 48 8b cf e8 bf 9a 08 ff 48 8b cf e8 07 c2 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cdb750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 67 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cee018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e0 ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 67 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cee100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e1 ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 67 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cee1b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e1 ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 67 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ce0708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 07 ce c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 67 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bddc9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 22 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e83c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 8d ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7631820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bdde3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d 22 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e83c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 8d ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cdb620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 76 b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10bde4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 21 f4 fe}
011fh mov rcx,7ff7c8cdb620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 76 b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10bde78h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 21 f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e83c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 8d ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10bde8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 21 f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e83c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 8d ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee7e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f1 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 71 ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 75 b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d9 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 9a 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 c2 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_vec128_expr_g[64i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a0 59 cd c8 f7 7f 00 00 e8 8c 65 b7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 d0 e2 ce c8 f7 7f 00 00 e8 71 65 b7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 b8 e3 ce c8 f7 7f 00 00 e8 56 65 b7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 68 e4 ce c8 f7 7f 00 00 e8 3b 65 b7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 f0 5a cd c8 f7 7f 00 00 e8 20 65 b7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 40 18 63 c7 f7 7f 00 00 39 09 ff 15 6f 20 f4 fe 48 8b c8 e8 0f 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 48 18 63 c7 f7 7f 00 00 39 09 ff 15 55 20 f4 fe 48 8b c8 e8 ed 8b ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 70 58 cd c8 f7 7f 00 00 e8 95 74 b7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 28 18 63 c7 f7 7f 00 00 39 09 ff 15 e9 1f f4 fe 48 b9 70 58 cd c8 f7 7f 00 00 e8 62 74 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 30 18 63 c7 f7 7f 00 00 39 09 ff 15 c0 1f f4 fe 48 8b c8 e8 70 8b ff ff eb 27 48 8b c8 49 bb 38 18 63 c7 f7 7f 00 00 39 09 ff 15 a9 1f f4 fe 48 8b c8 e8 51 8b ff ff eb 08 48 8b c8 e8 97 ef ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 19 6f ac 5e 48 8b f0 48 b9 68 9f 98 c7 f7 7f 00 00 e8 e7 73 b7 5e 48 8b f8 48 8b ce 33 d2 e8 3a d7 7f 4d 48 8b d0 48 8b cf e8 cf 98 08 ff 48 8b cf e8 17 c0 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cd59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 cd c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 65 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cee2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e2 ce c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 65 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cee3b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e3 ce c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 65 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cee468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e4 ce c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 65 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cd5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a cd c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 65 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 63 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10bdf91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f 20 f4 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86e83e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 8c ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7631848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 63 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10bdfabh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 20 f4 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86e83e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 8b ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cd5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 cd c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 74 b7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7631828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 63 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10be017h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 1f f4 fe}
011fh mov rcx,7ff7c8cd5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 cd c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 74 b7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7631830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 63 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10be040h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 1f f4 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86e83e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 8b ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7631838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 63 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10be057h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 1f f4 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86e83e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8b ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86ee838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 ef ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 6f ac 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 9f 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 73 b7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d7 7f 4d}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c77791b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 98 08 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 c0 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
