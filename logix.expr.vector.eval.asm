------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_vec128_expr_g[8u]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 48 aa 85 c8 f7 7f 00 00 e8 9c 47 cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 f0 6f 88 c8 f7 7f 00 00 e8 81 47 cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 40 72 88 c8 f7 7f 00 00 e8 66 47 cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 f0 72 88 c8 f7 7f 00 00 e8 4b 47 cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 98 ab 85 c8 f7 7f 00 00 e8 30 47 cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb c8 0d 64 c7 f7 7f 00 00 39 09 ff 15 07 f8 0a ff 48 8b c8 e8 4f 8d ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 0d 64 c7 f7 7f 00 00 39 09 ff 15 ed f7 0a ff 48 8b c8 e8 2d 8d ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 18 a9 85 c8 f7 7f 00 00 e8 a5 56 cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b0 0d 64 c7 f7 7f 00 00 39 09 ff 15 81 f7 0a ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 72 56 cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb b8 0d 64 c7 f7 7f 00 00 39 09 ff 15 58 f7 0a ff 48 8b c8 e8 b0 8c ff ff eb 27 48 8b c8 49 bb c0 0d 64 c7 f7 7f 00 00 39 09 ff 15 41 f7 0a ff 48 8b c8 e8 91 8c ff ff eb 08 48 8b c8 e8 f7 f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 29 51 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 f7 55 cd 5e 48 8b f8 48 8b ce 33 d2 e8 4a b9 76 4e 48 8b d0 48 8b cf e8 37 6f 1f ff 48 8b cf e8 27 a2 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885aa48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 aa 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 47 cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8886ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 6f 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 47 cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8887240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 72 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 47 cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c88872f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 72 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 47 cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885ab98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ab 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 47 cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0d 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f507f9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 f8 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 8d ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0d 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f50813h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ed f7 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 8d ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 56 cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0d 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f5087fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 f7 0a ff}
011fh mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 56 cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0d 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f508a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 f7 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 8c ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0d 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f508bfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 f7 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8c ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c8590888h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f1 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 51 c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 55 cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a b9 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 6f 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a2 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_vec128_expr_g[8i]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 18 af 85 c8 f7 7f 00 00 e8 ac 45 cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 10 78 88 c8 f7 7f 00 00 e8 91 45 cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 f8 78 88 c8 f7 7f 00 00 e8 76 45 cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 a8 79 88 c8 f7 7f 00 00 e8 5b 45 cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 68 b0 85 c8 f7 7f 00 00 e8 40 45 cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb f0 0d 64 c7 f7 7f 00 00 39 09 ff 15 3f f6 0a ff 48 8b c8 e8 8f 8b ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 0d 64 c7 f7 7f 00 00 39 09 ff 15 25 f6 0a ff 48 8b c8 e8 6d 8b ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 b5 54 cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d8 0d 64 c7 f7 7f 00 00 39 09 ff 15 b9 f5 0a ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 82 54 cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb e0 0d 64 c7 f7 7f 00 00 39 09 ff 15 90 f5 0a ff 48 8b c8 e8 f0 8a ff ff eb 27 48 8b c8 49 bb e8 0d 64 c7 f7 7f 00 00 39 09 ff 15 79 f5 0a ff 48 8b c8 e8 d1 8a ff ff eb 08 48 8b c8 e8 3f f9 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 39 4f c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 07 54 cd 5e 48 8b f8 48 8b ce 33 d2 e8 5a b7 76 4e 48 8b d0 48 8b cf e8 47 6d 1f ff 48 8b cf e8 37 a0 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885af18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 af 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 45 cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8887810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 78 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 45 cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c88878f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 78 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 45 cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c88879a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 79 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 45 cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885b068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 b0 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 45 cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0d 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f509c1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f f6 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 8b ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0d 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f509dbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 f6 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 8b ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 54 cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0d 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f50a47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 f5 0a ff}
011fh mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 54 cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0d 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f50a70h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 f5 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 8a ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0d 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f50a87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 f5 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 8a ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c85911c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f f9 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 4f c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 54 cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a b7 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 6d 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 a0 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_vec128_expr_g[16u]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 88 b3 85 c8 f7 7f 00 00 e8 bc 43 cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 c8 7a 88 c8 f7 7f 00 00 e8 a1 43 cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 b0 7b 88 c8 f7 7f 00 00 e8 86 43 cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 60 7c 88 c8 f7 7f 00 00 e8 6b 43 cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 d8 b4 85 c8 f7 7f 00 00 e8 50 43 cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 18 0e 64 c7 f7 7f 00 00 39 09 ff 15 77 f4 0a ff 48 8b c8 e8 cf 8b ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 0e 64 c7 f7 7f 00 00 39 09 ff 15 5d f4 0a ff 48 8b c8 e8 ad 8b ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 58 b2 85 c8 f7 7f 00 00 e8 c5 52 cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 00 0e 64 c7 f7 7f 00 00 39 09 ff 15 f1 f3 0a ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 92 52 cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 08 0e 64 c7 f7 7f 00 00 39 09 ff 15 c8 f3 0a ff 48 8b c8 e8 30 8b ff ff eb 27 48 8b c8 49 bb 10 0e 64 c7 f7 7f 00 00 39 09 ff 15 b1 f3 0a ff 48 8b c8 e8 11 8b ff ff eb 08 48 8b c8 e8 a7 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 49 4d c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 17 52 cd 5e 48 8b f8 48 8b ce 33 d2 e8 6a b5 76 4e 48 8b d0 48 8b cf e8 57 6b 1f ff 48 8b cf e8 47 9e c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885b388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b3 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 43 cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8887ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7a 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 43 cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8887bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7b 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 43 cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8887c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7c 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 43 cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885b4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 b4 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 43 cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f50b89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 f4 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 8b ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f50ba3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d f4 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 8b ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 52 cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f50c0fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 f3 0a ff}
011fh mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 52 cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f50c38h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 f3 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 8b ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f50c4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 f3 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a578h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 8b ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c8591218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 4d c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 52 cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a b5 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 6b 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 9e c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_vec128_expr_g[16i]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 b7 85 c8 f7 7f 00 00 e8 cc 41 cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 80 7d 88 c8 f7 7f 00 00 e8 b1 41 cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 68 7e 88 c8 f7 7f 00 00 e8 96 41 cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 18 7f 88 c8 f7 7f 00 00 e8 7b 41 cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 48 b9 85 c8 f7 7f 00 00 e8 60 41 cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 40 0e 64 c7 f7 7f 00 00 39 09 ff 15 af f2 0a ff 48 8b c8 e8 ff 89 ff ff c5 f9 10 70 08 48 8b cf 49 bb 48 0e 64 c7 f7 7f 00 00 39 09 ff 15 95 f2 0a ff 48 8b c8 e8 dd 89 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 d5 50 cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 28 0e 64 c7 f7 7f 00 00 39 09 ff 15 29 f2 0a ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 a2 50 cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 30 0e 64 c7 f7 7f 00 00 39 09 ff 15 00 f2 0a ff 48 8b c8 e8 60 89 ff ff eb 27 48 8b c8 49 bb 38 0e 64 c7 f7 7f 00 00 39 09 ff 15 e9 f1 0a ff 48 8b c8 e8 41 89 ff ff eb 08 48 8b c8 e8 0f f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 59 4b c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 27 50 cd 5e 48 8b f8 48 8b ce 33 d2 e8 7a b3 76 4e 48 8b d0 48 8b cf e8 67 69 1f ff 48 8b cf e8 57 9c c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885b7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b7 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 41 cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8887d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7d 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 41 cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8887e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 7e 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 41 cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8887f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 7f 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 41 cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885b948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 b9 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 41 cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f50d51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af f2 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 89 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f50d6bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 f2 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 89 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 50 cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f50dd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 f2 0a ff}
011fh mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 50 cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f50e00h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 f2 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 89 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f50e17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 f1 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 89 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c8591270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f6 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 4b c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 50 cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a b3 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 69 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 9c c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_vec128_expr_g[32u]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 68 bc 85 c8 f7 7f 00 00 e8 dc 3f cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 38 80 88 c8 f7 7f 00 00 e8 c1 3f cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 20 81 88 c8 f7 7f 00 00 e8 a6 3f cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 d0 81 88 c8 f7 7f 00 00 e8 8b 3f cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 b8 bd 85 c8 f7 7f 00 00 e8 70 3f cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 68 0e 64 c7 f7 7f 00 00 39 09 ff 15 e7 f0 0a ff 48 8b c8 e8 2f 88 ff ff c5 f9 10 70 08 48 8b cf 49 bb 70 0e 64 c7 f7 7f 00 00 39 09 ff 15 cd f0 0a ff 48 8b c8 e8 0d 88 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 38 bb 85 c8 f7 7f 00 00 e8 e5 4e cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 50 0e 64 c7 f7 7f 00 00 39 09 ff 15 61 f0 0a ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 b2 4e cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 58 0e 64 c7 f7 7f 00 00 39 09 ff 15 38 f0 0a ff 48 8b c8 e8 90 87 ff ff eb 27 48 8b c8 49 bb 60 0e 64 c7 f7 7f 00 00 39 09 ff 15 21 f0 0a ff 48 8b c8 e8 71 87 ff ff eb 08 48 8b c8 e8 77 f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 69 49 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 37 4e cd 5e 48 8b f8 48 8b ce 33 d2 e8 8a b1 76 4e 48 8b d0 48 8b cf e8 77 67 1f ff 48 8b cf e8 67 9a c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885bc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bc 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 3f cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8888038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 80 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 3f cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8888120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 81 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 3f cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c88881d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 81 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 3f cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885bdb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 bd 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 3f cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f50f19h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 f0 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 88 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f50f33h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd f0 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 88 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 4e cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f50f9fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 f0 0a ff}
011fh mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 4e cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f50fc8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 f0 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 87 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f50fdfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 f0 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a5b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 87 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c85912c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f4 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 49 c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 4e cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a b1 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 67 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 9a c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_vec128_expr_g[32i]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 c0 85 c8 f7 7f 00 00 e8 ec 3d cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 f0 82 88 c8 f7 7f 00 00 e8 d1 3d cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 d8 83 88 c8 f7 7f 00 00 e8 b6 3d cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 88 84 88 c8 f7 7f 00 00 e8 9b 3d cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 28 c2 85 c8 f7 7f 00 00 e8 80 3d cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 90 0e 64 c7 f7 7f 00 00 39 09 ff 15 1f ef 0a ff 48 8b c8 e8 5f 86 ff ff c5 f9 10 70 08 48 8b cf 49 bb 98 0e 64 c7 f7 7f 00 00 39 09 ff 15 05 ef 0a ff 48 8b c8 e8 3d 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 f5 4c cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 78 0e 64 c7 f7 7f 00 00 39 09 ff 15 99 ee 0a ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 c2 4c cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 80 0e 64 c7 f7 7f 00 00 39 09 ff 15 70 ee 0a ff 48 8b c8 e8 c0 85 ff ff eb 27 48 8b c8 49 bb 88 0e 64 c7 f7 7f 00 00 39 09 ff 15 59 ee 0a ff 48 8b c8 e8 a1 85 ff ff eb 08 48 8b c8 e8 df f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 79 47 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 47 4c cd 5e 48 8b f8 48 8b ce 33 d2 e8 9a af 76 4e 48 8b d0 48 8b cf e8 87 65 1f ff 48 8b cf e8 77 98 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885c0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 c0 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 3d cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c88882f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 82 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 3d cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c88883d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 83 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 3d cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8888488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 84 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 3d cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 3d cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f510e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f ef 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 86 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f510fbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 ef 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 86 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 4c cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f51167h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 ee 0a ff}
011fh mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 4c cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f51190h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 ee 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 85 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f511a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 ee 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a5d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 85 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c8591320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 47 c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 4c cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a af 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 65 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 98 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_vec128_expr_g[64u]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 2b 86 c8 f7 7f 00 00 e8 fc 3b cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 a8 85 88 c8 f7 7f 00 00 e8 e1 3b cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 90 86 88 c8 f7 7f 00 00 e8 c6 3b cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 40 87 88 c8 f7 7f 00 00 e8 ab 3b cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 28 80 86 c8 f7 7f 00 00 e8 90 3b cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb b8 0e 64 c7 f7 7f 00 00 39 09 ff 15 57 ed 0a ff 48 8b c8 e8 ff 84 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 0e 64 c7 f7 7f 00 00 39 09 ff 15 3d ed 0a ff 48 8b c8 e8 dd 84 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 20 2a 86 c8 f7 7f 00 00 e8 05 4b cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb a0 0e 64 c7 f7 7f 00 00 39 09 ff 15 d1 ec 0a ff 48 b9 20 2a 86 c8 f7 7f 00 00 e8 d2 4a cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb a8 0e 64 c7 f7 7f 00 00 39 09 ff 15 a8 ec 0a ff 48 8b c8 e8 60 84 ff ff eb 27 48 8b c8 49 bb b0 0e 64 c7 f7 7f 00 00 39 09 ff 15 91 ec 0a ff 48 8b c8 e8 41 84 ff ff eb 08 48 8b c8 e8 47 f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 89 45 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 57 4a cd 5e 48 8b f8 48 8b ce 33 d2 e8 aa ad 76 4e 48 8b d0 48 8b cf e8 97 63 1f ff 48 8b cf e8 87 96 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8862b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 2b 86 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 3b cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c88885a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 85 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 3b cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8888690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 86 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 3b cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8888740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 87 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 3b cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8868028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 80 86 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 3b cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f512a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 ed 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 84 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f512c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d ed 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 84 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 4b cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f5132fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 ec 0a ff}
011fh mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 4a cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f51358h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 ec 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 84 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f5136fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 ec 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 84 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c8591378h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f1 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 45 c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 4a cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa ad 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 63 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 96 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_vec128_expr_g[64i]()[457] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 48 c5 85 c8 f7 7f 00 00 e8 0c 3a cd 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 60 88 88 c8 f7 7f 00 00 e8 f1 39 cd 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 48 89 88 c8 f7 7f 00 00 e8 d6 39 cd 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 f8 89 88 c8 f7 7f 00 00 e8 bb 39 cd 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 98 c6 85 c8 f7 7f 00 00 e8 a0 39 cd 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb e0 0e 64 c7 f7 7f 00 00 39 09 ff 15 8f eb 0a ff 48 8b c8 e8 2f 83 ff ff c5 f9 10 70 08 48 8b cf 49 bb e8 0e 64 c7 f7 7f 00 00 39 09 ff 15 75 eb 0a ff 48 8b c8 e8 0d 83 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 18 c4 85 c8 f7 7f 00 00 e8 15 49 cd 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c8 0e 64 c7 f7 7f 00 00 39 09 ff 15 09 eb 0a ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 e2 48 cd 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb d0 0e 64 c7 f7 7f 00 00 39 09 ff 15 e0 ea 0a ff 48 8b c8 e8 90 82 ff ff eb 27 48 8b c8 49 bb d8 0e 64 c7 f7 7f 00 00 39 09 ff 15 c9 ea 0a ff 48 8b c8 e8 71 82 ff ff eb 08 48 8b c8 e8 af ef ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 99 43 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 67 48 cd 5e 48 8b f8 48 8b ce 33 d2 e8 ba ab 76 4e 48 8b d0 48 8b cf e8 a7 61 1f ff 48 8b cf e8 97 94 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c885c548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c5 85 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 3a cd 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8888860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 88 88 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 39 cd 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8888948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 89 88 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 39 cd 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c88889f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 89 88 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 39 cd 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c885c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 85 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 39 cd 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7640ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0e 64 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0f51471h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f eb 0a ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 83 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7640ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0e 64 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0f5148bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 eb 0a ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 83 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 49 cd 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7640ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0e 64 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0f514f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 eb 0a ff}
011fh mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 48 cd 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7640ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0e 64 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0f51520h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 ea 0a ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 82 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7640ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0e 64 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0f51537h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 ea 0a ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c858a688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 82 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c85913d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ef ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 43 c2 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 48 cd 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ab 76 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 61 1f ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 94 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_vec256_expr_g[8u]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d0 cf 85 c8 f7 7f 00 00 e8 03 34 cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 48 90 88 c8 f7 7f 00 00 e8 e8 33 cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 30 91 88 c8 f7 7f 00 00 e8 cd 33 cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 e0 91 88 c8 f7 7f 00 00 e8 b2 33 cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 20 d1 85 c8 f7 7f 00 00 e8 97 33 cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 08 0f 64 c7 f7 7f 00 00 39 09 ff 15 ae e5 0a ff 48 8b c8 e8 36 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8e e5 0a ff 48 8b c8 e8 0e 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 fa 42 cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f0 0e 64 c7 f7 7f 00 00 39 09 ff 15 10 e5 0a ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 c1 42 cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb f8 0e 64 c7 f7 7f 00 00 39 09 ff 15 e7 e4 0a ff 48 8b c8 e8 7f 7d ff ff eb 27 48 8b c8 49 bb 00 0f 64 c7 f7 7f 00 00 39 09 ff 15 d0 e4 0a ff 48 8b c8 e8 60 7d ff ff eb 08 48 8b c8 e8 ae ea ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6c 3d c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 3a 42 cd 5e 48 8b f8 48 8b ce 33 d2 e8 8d a5 76 4e 48 8b d0 48 8b cf e8 7a 5b 1f ff 48 8b cf e8 6a 8e c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885cfd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 cf 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 34 cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8889048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 90 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 33 cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8889130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 91 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 33 cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c88891e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 91 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 33 cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885d120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d1 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 33 cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f51a52h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae e5 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7e ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f51a72h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e e5 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 7e ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 42 cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0e 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f51af0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 e5 0a ff}
0140h mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 42 cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0e 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f51b19h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 e4 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 7d ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f51b30h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 e4 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7d ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c85914f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ea ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 3d c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 42 cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d a5 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 5b 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 8e c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_vec256_expr_g[8i]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a0 d4 85 c8 f7 7f 00 00 e8 d3 31 cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 00 97 88 c8 f7 7f 00 00 e8 b8 31 cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 e8 97 88 c8 f7 7f 00 00 e8 9d 31 cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 98 98 88 c8 f7 7f 00 00 e8 82 31 cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 f0 d5 85 c8 f7 7f 00 00 e8 67 31 cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 30 0f 64 c7 f7 7f 00 00 39 09 ff 15 a6 e3 0a ff 48 8b c8 e8 36 7c ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 86 e3 0a ff 48 8b c8 e8 0e 7c ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 70 d3 85 c8 f7 7f 00 00 e8 ca 40 cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 18 0f 64 c7 f7 7f 00 00 39 09 ff 15 08 e3 0a ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 91 40 cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 20 0f 64 c7 f7 7f 00 00 39 09 ff 15 df e2 0a ff 48 8b c8 e8 7f 7b ff ff eb 27 48 8b c8 49 bb 28 0f 64 c7 f7 7f 00 00 39 09 ff 15 c8 e2 0a ff 48 8b c8 e8 60 7b ff ff eb 08 48 8b c8 e8 1e f9 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3c 3b c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 0a 40 cd 5e 48 8b f8 48 8b ce 33 d2 e8 5d a3 76 4e 48 8b d0 48 8b cf e8 4a 59 1f ff 48 8b cf e8 3a 8c c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885d4a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d4 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 31 cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8889700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 97 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 31 cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c88897e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 97 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 31 cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8889898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 98 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 31 cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885d5f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d5 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 31 cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f51c5ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 e3 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7c ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f51c7ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 e3 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 7c ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 40 cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 0f 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f51cf8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 e3 0a ff}
0140h mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 40 cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 0f 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f51d21h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df e2 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 7b ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f51d38h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 e2 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a7c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7b ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c8592590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f9 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 3b c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 40 cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d a3 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 59 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 8c c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_vec256_expr_g[16u]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 10 d9 85 c8 f7 7f 00 00 e8 a3 2f cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 b8 99 88 c8 f7 7f 00 00 e8 88 2f cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 a0 9a 88 c8 f7 7f 00 00 e8 6d 2f cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 50 9b 88 c8 f7 7f 00 00 e8 52 2f cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 60 da 85 c8 f7 7f 00 00 e8 37 2f cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 58 0f 64 c7 f7 7f 00 00 39 09 ff 15 9e e1 0a ff 48 8b c8 e8 26 7a ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7e e1 0a ff 48 8b c8 e8 fe 79 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 9a 3e cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 40 0f 64 c7 f7 7f 00 00 39 09 ff 15 00 e1 0a ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 61 3e cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 48 0f 64 c7 f7 7f 00 00 39 09 ff 15 d7 e0 0a ff 48 8b c8 e8 6f 79 ff ff eb 27 48 8b c8 49 bb 50 0f 64 c7 f7 7f 00 00 39 09 ff 15 c0 e0 0a ff 48 8b c8 e8 50 79 ff ff eb 08 48 8b c8 e8 46 f7 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0c 39 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 da 3d cd 5e 48 8b f8 48 8b ce 33 d2 e8 2d a1 76 4e 48 8b d0 48 8b cf e8 1a 57 1f ff 48 8b cf e8 0a 8a c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885d910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d9 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 2f cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c88899b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 99 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 2f cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8889aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9a 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 2f cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8889b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9b 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 2f cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885da60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 da 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 2f cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f51e62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e e1 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 7a ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f51e82h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e e1 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 79 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 3e cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 0f 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f51f00h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 e1 0a ff}
0140h mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 3e cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 0f 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f51f29h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 e0 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 79 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f51f40h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 e0 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a7e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 79 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c85925e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f7 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 39 c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3d cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d a1 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 57 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 8a c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_vec256_expr_g[16i]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 80 dd 85 c8 f7 7f 00 00 e8 73 2d cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 70 9c 88 c8 f7 7f 00 00 e8 58 2d cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 58 9d 88 c8 f7 7f 00 00 e8 3d 2d cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 08 9e 88 c8 f7 7f 00 00 e8 22 2d cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 d0 de 85 c8 f7 7f 00 00 e8 07 2d cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 80 0f 64 c7 f7 7f 00 00 39 09 ff 15 96 df 0a ff 48 8b c8 e8 16 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb 88 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 76 df 0a ff 48 8b c8 e8 ee 77 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 50 dc 85 c8 f7 7f 00 00 e8 6a 3c cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 68 0f 64 c7 f7 7f 00 00 39 09 ff 15 f8 de 0a ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 31 3c cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 70 0f 64 c7 f7 7f 00 00 39 09 ff 15 cf de 0a ff 48 8b c8 e8 5f 77 ff ff eb 27 48 8b c8 49 bb 78 0f 64 c7 f7 7f 00 00 39 09 ff 15 b8 de 0a ff 48 8b c8 e8 40 77 ff ff eb 08 48 8b c8 e8 6e f5 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 dc 36 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 aa 3b cd 5e 48 8b f8 48 8b ce 33 d2 e8 fd 9e 76 4e 48 8b d0 48 8b cf e8 ea 54 1f ff 48 8b cf e8 da 87 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885dd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 dd 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 2d cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8889c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9c 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 2d cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8889d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 9d 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 2d cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8889e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9e 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 2d cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885ded0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 de 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 2d cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f5206ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 df 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 78 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f5208ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 df 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 77 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 3c cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 0f 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f52108h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 de 0a ff}
0140h mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 3c cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 0f 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f52131h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf de 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 77 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f52148h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 de 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a808h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 77 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c8592640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f5 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 36 c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 3b cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 9e 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 54 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 87 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_vec256_expr_g[32u]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 f0 e1 85 c8 f7 7f 00 00 e8 43 2b cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 28 9f 88 c8 f7 7f 00 00 e8 28 2b cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 10 a0 88 c8 f7 7f 00 00 e8 0d 2b cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 c0 a0 88 c8 f7 7f 00 00 e8 f2 2a cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 40 e3 85 c8 f7 7f 00 00 e8 d7 2a cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb a8 0f 64 c7 f7 7f 00 00 39 09 ff 15 8e dd 0a ff 48 8b c8 e8 06 76 ff ff c5 fd 10 70 08 48 8b cf 49 bb b0 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6e dd 0a ff 48 8b c8 e8 de 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 3a 3a cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 90 0f 64 c7 f7 7f 00 00 39 09 ff 15 f0 dc 0a ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 01 3a cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 98 0f 64 c7 f7 7f 00 00 39 09 ff 15 c7 dc 0a ff 48 8b c8 e8 4f 75 ff ff eb 27 48 8b c8 49 bb a0 0f 64 c7 f7 7f 00 00 39 09 ff 15 b0 dc 0a ff 48 8b c8 e8 30 75 ff ff eb 08 48 8b c8 e8 96 f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ac 34 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 7a 39 cd 5e 48 8b f8 48 8b ce 33 d2 e8 cd 9c 76 4e 48 8b d0 48 8b cf e8 ba 52 1f ff 48 8b cf e8 aa 85 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885e1f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e1 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 2b cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8889f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9f 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 2b cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c888a010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a0 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 2b cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c888a0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2a cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885e340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e3 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 2a cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f52272h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e dd 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 76 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f52292h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e dd 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 75 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 3a cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 0f 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f52310h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 dc 0a ff}
0140h mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 3a cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 0f 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f52339h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 dc 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 75 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f52350h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 dc 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a828h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 75 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c8592698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 34 c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 39 cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 9c 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 52 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 85 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_vec256_expr_g[32i]()[502] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 60 e6 85 c8 f7 7f 00 00 e8 13 29 cd 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 e0 a1 88 c8 f7 7f 00 00 e8 f8 28 cd 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 c8 a2 88 c8 f7 7f 00 00 e8 dd 28 cd 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 78 a3 88 c8 f7 7f 00 00 e8 c2 28 cd 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 b0 e7 85 c8 f7 7f 00 00 e8 a7 28 cd 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb d0 0f 64 c7 f7 7f 00 00 39 09 ff 15 86 db 0a ff 48 8b c8 e8 f6 73 ff ff c5 fd 10 70 08 48 8b cf 49 bb d8 0f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 66 db 0a ff 48 8b c8 e8 ce 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 30 e5 85 c8 f7 7f 00 00 e8 0a 38 cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb b8 0f 64 c7 f7 7f 00 00 39 09 ff 15 e8 da 0a ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 d1 37 cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb c0 0f 64 c7 f7 7f 00 00 39 09 ff 15 bf da 0a ff 48 8b c8 e8 3f 73 ff ff eb 27 48 8b c8 49 bb c8 0f 64 c7 f7 7f 00 00 39 09 ff 15 a8 da 0a ff 48 8b c8 e8 20 73 ff ff eb 08 48 8b c8 e8 be f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 7c 32 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 4a 37 cd 5e 48 8b f8 48 8b ce 33 d2 e8 9d 9a 76 4e 48 8b d0 48 8b cf e8 8a 50 1f ff 48 8b cf e8 7a 83 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 29 cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c888a1e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a1 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 28 cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c888a2c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a2 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 28 cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c888a378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a3 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 28 cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885e7b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e7 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 28 cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f5247ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 db 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 73 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7640fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 0f 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f5249ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 db 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 73 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 38 cd 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7640fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 0f 64 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0f52518h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 da 0a ff}
0140h mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 37 cd 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7640fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 0f 64 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0f52541h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf da 0a ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 73 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7640fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 0f 64 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0f52558h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 da 0a ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c858a848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 73 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c85926f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 32 c2 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 37 cd 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 9a 76 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 50 1f ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 83 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_vec256_expr_g[64u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a8 39 86 c8 f7 7f 00 00 e8 e3 26 cd 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 98 a4 88 c8 f7 7f 00 00 e8 c8 26 cd 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 80 a5 88 c8 f7 7f 00 00 e8 ad 26 cd 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 30 a6 88 c8 f7 7f 00 00 e8 92 26 cd 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 e0 ac 86 c8 f7 7f 00 00 e8 77 26 cd 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb f8 0f 64 c7 f7 7f 00 00 39 09 ff 15 7e d9 0a ff 48 8b c8 e8 56 72 ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 10 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5e d9 0a ff 48 8b c8 e8 2e 72 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 78 38 86 c8 f7 7f 00 00 e8 d9 35 cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb e0 0f 64 c7 f7 7f 00 00 39 09 ff 15 df d8 0a ff 48 b9 78 38 86 c8 f7 7f 00 00 e8 a0 35 cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb e8 0f 64 c7 f7 7f 00 00 39 09 ff 15 b6 d8 0a ff 48 8b c8 e8 9e 71 ff ff eb 27 48 8b c8 49 bb f0 0f 64 c7 f7 7f 00 00 39 09 ff 15 9f d8 0a ff 48 8b c8 e8 7f 71 ff ff eb 08 48 8b c8 e8 e5 ef ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 4b 30 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 19 35 cd 5e 48 8b f8 48 8b ce 33 d2 e8 6c 98 76 4e 48 8b d0 48 8b cf e8 59 4e 1f ff 48 8b cf e8 49 81 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c88639a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 39 86 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 26 cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c888a498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a4 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 26 cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c888a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 26 cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c888a630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a6 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 26 cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c886ace0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ac 86 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 26 cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7640ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 0f 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f52682h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e d9 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 72 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7641000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 10 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f526a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e d9 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 72 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 35 cd 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c7640fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 0f 64 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-0f52721h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df d8 0a ff}
0141h mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 35 cd 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c7640fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 0f 64 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-0f5274ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b6 d8 0a ff}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c858a8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 71 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c7640ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 0f 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-0f52761h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f d8 0a ff}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c858a8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 71 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c8592748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ef ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 30 c2 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 35 cd 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 98 76 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 4e 1f ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 81 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_vec256_expr_g[64i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d0 ea 85 c8 f7 7f 00 00 e8 b3 24 cd 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 50 a7 88 c8 f7 7f 00 00 e8 98 24 cd 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 38 a8 88 c8 f7 7f 00 00 e8 7d 24 cd 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 e8 a8 88 c8 f7 7f 00 00 e8 62 24 cd 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 20 ec 85 c8 f7 7f 00 00 e8 47 24 cd 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 20 10 64 c7 f7 7f 00 00 39 09 ff 15 76 d7 0a ff 48 8b c8 e8 46 70 ff ff c5 fd 10 70 08 48 8b cf 49 bb 28 10 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 56 d7 0a ff 48 8b c8 e8 1e 70 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 a9 33 cd 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 08 10 64 c7 f7 7f 00 00 39 09 ff 15 d7 d6 0a ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 70 33 cd 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 10 10 64 c7 f7 7f 00 00 39 09 ff 15 ae d6 0a ff 48 8b c8 e8 8e 6f ff ff eb 27 48 8b c8 49 bb 18 10 64 c7 f7 7f 00 00 39 09 ff 15 97 d6 0a ff 48 8b c8 e8 6f 6f ff ff eb 08 48 8b c8 e8 0d ee ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 1b 2e c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 e9 32 cd 5e 48 8b f8 48 8b ce 33 d2 e8 3c 96 76 4e 48 8b d0 48 8b cf e8 29 4c 1f ff 48 8b cf e8 19 7f c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c885ead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 85 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 24 cd 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c888a750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 a7 88 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 24 cd 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c888a838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a8 88 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 24 cd 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c888a8e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a8 88 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 24 cd 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c885ec20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ec 85 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 24 cd 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 10 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0f5288ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 d7 0a ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 70 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7641028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 10 64 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0f528aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 d7 0a ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 70 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 33 cd 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c7641008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 10 64 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-0f52929h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 d6 0a ff}
0141h mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 33 cd 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c7641010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 10 64 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-0f52952h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae d6 0a ff}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 6f ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c7641018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 10 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-0f52969h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 d6 0a ff}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c858a8f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6f ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c85927a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ee ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 2e c2 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 32 cd 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 96 76 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 4c 1f ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 7f c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_vec128_op_g[8u]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 60 b2 88 c8 f7 7f 00 00 e8 7b 1e cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 50 b7 88 c8 f7 7f 00 00 e8 5d 1e cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 98 bc 88 c8 f7 7f 00 00 e8 3f 1e cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 18 c1 88 c8 f7 7f 00 00 e8 21 1e cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 70 10 64 c7 f7 7f 00 00 39 09 ff 15 a0 d1 0a ff 8b d8 48 8b cf 49 bb 78 10 64 c7 f7 7f 00 00 39 09 ff 15 91 d1 0a ff 48 8b c8 e8 21 d6 ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 10 64 c7 f7 7f 00 00 39 09 ff 15 77 d1 0a ff 48 8b c8 e8 ff d5 ff ff c5 f9 10 78 08 48 8b cf 49 bb 88 10 64 c7 f7 7f 00 00 39 09 ff 15 5d d1 0a ff 48 8b c8 e8 dd d5 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 82 fc ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 37 2d cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 10 64 c7 f7 7f 00 00 39 09 ff 15 79 d0 0a ff 8b e8 48 8b cf 49 bb 38 10 64 c7 f7 7f 00 00 39 09 ff 15 6a d0 0a ff 48 8b c8 e8 3a d5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 db fe fb ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 ac 2c cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 10 64 c7 f7 7f 00 00 39 09 ff 15 fb cf 0a ff 8b f0 48 8b cb 49 bb 48 10 64 c7 f7 7f 00 00 39 09 ff 15 ec cf 0a ff 48 8b c8 e8 ac d4 ff ff c5 f9 10 70 08 48 8b cb 49 bb 50 10 64 c7 f7 7f 00 00 39 09 ff 15 d2 cf 0a ff 48 8b c8 e8 8a d4 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 10 3e fc ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 f1 2b cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 10 64 c7 f7 7f 00 00 39 09 ff 15 58 cf 0a ff 8b f0 48 8b cd 49 bb 60 10 64 c7 f7 7f 00 00 39 09 ff 15 49 cf 0a ff 48 8b c8 e8 f1 d3 ff ff c5 f9 10 70 08 48 8b cd 49 bb 68 10 64 c7 f7 7f 00 00 39 09 ff 15 2f cf 0a ff 48 8b c8 e8 17 2e ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 f9 ff ff 48 b9 18 a9 85 c8 f7 7f 00 00 e8 44 2b cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 26 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 2b cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 8e 76 4e 48 8b d0 48 8b cf e8 41 44 1f ff 48 8b cf e8 31 77 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888b260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 b2 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 1e cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 1e cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888bc98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 bc 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 1e cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888c118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c1 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 1e cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 10 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f52e60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 d1 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7641078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 10 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f52e6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 d1 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d6 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7641080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 10 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f52e89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 d1 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7641088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 10 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f52ea3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d d1 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d5 ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 82 fc ff}
014ah mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 2d cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c7641030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 10 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f52f87h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 d0 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7641038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 10 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f52f96h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a d0 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d5 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8553ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fe fb ff}
01d5h mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 2c cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c7641040h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 10 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f53005h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb cf 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7641048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 10 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f53014h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ec cf 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d4 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7641050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 10 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f5302eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 cf 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8557ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 3e fc ff}
0290h mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 2b cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c7641058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 10 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f530a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 cf 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7641060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 10 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f530b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 cf 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c8591510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d3 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7641068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 10 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f530d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f cf 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 2e ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f9 ff ff}
033dh mov rcx,7ff7c885a918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a9 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 2b cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 26 c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 2b cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 8e 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 44 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 77 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_vec128_op_g[8i]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 cc 88 c8 f7 7f 00 00 e8 7b 1a cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 ce 88 c8 f7 7f 00 00 e8 5d 1a cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 d1 88 c8 f7 7f 00 00 e8 3f 1a cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 d2 88 c8 f7 7f 00 00 e8 21 1a cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb d0 10 64 c7 f7 7f 00 00 39 09 ff 15 00 ce 0a ff 8b d8 48 8b cf 49 bb d8 10 64 c7 f7 7f 00 00 39 09 ff 15 f1 cd 0a ff 48 8b c8 e8 11 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 10 64 c7 f7 7f 00 00 39 09 ff 15 d7 cd 0a ff 48 8b c8 e8 ef d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb e8 10 64 c7 f7 7f 00 00 39 09 ff 15 bd cd 0a ff 48 8b c8 e8 cd d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 7e fc ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 37 29 cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 10 64 c7 f7 7f 00 00 39 09 ff 15 d9 cc 0a ff 8b e8 48 8b cf 49 bb 98 10 64 c7 f7 7f 00 00 39 09 ff 15 ca cc 0a ff 48 8b c8 e8 2a d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b fc fb ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 ac 28 cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 10 64 c7 f7 7f 00 00 39 09 ff 15 5b cc 0a ff 8b f0 48 8b cb 49 bb a8 10 64 c7 f7 7f 00 00 39 09 ff 15 4c cc 0a ff 48 8b c8 e8 9c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb b0 10 64 c7 f7 7f 00 00 39 09 ff 15 32 cc 0a ff 48 8b c8 e8 7a d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 00 41 fc ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 f1 27 cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 10 64 c7 f7 7f 00 00 39 09 ff 15 b8 cb 0a ff 8b f0 48 8b cd 49 bb c0 10 64 c7 f7 7f 00 00 39 09 ff 15 a9 cb 0a ff 48 8b c8 e8 e1 d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb c8 10 64 c7 f7 7f 00 00 39 09 ff 15 8f cb 0a ff 48 8b c8 e8 17 2a ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 8b f6 ff ff 48 b9 e8 ad 85 c8 f7 7f 00 00 e8 44 27 cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 22 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 27 cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 8a 76 4e 48 8b d0 48 8b cf e8 41 40 1f ff 48 8b cf e8 31 73 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888ccf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 cc 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 1a cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888cee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ce 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 1a cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888d110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d1 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 1a cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888d298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 d2 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 1a cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76410d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 10 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f53200h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 ce 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76410d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 10 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f5320fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 cd 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d4 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c76410e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 10 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f53229h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 cd 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c76410e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 10 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f53243h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd cd 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 7e fc ff}
014ah mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 29 cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c7641090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 10 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f53327h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 cc 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7641098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 10 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f53336h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca cc 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d3 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8554020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fc fb ff}
01d5h mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 28 cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c76410a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 10 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f533a5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5b cc 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c76410a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 10 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f533b4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4c cc 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c76410b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 10 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f533ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 cc 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c85585b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 41 fc ff}
0290h mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 27 cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c76410b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 10 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f53448h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 cb 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c76410c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 10 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f53457h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 cb 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c8591700h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c76410c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 10 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f53471h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f cb 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 2a ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f6 ff ff}
033dh mov rcx,7ff7c885ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 27 cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 22 c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 27 cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 8a 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 40 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 73 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_vec128_op_g[16u]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 d4 88 c8 f7 7f 00 00 e8 7b 16 cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 d6 88 c8 f7 7f 00 00 e8 5d 16 cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 d9 88 c8 f7 7f 00 00 e8 3f 16 cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 da 88 c8 f7 7f 00 00 e8 21 16 cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 30 11 64 c7 f7 7f 00 00 39 09 ff 15 60 ca 0a ff 8b d8 48 8b cf 49 bb 38 11 64 c7 f7 7f 00 00 39 09 ff 15 51 ca 0a ff 48 8b c8 e8 01 d2 ff ff c5 f9 10 70 08 48 8b cf 49 bb 40 11 64 c7 f7 7f 00 00 39 09 ff 15 37 ca 0a ff 48 8b c8 e8 df d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 48 11 64 c7 f7 7f 00 00 39 09 ff 15 1d ca 0a ff 48 8b c8 e8 bd d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 7b fc ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 37 25 cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 10 64 c7 f7 7f 00 00 39 09 ff 15 39 c9 0a ff 8b e8 48 8b cf 49 bb f8 10 64 c7 f7 7f 00 00 39 09 ff 15 2a c9 0a ff 48 8b c8 e8 1a d1 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 7b f9 fb ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 ac 24 cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 11 64 c7 f7 7f 00 00 39 09 ff 15 bb c8 0a ff 8b f0 48 8b cb 49 bb 08 11 64 c7 f7 7f 00 00 39 09 ff 15 ac c8 0a ff 48 8b c8 e8 8c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb 10 11 64 c7 f7 7f 00 00 39 09 ff 15 92 c8 0a ff 48 8b c8 e8 6a d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 e0 3f fc ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 f1 23 cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 11 64 c7 f7 7f 00 00 39 09 ff 15 18 c8 0a ff 8b f0 48 8b cd 49 bb 20 11 64 c7 f7 7f 00 00 39 09 ff 15 09 c8 0a ff 48 8b c8 e8 d1 cf ff ff c5 f9 10 70 08 48 8b cd 49 bb 28 11 64 c7 f7 7f 00 00 39 09 ff 15 ef c7 0a ff 48 8b c8 e8 17 26 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 f2 ff ff 48 b9 58 b2 85 c8 f7 7f 00 00 e8 44 23 cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 1e c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 23 cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 86 76 4e 48 8b d0 48 8b cf e8 41 3c 1f ff 48 8b cf e8 31 6f c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888d4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d4 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 16 cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888d6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d6 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 16 cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888d910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 d9 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 16 cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888da98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 da 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 16 cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 11 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f535a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 ca 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7641138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 11 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f535afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 ca 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d2 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7641140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 11 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f535c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 ca 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df d1 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7641148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 11 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f535e3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d ca 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 7b fc ff}
014ah mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 25 cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c76410f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 10 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f536c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 c9 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c76410f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 10 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f536d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a c9 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d1 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8554170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b f9 fb ff}
01d5h mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 24 cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c7641100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 11 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f53745h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bb c8 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7641108h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 11 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f53754h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ac c8 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c d0 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7641110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 11 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f5376eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 c8 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d0 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8558890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 3f fc ff}
0290h mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 23 cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c7641118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 11 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f537e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 c8 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7641120h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 11 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f537f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 c8 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c85918f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cf ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7641128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 11 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f53811h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef c7 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 26 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f2 ff ff}
033dh mov rcx,7ff7c885b258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 b2 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 23 cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1e c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 23 cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 86 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 3c 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 6f c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_vec128_op_g[16i]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 dc 88 c8 f7 7f 00 00 e8 7b 12 cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 de 88 c8 f7 7f 00 00 e8 5d 12 cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 e1 88 c8 f7 7f 00 00 e8 3f 12 cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 e2 88 c8 f7 7f 00 00 e8 21 12 cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 90 11 64 c7 f7 7f 00 00 39 09 ff 15 c0 c6 0a ff 8b d8 48 8b cf 49 bb 98 11 64 c7 f7 7f 00 00 39 09 ff 15 b1 c6 0a ff 48 8b c8 e8 f1 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb a0 11 64 c7 f7 7f 00 00 39 09 ff 15 97 c6 0a ff 48 8b c8 e8 cf cf ff ff c5 f9 10 78 08 48 8b cf 49 bb a8 11 64 c7 f7 7f 00 00 39 09 ff 15 7d c6 0a ff 48 8b c8 e8 ad cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 77 fc ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 37 21 cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 11 64 c7 f7 7f 00 00 39 09 ff 15 99 c5 0a ff 8b e8 48 8b cf 49 bb 58 11 64 c7 f7 7f 00 00 39 09 ff 15 8a c5 0a ff 48 8b c8 e8 0a cf ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 cb f6 fb ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 ac 20 cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 11 64 c7 f7 7f 00 00 39 09 ff 15 1b c5 0a ff 8b f0 48 8b cb 49 bb 68 11 64 c7 f7 7f 00 00 39 09 ff 15 0c c5 0a ff 48 8b c8 e8 7c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 70 11 64 c7 f7 7f 00 00 39 09 ff 15 f2 c4 0a ff 48 8b c8 e8 5a ce ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 c0 3e fc ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 f1 1f cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 11 64 c7 f7 7f 00 00 39 09 ff 15 78 c4 0a ff 8b f0 48 8b cd 49 bb 80 11 64 c7 f7 7f 00 00 39 09 ff 15 69 c4 0a ff 48 8b c8 e8 c1 cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 88 11 64 c7 f7 7f 00 00 39 09 ff 15 4f c4 0a ff 48 8b c8 e8 17 22 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 5b ef ff ff 48 b9 c8 b6 85 c8 f7 7f 00 00 e8 44 1f cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 1a c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 1f cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 82 76 4e 48 8b d0 48 8b cf e8 41 38 1f ff 48 8b cf e8 31 6b c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888dcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 dc 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 12 cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888dee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 de 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 12 cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888e110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e1 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 12 cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888e298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e2 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 12 cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 11 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f53940h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 c6 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7641198h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 11 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f5394fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 c6 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cf ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c76411a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 11 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f53969h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 c6 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cf ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c76411a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 11 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f53983h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7d c6 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cf ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c2f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 77 fc ff}
014ah mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 21 cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c7641150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 11 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f53a67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 c5 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7641158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 11 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f53a76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a c5 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cf ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c85542c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f6 fb ff}
01d5h mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 20 cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c7641160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 11 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f53ae5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b c5 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7641168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 11 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f53af4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0c c5 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ce ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7641170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 11 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f53b0eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 c4 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ce ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8558b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 3e fc ff}
0290h mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1f cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c7641178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 11 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f53b88h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 c4 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7641180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 11 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f53b97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 c4 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c8591ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cd ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7641188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 11 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f53bb1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f c4 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 22 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b ef ff ff}
033dh mov rcx,7ff7c885b6c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 b6 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 1f cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 1a c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 1f cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 82 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 38 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 6b c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_vec128_op_g[32u]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 e4 88 c8 f7 7f 00 00 e8 7b 0e cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 e6 88 c8 f7 7f 00 00 e8 5d 0e cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 e9 88 c8 f7 7f 00 00 e8 3f 0e cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 ea 88 c8 f7 7f 00 00 e8 21 0e cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb f0 11 64 c7 f7 7f 00 00 39 09 ff 15 20 c3 0a ff 8b d8 48 8b cf 49 bb f8 11 64 c7 f7 7f 00 00 39 09 ff 15 11 c3 0a ff 48 8b c8 e8 e1 cd ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 12 64 c7 f7 7f 00 00 39 09 ff 15 f7 c2 0a ff 48 8b c8 e8 bf cd ff ff c5 f9 10 78 08 48 8b cf 49 bb 08 12 64 c7 f7 7f 00 00 39 09 ff 15 dd c2 0a ff 48 8b c8 e8 9d cd ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 74 fc ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 37 1d cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 11 64 c7 f7 7f 00 00 39 09 ff 15 f9 c1 0a ff 8b e8 48 8b cf 49 bb b8 11 64 c7 f7 7f 00 00 39 09 ff 15 ea c1 0a ff 48 8b c8 e8 fa cc ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 1b f4 fb ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 ac 1c cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 11 64 c7 f7 7f 00 00 39 09 ff 15 7b c1 0a ff 8b f0 48 8b cb 49 bb c8 11 64 c7 f7 7f 00 00 39 09 ff 15 6c c1 0a ff 48 8b c8 e8 6c cc ff ff c5 f9 10 70 08 48 8b cb 49 bb d0 11 64 c7 f7 7f 00 00 39 09 ff 15 52 c1 0a ff 48 8b c8 e8 4a cc ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 a0 3d fc ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 f1 1b cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 11 64 c7 f7 7f 00 00 39 09 ff 15 d8 c0 0a ff 8b f0 48 8b cd 49 bb e0 11 64 c7 f7 7f 00 00 39 09 ff 15 c9 c0 0a ff 48 8b c8 e8 b1 cb ff ff c5 f9 10 70 08 48 8b cd 49 bb e8 11 64 c7 f7 7f 00 00 39 09 ff 15 af c0 0a ff 48 8b c8 e8 17 1e ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 c3 eb ff ff 48 b9 38 bb 85 c8 f7 7f 00 00 e8 44 1b cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 16 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 1b cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 7e 76 4e 48 8b d0 48 8b cf e8 41 34 1f ff 48 8b cf e8 31 67 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888e4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e4 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 0e cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888e6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e6 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0e cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888e910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 e9 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 0e cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888ea98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ea 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0e cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76411f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 11 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f53ce0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 c3 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76411f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 11 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f53cefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 c3 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cd ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7641200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 12 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f53d09h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 c2 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf cd ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7641208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 12 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f53d23h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dd c2 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d cd ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 74 fc ff}
014ah mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 1d cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c76411b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 11 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f53e07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 c1 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c76411b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 11 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f53e16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea c1 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa cc ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8554410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f4 fb ff}
01d5h mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 1c cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c76411c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 11 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f53e85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b c1 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c76411c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 11 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f53e94h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6c c1 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c cc ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c76411d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 11 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f53eaeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 c1 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a cc ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8558e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 3d fc ff}
0290h mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1b cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c76411d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 11 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f53f28h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 c0 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c76411e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 11 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f53f37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 c0 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c8591cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 cb ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c76411e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 11 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f53f51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af c0 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 1e ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 eb ff ff}
033dh mov rcx,7ff7c885bb38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bb 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 1b cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 16 c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 1b cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7e 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 34 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 67 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_vec128_op_g[32i]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 ec 88 c8 f7 7f 00 00 e8 7b 0a cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 ee 88 c8 f7 7f 00 00 e8 5d 0a cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 f1 88 c8 f7 7f 00 00 e8 3f 0a cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 f2 88 c8 f7 7f 00 00 e8 21 0a cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 50 12 64 c7 f7 7f 00 00 39 09 ff 15 80 bf 0a ff 8b d8 48 8b cf 49 bb 58 12 64 c7 f7 7f 00 00 39 09 ff 15 71 bf 0a ff 48 8b c8 e8 d1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 60 12 64 c7 f7 7f 00 00 39 09 ff 15 57 bf 0a ff 48 8b c8 e8 af cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 68 12 64 c7 f7 7f 00 00 39 09 ff 15 3d bf 0a ff 48 8b c8 e8 8d cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 74 fc ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 37 19 cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 12 64 c7 f7 7f 00 00 39 09 ff 15 59 be 0a ff 8b e8 48 8b cf 49 bb 18 12 64 c7 f7 7f 00 00 39 09 ff 15 4a be 0a ff 48 8b c8 e8 ea ca ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b f1 fb ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 ac 18 cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 12 64 c7 f7 7f 00 00 39 09 ff 15 db bd 0a ff 8b f0 48 8b cb 49 bb 28 12 64 c7 f7 7f 00 00 39 09 ff 15 cc bd 0a ff 48 8b c8 e8 5c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb 30 12 64 c7 f7 7f 00 00 39 09 ff 15 b2 bd 0a ff 48 8b c8 e8 3a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 90 40 fc ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 f1 17 cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 12 64 c7 f7 7f 00 00 39 09 ff 15 38 bd 0a ff 8b f0 48 8b cd 49 bb 40 12 64 c7 f7 7f 00 00 39 09 ff 15 29 bd 0a ff 48 8b c8 e8 a1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 48 12 64 c7 f7 7f 00 00 39 09 ff 15 0f bd 0a ff 48 8b c8 e8 17 1a ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 2b e8 ff ff 48 b9 a8 bf 85 c8 f7 7f 00 00 e8 44 17 cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 12 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 17 cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 7a 76 4e 48 8b d0 48 8b cf e8 41 30 1f ff 48 8b cf e8 31 63 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888ecf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ec 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 0a cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888eee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ee 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 0a cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888f110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f1 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 0a cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888f298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f2 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0a cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 12 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f54080h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 bf 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7641258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 12 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f5408fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 bf 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7641260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 12 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f540a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 bf 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7641268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 12 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f540c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d bf 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cb ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c7f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 74 fc ff}
014ah mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 19 cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c7641210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 12 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f541a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 be 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7641218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 12 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f541b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a be 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea ca ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8554560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f1 fb ff}
01d5h mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 18 cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c7641220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 12 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f54225h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 db bd 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7641228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 12 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f54234h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cc bd 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7641230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 12 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f5424eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 bd 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8559540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 40 fc ff}
0290h mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 17 cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c7641238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 12 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f542c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 bd 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7641240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 12 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f542d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 bd 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c8591ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7641248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 12 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f542f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f bd 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 1a ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593d88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b e8 ff ff}
033dh mov rcx,7ff7c885bfa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bf 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 17 cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 12 c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 17 cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 7a 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 30 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 63 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_vec128_op_g[64u]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 f4 88 c8 f7 7f 00 00 e8 7b 06 cd 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 f6 88 c8 f7 7f 00 00 e8 5d 06 cd 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 10 f9 88 c8 f7 7f 00 00 e8 3f 06 cd 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 98 fa 88 c8 f7 7f 00 00 e8 21 06 cd 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb b0 12 64 c7 f7 7f 00 00 39 09 ff 15 e0 bb 0a ff 8b d8 48 8b cf 49 bb b8 12 64 c7 f7 7f 00 00 39 09 ff 15 d1 bb 0a ff 48 8b c8 e8 c1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 12 64 c7 f7 7f 00 00 39 09 ff 15 b7 bb 0a ff 48 8b c8 e8 9f c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb c8 12 64 c7 f7 7f 00 00 39 09 ff 15 9d bb 0a ff 48 8b c8 e8 7d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 71 fc ff 48 b9 20 2a 86 c8 f7 7f 00 00 e8 37 15 cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 12 64 c7 f7 7f 00 00 39 09 ff 15 b9 ba 0a ff 8b e8 48 8b cf 49 bb 78 12 64 c7 f7 7f 00 00 39 09 ff 15 aa ba 0a ff 48 8b c8 e8 da c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 bb ee fb ff 48 b9 20 2a 86 c8 f7 7f 00 00 e8 ac 14 cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 12 64 c7 f7 7f 00 00 39 09 ff 15 3b ba 0a ff 8b f0 48 8b cb 49 bb 88 12 64 c7 f7 7f 00 00 39 09 ff 15 2c ba 0a ff 48 8b c8 e8 4c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 90 12 64 c7 f7 7f 00 00 39 09 ff 15 12 ba 0a ff 48 8b c8 e8 2a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 70 3f fc ff 48 b9 20 2a 86 c8 f7 7f 00 00 e8 f1 13 cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 12 64 c7 f7 7f 00 00 39 09 ff 15 98 b9 0a ff 8b f0 48 8b cd 49 bb a0 12 64 c7 f7 7f 00 00 39 09 ff 15 89 b9 0a ff 48 8b c8 e8 91 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb a8 12 64 c7 f7 7f 00 00 39 09 ff 15 6f b9 0a ff 48 8b c8 e8 17 16 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 93 e4 ff ff 48 b9 20 2a 86 c8 f7 7f 00 00 e8 44 13 cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 0e c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 13 cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 76 76 4e 48 8b d0 48 8b cf e8 41 2c 1f ff 48 8b cf e8 31 5f c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888f4f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f4 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 06 cd 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888f6e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f6 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 06 cd 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c888f910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f9 88 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 06 cd 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c888fa98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 fa 88 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 06 cd 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76412b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 12 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f54420h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 bb 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76412b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 12 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f5442fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 bb 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c76412c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 12 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f54449h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 bb 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c76412c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 12 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f54463h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d bb 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c9 ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 71 fc ff}
014ah mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 15 cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c7641270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 12 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f54547h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 ba 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7641278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 12 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f54556h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa ba 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c85546b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ee fb ff}
01d5h mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 14 cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c7641280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 12 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f545c5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b ba 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7641288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 12 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f545d4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2c ba 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7641290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 12 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f545eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 ba 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8559820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 3f fc ff}
0290h mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 13 cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c7641298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 12 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f54668h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 b9 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c76412a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 12 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f54677h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 b9 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c85920b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c76412a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 12 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f54691h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f b9 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 16 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8593df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 e4 ff ff}
033dh mov rcx,7ff7c8862a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 2a 86 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 13 cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0e c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 13 cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 76 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 2c 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5f c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_vec128_op_g[64i]()[943] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 f0 fc 88 c8 f7 7f 00 00 e8 7b fe cc 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 e8 fe 88 c8 f7 7f 00 00 e8 5d fe cc 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 30 01 8a c8 f7 7f 00 00 e8 3f fe cc 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 b8 02 8a c8 f7 7f 00 00 e8 21 fe cc 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 10 13 64 c7 f7 7f 00 00 39 09 ff 15 40 b4 0a ff 8b d8 48 8b cf 49 bb 18 13 64 c7 f7 7f 00 00 39 09 ff 15 31 b4 0a ff 48 8b c8 e8 b1 c3 ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 13 64 c7 f7 7f 00 00 39 09 ff 15 17 b4 0a ff 48 8b c8 e8 8f c3 ff ff c5 f9 10 78 08 48 8b cf 49 bb 28 13 64 c7 f7 7f 00 00 39 09 ff 15 fd b3 0a ff 48 8b c8 e8 6d c3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 69 fc ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 37 0d cd 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 12 64 c7 f7 7f 00 00 39 09 ff 15 19 b3 0a ff 8b e8 48 8b cf 49 bb d8 12 64 c7 f7 7f 00 00 39 09 ff 15 0a b3 0a ff 48 8b c8 e8 ca c2 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 0b ec fb ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 ac 0c cd 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 12 64 c7 f7 7f 00 00 39 09 ff 15 9b b2 0a ff 8b f0 48 8b cb 49 bb e8 12 64 c7 f7 7f 00 00 39 09 ff 15 8c b2 0a ff 48 8b c8 e8 3c c2 ff ff c5 f9 10 70 08 48 8b cb 49 bb f0 12 64 c7 f7 7f 00 00 39 09 ff 15 72 b2 0a ff 48 8b c8 e8 1a c2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 50 3a fc ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 f1 0b cd 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 12 64 c7 f7 7f 00 00 39 09 ff 15 f8 b1 0a ff 8b f0 48 8b cd 49 bb 00 13 64 c7 f7 7f 00 00 39 09 ff 15 e9 b1 0a ff 48 8b c8 e8 81 c1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 08 13 64 c7 f7 7f 00 00 39 09 ff 15 cf b1 0a ff 48 8b c8 e8 17 0e ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 03 f9 ff ff 48 b9 18 c4 85 c8 f7 7f 00 00 e8 44 0b cd 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 33 06 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 01 0b cd 5e 48 8b f8 48 8b ce 33 d2 e8 54 6e 76 4e 48 8b d0 48 8b cf e8 41 24 1f ff 48 8b cf e8 31 57 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,0c8h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec c8 00 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+0b0h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 b0 00 00 00}
0017h vmovaps [rsp+0a0h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 a0 00 00 00}
0020h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0023h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0026h mov rcx,7ff7c888fcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fc 88 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b fe cc 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c888fee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fe 88 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d fe cc 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c88a0130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 01 8a c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f fe cc 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c88a02b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 02 8a c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 fe cc 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 13 64 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0f54bc0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 b4 0a ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7641318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 64 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0f54bcfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 b4 0a ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c3 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7641320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0f54be9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 b4 0a ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7641328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 64 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0f54c03h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd b3 0a ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d c3 ff ff}
0113h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0118h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
011dh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
011fh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0125h vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
012bh vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0131h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0136h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
013bh lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0140h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0145h call 7ff7c855c8f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 69 fc ff}
014ah mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 0d cd 5e}
0159h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
015fh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0164h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
016dh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0176h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
017dh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
017eh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
017fh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0180h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0181h ret                                     ; RET || C3 || encoded[1]{c3}
0182h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0185h mov r11,7ff7c76412d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 12 64 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0f54ce7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 b3 0a ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c76412d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 12 64 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0f54cf6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a b3 0a ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c2 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c8554c00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ec fb ff}
01d5h mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 0c cd 5e}
01e4h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
01edh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
01f2h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
01fbh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0204h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
020bh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
020ch pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
020dh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
020eh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
020fh ret                                     ; RET || C3 || encoded[1]{c3}
0210h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0213h mov r11,7ff7c76412e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 12 64 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0f54d65h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b b2 0a ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c76412e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 12 64 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0f54d74h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8c b2 0a ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c76412f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 12 64 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0f54d8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 b2 0a ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c8559b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 3a fc ff}
0290h mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 0b cd 5e}
029fh vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02a8h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02adh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02b6h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02bfh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02c6h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02c7h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02c8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02c9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
02cah ret                                     ; RET || C3 || encoded[1]{c3}
02cbh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02ceh mov r11,7ff7c76412f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 12 64 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0f54e08h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 b1 0a ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7641300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 13 64 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0f54e17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 b1 0a ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c85922a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 c1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7641308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 13 64 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0f54e31h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf b1 0a ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 0e ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c8595a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f9 ff ff}
033dh mov rcx,7ff7c885c418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c4 85 c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 0b cd 5e}
034ch vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
0352h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0357h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0360h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0369h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0370h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0371h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0372h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0373h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0374h ret                                     ; RET || C3 || encoded[1]{c3}
0375h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 06 c2 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 0b cd 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 6e 76 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 24 1f ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 57 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_vec256_op_g[8u]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 c8 0a 8a c8 f7 7f 00 00 e8 69 fa cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c0 0c 8a c8 f7 7f 00 00 e8 4b fa cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 e8 0e 8a c8 f7 7f 00 00 e8 2d fa cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 70 10 8a c8 f7 7f 00 00 e8 0f fa cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 70 13 64 c7 f7 7f 00 00 39 09 ff 15 8e b0 0a ff 8b d8 48 8b cf 49 bb 78 13 64 c7 f7 7f 00 00 39 09 ff 15 7f b0 0a ff 48 8b c8 e8 9f c5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 80 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5f b0 0a ff 48 8b c8 e8 77 c5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 88 13 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 3f b0 0a ff 48 8b c8 e8 4f c5 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 d9 65 fc ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 0a 09 cd 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 13 64 c7 f7 7f 00 00 39 09 ff 15 34 af 0a ff 8b e8 48 8b cf 49 bb 38 13 64 c7 f7 7f 00 00 39 09 ff 15 25 af 0a ff 48 8b c8 e8 85 c4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 16 e9 fb ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 67 08 cd 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 13 64 c7 f7 7f 00 00 39 09 ff 15 a1 ae 0a ff 8b f0 48 8b cb 49 bb 48 13 64 c7 f7 7f 00 00 39 09 ff 15 92 ae 0a ff 48 8b c8 e8 e2 c3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 50 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 72 ae 0a ff 48 8b c8 e8 ba c3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 da 3c fc ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 8b 07 cd 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 13 64 c7 f7 7f 00 00 39 09 ff 15 dd ad 0a ff 8b f0 48 8b cd 49 bb 60 13 64 c7 f7 7f 00 00 39 09 ff 15 ce ad 0a ff 48 8b c8 e8 06 c3 ff ff c5 fd 10 70 08 48 8b cd 49 bb 68 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ae ad 0a ff 48 8b c8 e8 96 09 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 49 f6 ff ff 48 b9 a0 ce 85 c8 f7 7f 00 00 e8 ba 06 cd 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 91 01 c2 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 5f 06 cd 5e 48 8b f8 48 8b ce 33 d2 e8 b2 69 76 4e 48 8b d0 48 8b cf e8 9f 1f 1f ff 48 8b cf e8 8f 52 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a0ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0a 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 fa cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a0cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 0c 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fa cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a0ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0e 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fa cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a1070h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 10 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f fa cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f54f72h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e b0 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f54f81h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f b0 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c5 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7641380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f54fa1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f b0 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c5 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f54fc1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f b0 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c5 ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855c970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 65 fc ff}
0177h mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 09 cd 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c7641330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f550cch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 34 af 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7641338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f550dbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 af 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c4 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8554d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 e9 fb ff}
021ah mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 08 cd 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c7641340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f5515fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 ae 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7641348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f5516eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ae 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c3 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7641350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f5518eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 ae 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c3 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855a1f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 3c fc ff}
02f6h mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 07 cd 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f55223h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dd ad 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7641360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f55232h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce ad 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c85928a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c3 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7641368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f55252h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae ad 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 09 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8595c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f6 ff ff}
03c7h mov rcx,7ff7c885cea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ce 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 06 cd 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 01 c2 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 06 cd 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 69 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1f 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 52 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_vec256_op_g[8i]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 1c 8a c8 f7 7f 00 00 e8 b9 f5 cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 1e 8a c8 f7 7f 00 00 e8 9b f5 cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 20 8a c8 f7 7f 00 00 e8 7d f5 cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 21 8a c8 f7 7f 00 00 e8 5f f5 cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb d0 13 64 c7 f7 7f 00 00 39 09 ff 15 3e ac 0a ff 8b d8 48 8b cf 49 bb d8 13 64 c7 f7 7f 00 00 39 09 ff 15 2f ac 0a ff 48 8b c8 e8 1f c3 ff ff c5 fd 10 70 08 48 8b cf 49 bb e0 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0f ac 0a ff 48 8b c8 e8 f7 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb e8 13 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 ef ab 0a ff 48 8b c8 e8 cf c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a9 61 fc ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 5a 04 cd 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 13 64 c7 f7 7f 00 00 39 09 ff 15 e4 aa 0a ff 8b e8 48 8b cf 49 bb 98 13 64 c7 f7 7f 00 00 39 09 ff 15 d5 aa 0a ff 48 8b c8 e8 05 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c6 e5 fb ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 b7 03 cd 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 13 64 c7 f7 7f 00 00 39 09 ff 15 51 aa 0a ff 8b f0 48 8b cb 49 bb a8 13 64 c7 f7 7f 00 00 39 09 ff 15 42 aa 0a ff 48 8b c8 e8 62 c1 ff ff c5 fd 10 70 08 48 8b cb 49 bb b0 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 22 aa 0a ff 48 8b c8 e8 3a c1 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 1a 3b fc ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 db 02 cd 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 13 64 c7 f7 7f 00 00 39 09 ff 15 8d a9 0a ff 8b f0 48 8b cd 49 bb c0 13 64 c7 f7 7f 00 00 39 09 ff 15 7e a9 0a ff 48 8b c8 e8 86 c0 ff ff c5 fd 10 70 08 48 8b cd 49 bb c8 13 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5e a9 0a ff 48 8b c8 e8 e6 04 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 31 f2 ff ff 48 b9 70 d3 85 c8 f7 7f 00 00 e8 0a 02 cd 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e1 fc c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 af 01 cd 5e 48 8b f8 48 8b ce 33 d2 e8 02 65 76 4e 48 8b d0 48 8b cf e8 ef 1a 1f ff 48 8b cf e8 df 4d c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a1c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1c 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f5 cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a1e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 1e 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a2068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 20 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f5 cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a21f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 21 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f5 cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76413d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f553c2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e ac 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76413d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f553d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f ac 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c3 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c76413e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f553f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f ac 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c2 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c76413e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f55411h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef ab 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c2 ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855c9f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 61 fc ff}
0177h mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 04 cd 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c7641390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f5551ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e4 aa 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7641398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f5552bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 aa 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c2 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8554eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e5 fb ff}
021ah mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 03 cd 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c76413a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f555afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 aa 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c76413a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f555beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 aa 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c1 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c76413b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f555deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 aa 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c1 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855a4e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 3b fc ff}
02f6h mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 02 cd 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76413b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f55673h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8d a9 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c76413c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f55682h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e a9 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c8592ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 c0 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c76413c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f556a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e a9 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 04 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8595cc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f2 ff ff}
03c7h mov rcx,7ff7c885d370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 d3 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 02 cd 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 fc c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 01 cd 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 65 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 1a 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 4d c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_vec256_op_g[16u]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 24 8a c8 f7 7f 00 00 e8 09 f1 cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 26 8a c8 f7 7f 00 00 e8 eb f0 cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 28 8a c8 f7 7f 00 00 e8 cd f0 cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 29 8a c8 f7 7f 00 00 e8 af f0 cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 30 14 64 c7 f7 7f 00 00 39 09 ff 15 ee a7 0a ff 8b d8 48 8b cf 49 bb 38 14 64 c7 f7 7f 00 00 39 09 ff 15 df a7 0a ff 48 8b c8 e8 9f c0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 bf a7 0a ff 48 8b c8 e8 77 c0 ff ff c5 7d 10 40 08 48 8b cf 49 bb 48 14 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 9f a7 0a ff 48 8b c8 e8 4f c0 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 79 5d fc ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 aa ff cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 13 64 c7 f7 7f 00 00 39 09 ff 15 94 a6 0a ff 8b e8 48 8b cf 49 bb f8 13 64 c7 f7 7f 00 00 39 09 ff 15 85 a6 0a ff 48 8b c8 e8 85 bf ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 76 e2 fb ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 07 ff cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 14 64 c7 f7 7f 00 00 39 09 ff 15 01 a6 0a ff 8b f0 48 8b cb 49 bb 08 14 64 c7 f7 7f 00 00 39 09 ff 15 f2 a5 0a ff 48 8b c8 e8 e2 be ff ff c5 fd 10 70 08 48 8b cb 49 bb 10 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 d2 a5 0a ff 48 8b c8 e8 ba be ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 3d fc ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 2b fe cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 14 64 c7 f7 7f 00 00 39 09 ff 15 3d a5 0a ff 8b f0 48 8b cd 49 bb 20 14 64 c7 f7 7f 00 00 39 09 ff 15 2e a5 0a ff 48 8b c8 e8 06 be ff ff c5 fd 10 70 08 48 8b cd 49 bb 28 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0e a5 0a ff 48 8b c8 e8 36 00 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e9 ed ff ff 48 b9 e0 d7 85 c8 f7 7f 00 00 e8 5a fd cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 31 f8 c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 ff fc cc 5e 48 8b f8 48 8b ce 33 d2 e8 52 60 76 4e 48 8b d0 48 8b cf e8 3f 16 1f ff 48 8b cf e8 2f 49 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a2448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 24 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f1 cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a2640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 26 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f0 cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a2868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 28 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f0 cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a29f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 29 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f0 cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 14 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f55812h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee a7 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 14 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f55821h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df a7 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c0 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7641440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 14 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f55841h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf a7 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c0 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f55861h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f a7 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c0 ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 5d fc ff}
0177h mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa ff cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c76413f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f5596ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 94 a6 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c76413f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f5597bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 a6 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bf ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8555010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 e2 fb ff}
021ah mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ff cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c7641400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 14 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f559ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 a6 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7641408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 14 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f55a0eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 a5 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 be ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7641410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 14 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f55a2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 a5 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba be ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855abd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 3d fc ff}
02f6h mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fe cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 14 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f55ac3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d a5 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7641420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 14 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f55ad2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e a5 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c8592d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 be ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7641428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 14 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f55af2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e a5 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 00 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8595d30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ed ff ff}
03c7h mov rcx,7ff7c885d7e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 d7 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a fd cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f8 c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff fc cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 60 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 16 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 49 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_vec256_op_g[16i]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 2c 8a c8 f7 7f 00 00 e8 59 ec cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 2e 8a c8 f7 7f 00 00 e8 3b ec cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 30 8a c8 f7 7f 00 00 e8 1d ec cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 31 8a c8 f7 7f 00 00 e8 ff eb cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 90 14 64 c7 f7 7f 00 00 39 09 ff 15 9e a3 0a ff 8b d8 48 8b cf 49 bb 98 14 64 c7 f7 7f 00 00 39 09 ff 15 8f a3 0a ff 48 8b c8 e8 1f be ff ff c5 fd 10 70 08 48 8b cf 49 bb a0 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6f a3 0a ff 48 8b c8 e8 f7 bd ff ff c5 7d 10 40 08 48 8b cf 49 bb a8 14 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 4f a3 0a ff 48 8b c8 e8 cf bd ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 49 59 fc ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 fa fa cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 14 64 c7 f7 7f 00 00 39 09 ff 15 44 a2 0a ff 8b e8 48 8b cf 49 bb 58 14 64 c7 f7 7f 00 00 39 09 ff 15 35 a2 0a ff 48 8b c8 e8 05 bd ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 26 df fb ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 57 fa cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 14 64 c7 f7 7f 00 00 39 09 ff 15 b1 a1 0a ff 8b f0 48 8b cb 49 bb 68 14 64 c7 f7 7f 00 00 39 09 ff 15 a2 a1 0a ff 48 8b c8 e8 62 bc ff ff c5 fd 10 70 08 48 8b cb 49 bb 70 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 82 a1 0a ff 48 8b c8 e8 3a bc ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 3b fc ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 7b f9 cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 14 64 c7 f7 7f 00 00 39 09 ff 15 ed a0 0a ff 8b f0 48 8b cd 49 bb 80 14 64 c7 f7 7f 00 00 39 09 ff 15 de a0 0a ff 48 8b c8 e8 86 bb ff ff c5 fd 10 70 08 48 8b cd 49 bb 88 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 be a0 0a ff 48 8b c8 e8 86 fb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 a1 e9 ff ff 48 b9 50 dc 85 c8 f7 7f 00 00 e8 aa f8 cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 81 f3 c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 4f f8 cc 5e 48 8b f8 48 8b ce 33 d2 e8 a2 5b 76 4e 48 8b d0 48 8b cf e8 8f 11 1f ff 48 8b cf e8 7f 44 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a2c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 2c 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ec cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a2e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 2e 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ec cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a3068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 30 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d ec cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a31f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 31 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff eb cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f55c62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e a3 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f55c71h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f a3 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f be ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c76414a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f55c91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f a3 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 bd ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c76414a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f55cb1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f a3 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf bd ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855caf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 59 fc ff}
0177h mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa fa cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c7641450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f55dbch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 44 a2 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7641458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f55dcbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 a2 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bd ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8555170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 df fb ff}
021ah mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fa cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c7641460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f55e4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 a1 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7641468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f55e5eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 a1 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bc ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7641470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f55e7eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 a1 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bc ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855aec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 3b fc ff}
02f6h mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b f9 cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f55f13h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ed a0 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7641480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f55f22h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de a0 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c8592f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bb ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7641488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f55f42h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be a0 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8595d98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 e9 ff ff}
03c7h mov rcx,7ff7c885dc50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 dc 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f8 cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 f3 c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f8 cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 5b 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 11 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 44 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_vec256_op_g[32u]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 34 8a c8 f7 7f 00 00 e8 a9 e7 cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 36 8a c8 f7 7f 00 00 e8 8b e7 cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 38 8a c8 f7 7f 00 00 e8 6d e7 cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 39 8a c8 f7 7f 00 00 e8 4f e7 cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb f0 14 64 c7 f7 7f 00 00 39 09 ff 15 4e 9f 0a ff 8b d8 48 8b cf 49 bb f8 14 64 c7 f7 7f 00 00 39 09 ff 15 3f 9f 0a ff 48 8b c8 e8 9f bb ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1f 9f 0a ff 48 8b c8 e8 77 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb 08 15 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 ff 9e 0a ff 48 8b c8 e8 4f bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 19 55 fc ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 4a f6 cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 14 64 c7 f7 7f 00 00 39 09 ff 15 f4 9d 0a ff 8b e8 48 8b cf 49 bb b8 14 64 c7 f7 7f 00 00 39 09 ff 15 e5 9d 0a ff 48 8b c8 e8 85 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d6 db fb ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 a7 f5 cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 14 64 c7 f7 7f 00 00 39 09 ff 15 61 9d 0a ff 8b f0 48 8b cb 49 bb c8 14 64 c7 f7 7f 00 00 39 09 ff 15 52 9d 0a ff 48 8b c8 e8 e2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb d0 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 32 9d 0a ff 48 8b c8 e8 ba b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 da 39 fc ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 cb f4 cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 14 64 c7 f7 7f 00 00 39 09 ff 15 9d 9c 0a ff 8b f0 48 8b cd 49 bb e0 14 64 c7 f7 7f 00 00 39 09 ff 15 8e 9c 0a ff 48 8b c8 e8 06 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb e8 14 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6e 9c 0a ff 48 8b c8 e8 d6 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 e5 ff ff 48 b9 c0 e0 85 c8 f7 7f 00 00 e8 fa f3 cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 d1 ee c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 9f f3 cc 5e 48 8b f8 48 8b ce 33 d2 e8 f2 56 76 4e 48 8b d0 48 8b cf e8 df 0c 1f ff 48 8b cf e8 cf 3f c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a3448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 34 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e7 cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a3640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 36 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b e7 cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a3868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 38 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d e7 cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a39f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 39 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e7 cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76414f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f560b2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e 9f 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76414f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f560c1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f 9f 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bb ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7641500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f560e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f 9f 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f56101h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 9e 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bb ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855cb70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 55 fc ff}
0177h mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a f6 cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c76414b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f5620ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f4 9d 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c76414b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f5621bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 9d 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ba ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c85552d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 db fb ff}
021ah mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f5 cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c76414c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f5629fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 9d 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c76414c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f562aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 9d 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b9 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c76414d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f562ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 9d 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b9 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855b1b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 39 fc ff}
02f6h mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f4 cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76414d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f56363h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d 9c 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c76414e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f56372h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e 9c 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c8593160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b9 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c76414e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f56392h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e 9c 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 f6 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8595e00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e5 ff ff}
03c7h mov rcx,7ff7c885e0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 e0 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa f3 cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 ee c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f f3 cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 56 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 0c 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 3f c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_vec256_op_g[32i]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 3c 8a c8 f7 7f 00 00 e8 f9 de cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 3e 8a c8 f7 7f 00 00 e8 db de cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 40 8a c8 f7 7f 00 00 e8 bd de cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 41 8a c8 f7 7f 00 00 e8 9f de cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 50 15 64 c7 f7 7f 00 00 39 09 ff 15 fe 96 0a ff 8b d8 48 8b cf 49 bb 58 15 64 c7 f7 7f 00 00 39 09 ff 15 ef 96 0a ff 48 8b c8 e8 1f b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 cf 96 0a ff 48 8b c8 e8 f7 b4 ff ff c5 7d 10 40 08 48 8b cf 49 bb 68 15 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 af 96 0a ff 48 8b c8 e8 cf b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e9 4c fc ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 9a ed cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 15 64 c7 f7 7f 00 00 39 09 ff 15 a4 95 0a ff 8b e8 48 8b cf 49 bb 18 15 64 c7 f7 7f 00 00 39 09 ff 15 95 95 0a ff 48 8b c8 e8 05 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 86 d4 fb ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 f7 ec cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 15 64 c7 f7 7f 00 00 39 09 ff 15 11 95 0a ff 8b f0 48 8b cb 49 bb 28 15 64 c7 f7 7f 00 00 39 09 ff 15 02 95 0a ff 48 8b c8 e8 62 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 30 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 e2 94 0a ff 48 8b c8 e8 3a b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 1a 34 fc ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 1b ec cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 15 64 c7 f7 7f 00 00 39 09 ff 15 4d 94 0a ff 8b f0 48 8b cd 49 bb 40 15 64 c7 f7 7f 00 00 39 09 ff 15 3e 94 0a ff 48 8b c8 e8 86 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 48 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1e 94 0a ff 48 8b c8 e8 26 ee fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 89 f8 ff ff 48 b9 30 e5 85 c8 f7 7f 00 00 e8 4a eb cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 21 e6 c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 ef ea cc 5e 48 8b f8 48 8b ce 33 d2 e8 42 4e 76 4e 48 8b d0 48 8b cf e8 2f 04 1f ff 48 8b cf e8 1f 37 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a3c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 3c 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 de cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a3e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 3e 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db de cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a4068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 40 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd de cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a41f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 41 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f de cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f56902h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe 96 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f56911h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef 96 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b5 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7641560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f56931h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf 96 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f56951h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af 96 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b4 ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855cbf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 4c fc ff}
0177h mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a ed cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c7641510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f56a5ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a4 95 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7641518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f56a6bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 95 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b4 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8555430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 d4 fb ff}
021ah mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ec cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c7641520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f56aefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 95 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7641528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f56afeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 95 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b3 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7641530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f56b1eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 94 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b3 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855b4a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 34 fc ff}
02f6h mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ec cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f56bb3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4d 94 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7641540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f56bc2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e 94 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c8593390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b2 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7641548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f56be2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1e 94 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ee fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c85979e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f8 ff ff}
03c7h mov rcx,7ff7c885e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a eb cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e6 c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef ea cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 4e 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 04 1f ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 37 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_vec256_op_g[64u]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 44 8a c8 f7 7f 00 00 e8 49 da cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 46 8a c8 f7 7f 00 00 e8 2b da cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 48 8a c8 f7 7f 00 00 e8 0d da cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 49 8a c8 f7 7f 00 00 e8 ef d9 cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb b0 15 64 c7 f7 7f 00 00 39 09 ff 15 ae 92 0a ff 8b d8 48 8b cf 49 bb b8 15 64 c7 f7 7f 00 00 39 09 ff 15 9f 92 0a ff 48 8b c8 e8 9f b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7f 92 0a ff 48 8b c8 e8 77 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb c8 15 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 5f 92 0a ff 48 8b c8 e8 4f b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 b9 48 fc ff 48 b9 78 38 86 c8 f7 7f 00 00 e8 ea e8 cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 15 64 c7 f7 7f 00 00 39 09 ff 15 54 91 0a ff 8b e8 48 8b cf 49 bb 78 15 64 c7 f7 7f 00 00 39 09 ff 15 45 91 0a ff 48 8b c8 e8 85 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 36 d1 fb ff 48 b9 78 38 86 c8 f7 7f 00 00 e8 47 e8 cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 15 64 c7 f7 7f 00 00 39 09 ff 15 c1 90 0a ff 8b f0 48 8b cb 49 bb 88 15 64 c7 f7 7f 00 00 39 09 ff 15 b2 90 0a ff 48 8b c8 e8 e2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 90 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 92 90 0a ff 48 8b c8 e8 ba b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 36 fc ff 48 b9 78 38 86 c8 f7 7f 00 00 e8 6b e7 cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 15 64 c7 f7 7f 00 00 39 09 ff 15 fd 8f 0a ff 8b f0 48 8b cd 49 bb a0 15 64 c7 f7 7f 00 00 39 09 ff 15 ee 8f 0a ff 48 8b c8 e8 06 b0 ff ff c5 fd 10 70 08 48 8b cd 49 bb a8 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ce 8f 0a ff 48 8b c8 e8 76 e9 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 41 f4 ff ff 48 b9 78 38 86 c8 f7 7f 00 00 e8 9a e6 cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 71 e1 c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 3f e6 cc 5e 48 8b f8 48 8b ce 33 d2 e8 92 49 76 4e 48 8b d0 48 8b cf e8 7f ff 1e ff 48 8b cf e8 6f 32 c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a4448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 44 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 da cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a4640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 46 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b da cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a4868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 48 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d da cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a49f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 49 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d9 cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76415b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f56d52h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae 92 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76415b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f56d61h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 92 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b2 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c76415c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f56d81h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 92 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b2 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c76415c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f56da1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f 92 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b2 ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855cc70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 48 fc ff}
0177h mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e8 cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c7641570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f56each]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 54 91 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7641578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f56ebbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 91 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b1 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c8555590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 d1 fb ff}
021ah mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e8 cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c7641580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f56f3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 90 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7641588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f56f4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 90 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b0 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7641590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f56f6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 90 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b0 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855bb90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 36 fc ff}
02f6h mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e7 cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f57003h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd 8f 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c76415a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f57012h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee 8f 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c85935c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b0 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c76415a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f57032h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce 8f 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 e9 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8597a48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f4 ff ff}
03c7h mov rcx,7ff7c8863878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 38 86 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a e6 cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 e1 c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f e6 cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 49 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ff 1e ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 32 c4 5e}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_vec256_op_g[64i]()[1105] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 4c 8a c8 f7 7f 00 00 e8 99 d5 cc 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 4e 8a c8 f7 7f 00 00 e8 7b d5 cc 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 50 8a c8 f7 7f 00 00 e8 5d d5 cc 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 51 8a c8 f7 7f 00 00 e8 3f d5 cc 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 10 16 64 c7 f7 7f 00 00 39 09 ff 15 5e 8e 0a ff 8b d8 48 8b cf 49 bb 18 16 64 c7 f7 7f 00 00 39 09 ff 15 4f 8e 0a ff 48 8b c8 e8 1f b0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 16 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2f 8e 0a ff 48 8b c8 e8 f7 af ff ff c5 7d 10 40 08 48 8b cf 49 bb 28 16 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 0f 8e 0a ff 48 8b c8 e8 cf af ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 89 44 fc ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 3a e4 cc 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 15 64 c7 f7 7f 00 00 39 09 ff 15 04 8d 0a ff 8b e8 48 8b cf 49 bb d8 15 64 c7 f7 7f 00 00 39 09 ff 15 f5 8c 0a ff 48 8b c8 e8 05 af ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e6 cd fb ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 97 e3 cc 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 15 64 c7 f7 7f 00 00 39 09 ff 15 71 8c 0a ff 8b f0 48 8b cb 49 bb e8 15 64 c7 f7 7f 00 00 39 09 ff 15 62 8c 0a ff 48 8b c8 e8 62 ae ff ff c5 fd 10 70 08 48 8b cb 49 bb f0 15 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 42 8c 0a ff 48 8b c8 e8 3a ae ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 34 fc ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 bb e2 cc 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 15 64 c7 f7 7f 00 00 39 09 ff 15 ad 8b 0a ff 8b f0 48 8b cd 49 bb 00 16 64 c7 f7 7f 00 00 39 09 ff 15 9e 8b 0a ff 48 8b c8 e8 86 ad ff ff c5 fd 10 70 08 48 8b cd 49 bb 08 16 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7e 8b 0a ff 48 8b c8 e8 c6 e4 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f9 ef ff ff 48 b9 a0 e9 85 c8 f7 7f 00 00 e8 ea e1 cc 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 c1 dc c1 5e 48 8b f0 48 b9 d0 c3 99 c7 f7 7f 00 00 e8 8f e1 cc 5e 48 8b f8 48 8b ce 33 d2 e8 e2 44 76 4e 48 8b d0 48 8b cf e8 cf fa 1e ff 48 8b cf e8 bf 2d c4 5e}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h push rbp                                ; PUSH r64 || 50+ro || encoded[1]{55}
0003h push rbx                                ; PUSH r64 || 50+ro || encoded[1]{53}
0004h sub rsp,168h                            ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 68 01 00 00}
000bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000eh vmovaps [rsp+150h],xmm6                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 b4 24 50 01 00 00}
0017h vmovaps [rsp+140h],xmm7                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 f8 29 bc 24 40 01 00 00}
0020h vmovaps [rsp+130h],xmm8                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 84 24 30 01 00 00}
0029h vmovaps [rsp+120h],xmm9                 ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[9]{c5 78 29 8c 24 20 01 00 00}
0032h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0035h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0038h mov rcx,7ff7c88a4c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 4c 8a c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 d5 cc 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c88a4e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 4e 8a c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d5 cc 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c88a5068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 50 8a c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d d5 cc 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c88a51f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 51 8a c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f d5 cc 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 64 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0f571a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e 8e 0a ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 64 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0f571b1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f 8e 0a ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b0 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7641620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 64 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0f571d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f 8e 0a ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 af ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7641628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 64 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0f571f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f 8e 0a ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf af ff ff}
0131h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0136h lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
013eh mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0140h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0146h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
014ch vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
0152h vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0158h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
015eh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0163h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0168h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
016dh mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
0172h call 7ff7c855ccf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 44 fc ff}
0177h mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a e4 cc 5e}
0186h vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
018fh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0194h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
019dh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01a6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01afh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01b8h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01bbh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01c2h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01c3h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01c4h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01c5h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01c6h ret                                     ; RET || C3 || encoded[1]{c3}
01c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01cah mov r11,7ff7c76415d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 64 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0f572fch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 04 8d 0a ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c76415d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 64 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0f5730bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 8c 0a ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 af ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c85556f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 cd fb ff}
021ah mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 e3 cc 5e}
0229h vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0232h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0237h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0240h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0249h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0252h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
025bh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
025eh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0265h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0266h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0267h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0268h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0269h ret                                     ; RET || C3 || encoded[1]{c3}
026ah mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
026dh mov r11,7ff7c76415e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 64 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0f5738fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 8c 0a ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c76415e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 64 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0f5739eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 8c 0a ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ae ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c76415f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 64 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0f573beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 8c 0a ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ae ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c855be80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 34 fc ff}
02f6h mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e2 cc 5e}
0305h vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
030eh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0313h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
031ch vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
0325h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
032eh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0337h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
033ah add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0341h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0342h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0343h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0344h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0345h ret                                     ; RET || C3 || encoded[1]{c3}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76415f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 64 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0f57453h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ad 8b 0a ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7641600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 64 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0f57462h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e 8b 0a ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c85937f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ad ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7641608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 64 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0f57482h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e 8b 0a ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c8586f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e4 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8597ab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ef ff ff}
03c7h mov rcx,7ff7c885e9a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e9 85 c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea e1 cc 5e}
03d6h vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
03dfh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
03e4h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
03edh vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
03f6h vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
03ffh vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0408h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
040bh add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0412h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0413h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0414h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0415h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0416h ret                                     ; RET || C3 || encoded[1]{c3}
0417h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 dc c1 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c799c3d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 c3 99 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f e1 cc 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 44 76 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c7788608h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fa 1e ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 2d c4 5e}
