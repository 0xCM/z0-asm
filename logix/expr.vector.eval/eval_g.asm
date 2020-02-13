------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[8u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a0 3e ca c8 f7 7f 00 00 e8 fc ab b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 20 d5 cc c8 f7 7f 00 00 e8 e1 ab b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 08 d6 cc c8 f7 7f 00 00 e8 c6 ab b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 b8 d6 cc c8 f7 7f 00 00 e8 ab ab b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 f0 3f ca c8 f7 7f 00 00 e8 90 ab b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb c8 15 62 c7 f7 7f 00 00 39 09 ff 15 67 64 f2 fe 48 8b c8 e8 5f 97 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 15 62 c7 f7 7f 00 00 39 09 ff 15 4d 64 f2 fe 48 8b c8 e8 3d 97 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 70 3d ca c8 f7 7f 00 00 e8 05 bb b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b0 15 62 c7 f7 7f 00 00 39 09 ff 15 e1 63 f2 fe 48 b9 70 3d ca c8 f7 7f 00 00 e8 d2 ba b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb b8 15 62 c7 f7 7f 00 00 39 09 ff 15 b8 63 f2 fe 48 8b c8 e8 c0 96 ff ff eb 27 48 8b c8 49 bb c0 15 62 c7 f7 7f 00 00 39 09 ff 15 a1 63 f2 fe 48 8b c8 e8 a1 96 ff ff eb 08 48 8b c8 e8 9f fa ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 89 b5 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 57 ba b6 5e 48 8b f8 48 8b ce 33 d2 e8 aa 1d 60 4e 48 8b d0 48 8b cf e8 ff ef 06 ff 48 8b cf e8 87 06 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca3ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3e ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc ab b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ccd520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d5 cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ab b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ccd608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d6 cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ab b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ccd6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d6 cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ab b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca3ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3f ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 ab b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76215c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10d9b99h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 64 f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f48c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 97 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76215d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10d9bb3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4d 64 f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f48c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 97 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bb b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76215b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10d9c1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 63 f2 fe}
011fh mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ba b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76215b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10d9c48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 63 f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f48c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 96 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76215c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10d9c5fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 63 f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f48c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 96 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86facd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f fa ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 b5 ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 ba b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 1d 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ef 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 06 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[8i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 70 43 ca c8 f7 7f 00 00 e8 0c aa b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 d8 db cc c8 f7 7f 00 00 e8 f1 a9 b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 c0 dc cc c8 f7 7f 00 00 e8 d6 a9 b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 70 dd cc c8 f7 7f 00 00 e8 bb a9 b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 c0 44 ca c8 f7 7f 00 00 e8 a0 a9 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb f0 15 62 c7 f7 7f 00 00 39 09 ff 15 9f 62 f2 fe 48 8b c8 e8 9f 95 ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 15 62 c7 f7 7f 00 00 39 09 ff 15 85 62 f2 fe 48 8b c8 e8 7d 95 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 40 42 ca c8 f7 7f 00 00 e8 15 b9 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d8 15 62 c7 f7 7f 00 00 39 09 ff 15 19 62 f2 fe 48 b9 40 42 ca c8 f7 7f 00 00 e8 e2 b8 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb e0 15 62 c7 f7 7f 00 00 39 09 ff 15 f0 61 f2 fe 48 8b c8 e8 00 95 ff ff eb 27 48 8b c8 49 bb e8 15 62 c7 f7 7f 00 00 39 09 ff 15 d9 61 f2 fe 48 8b c8 e8 e1 94 ff ff eb 08 48 8b c8 e8 4f f9 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 99 b3 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 67 b8 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ba 1b 60 4e 48 8b d0 48 8b cf e8 0f ee 06 ff 48 8b cf e8 97 04 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca4370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 43 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c aa b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ccdbd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 db cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 a9 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ccdcc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 dc cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 a9 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ccdd70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 dd cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb a9 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca44c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 44 ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 a9 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76215f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10d9d61h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 62 f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f48f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 95 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76215f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10d9d7bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 62 f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f48f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 95 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 b9 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76215d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10d9de7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 62 f2 fe}
011fh mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b8 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76215e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10d9e10h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 61 f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f48f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 95 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76215e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10d9e27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 61 f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f48f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 94 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86fad70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f9 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 b3 ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b8 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 1b 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ee 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 04 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[16u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 e0 47 ca c8 f7 7f 00 00 e8 1c a8 b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 90 de cc c8 f7 7f 00 00 e8 01 a8 b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 78 df cc c8 f7 7f 00 00 e8 e6 a7 b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 28 e0 cc c8 f7 7f 00 00 e8 cb a7 b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 30 49 ca c8 f7 7f 00 00 e8 b0 a7 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 18 16 62 c7 f7 7f 00 00 39 09 ff 15 d7 60 f2 fe 48 8b c8 e8 cf 93 ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 16 62 c7 f7 7f 00 00 39 09 ff 15 bd 60 f2 fe 48 8b c8 e8 ad 93 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 b0 46 ca c8 f7 7f 00 00 e8 25 b7 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 00 16 62 c7 f7 7f 00 00 39 09 ff 15 51 60 f2 fe 48 b9 b0 46 ca c8 f7 7f 00 00 e8 f2 b6 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 08 16 62 c7 f7 7f 00 00 39 09 ff 15 28 60 f2 fe 48 8b c8 e8 30 93 ff ff eb 27 48 8b c8 49 bb 10 16 62 c7 f7 7f 00 00 39 09 ff 15 11 60 f2 fe 48 8b c8 e8 11 93 ff ff eb 08 48 8b c8 e8 b7 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 a9 b1 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 77 b6 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ca 19 60 4e 48 8b d0 48 8b cf e8 1f ec 06 ff 48 8b cf e8 a7 02 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca47e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 47 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c a8 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ccde90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 de cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 a8 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ccdf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 df cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 a7 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cce028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb a7 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca4930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 49 ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 a7 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10d9f29h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 60 f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 93 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7621620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10d9f43h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd 60 f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 93 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b7 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7621600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10d9fafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 60 f2 fe}
011fh mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b6 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7621608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10d9fd8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 60 f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 93 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7621610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10d9fefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 60 f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 93 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86fadc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 b1 ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 19 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ec 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 02 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[16i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 4c ca c8 f7 7f 00 00 e8 2c a6 b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 48 e1 cc c8 f7 7f 00 00 e8 11 a6 b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 30 e2 cc c8 f7 7f 00 00 e8 f6 a5 b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 e0 e2 cc c8 f7 7f 00 00 e8 db a5 b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 a0 4d ca c8 f7 7f 00 00 e8 c0 a5 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 40 16 62 c7 f7 7f 00 00 39 09 ff 15 0f 5f f2 fe 48 8b c8 e8 ff 91 ff ff c5 f9 10 70 08 48 8b cf 49 bb 48 16 62 c7 f7 7f 00 00 39 09 ff 15 f5 5e f2 fe 48 8b c8 e8 dd 91 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 20 4b ca c8 f7 7f 00 00 e8 35 b5 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 28 16 62 c7 f7 7f 00 00 39 09 ff 15 89 5e f2 fe 48 b9 20 4b ca c8 f7 7f 00 00 e8 02 b5 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 30 16 62 c7 f7 7f 00 00 39 09 ff 15 60 5e f2 fe 48 8b c8 e8 60 91 ff ff eb 27 48 8b c8 49 bb 38 16 62 c7 f7 7f 00 00 39 09 ff 15 49 5e f2 fe 48 8b c8 e8 41 91 ff ff eb 08 48 8b c8 e8 1f f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 b9 af ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 87 b4 b6 5e 48 8b f8 48 8b ce 33 d2 e8 da 17 60 4e 48 8b d0 48 8b cf e8 2f ea 06 ff 48 8b cf e8 b7 00 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca4c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 4c ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c a6 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cce148h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e1 cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 a6 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cce230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e2 cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 a5 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cce2e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 e2 cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a5 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca4da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 4d ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 a5 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10da0f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f 5f f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 91 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7621648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10da10bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 5e f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 91 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b5 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7621628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10da177h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 5e f2 fe}
011fh mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 b5 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7621630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10da1a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 5e f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 91 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7621638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10da1b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 5e f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4938h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 91 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86fae20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f6 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 af ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 b4 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 17 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ea 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 00 ae 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[32u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c0 50 ca c8 f7 7f 00 00 e8 3c a4 b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 00 e4 cc c8 f7 7f 00 00 e8 21 a4 b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 e8 e4 cc c8 f7 7f 00 00 e8 06 a4 b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 98 e5 cc c8 f7 7f 00 00 e8 eb a3 b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 10 52 ca c8 f7 7f 00 00 e8 d0 a3 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 68 16 62 c7 f7 7f 00 00 39 09 ff 15 47 5d f2 fe 48 8b c8 e8 2f 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 70 16 62 c7 f7 7f 00 00 39 09 ff 15 2d 5d f2 fe 48 8b c8 e8 0d 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 90 4f ca c8 f7 7f 00 00 e8 45 b3 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 50 16 62 c7 f7 7f 00 00 39 09 ff 15 c1 5c f2 fe 48 b9 90 4f ca c8 f7 7f 00 00 e8 12 b3 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 58 16 62 c7 f7 7f 00 00 39 09 ff 15 98 5c f2 fe 48 8b c8 e8 90 8f ff ff eb 27 48 8b c8 49 bb 60 16 62 c7 f7 7f 00 00 39 09 ff 15 81 5c f2 fe 48 8b c8 e8 71 8f ff ff eb 08 48 8b c8 e8 87 f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 c9 ad ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 97 b2 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ea 15 60 4e 48 8b d0 48 8b cf e8 3f e8 06 ff 48 8b cf e8 c7 fe ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca50c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 50 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c a4 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cce400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 e4 cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 a4 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cce4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 a4 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cce598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e5 cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a3 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca5210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 52 ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 a3 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10da2b9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 5d f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 90 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7621670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10da2d3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2d 5d f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 90 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 b3 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7621650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10da33fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 5c f2 fe}
011fh mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b3 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7621658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10da368h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 5c f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 8f ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7621660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10da37fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 5c f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8f ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86fae78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 f4 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ad ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b2 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 15 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f e8 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fe ad 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[32i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 30 55 ca c8 f7 7f 00 00 e8 4c a2 b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 b8 e6 cc c8 f7 7f 00 00 e8 31 a2 b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 a0 e7 cc c8 f7 7f 00 00 e8 16 a2 b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 50 e8 cc c8 f7 7f 00 00 e8 fb a1 b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 80 56 ca c8 f7 7f 00 00 e8 e0 a1 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 90 16 62 c7 f7 7f 00 00 39 09 ff 15 7f 5b f2 fe 48 8b c8 e8 5f 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 98 16 62 c7 f7 7f 00 00 39 09 ff 15 65 5b f2 fe 48 8b c8 e8 3d 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 00 54 ca c8 f7 7f 00 00 e8 55 b1 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 78 16 62 c7 f7 7f 00 00 39 09 ff 15 f9 5a f2 fe 48 b9 00 54 ca c8 f7 7f 00 00 e8 22 b1 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 80 16 62 c7 f7 7f 00 00 39 09 ff 15 d0 5a f2 fe 48 8b c8 e8 c0 8d ff ff eb 27 48 8b c8 49 bb 88 16 62 c7 f7 7f 00 00 39 09 ff 15 b9 5a f2 fe 48 8b c8 e8 a1 8d ff ff eb 08 48 8b c8 e8 ef f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 d9 ab ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 a7 b0 b6 5e 48 8b f8 48 8b ce 33 d2 e8 fa 13 60 4e 48 8b d0 48 8b cf e8 4f e6 06 ff 48 8b cf e8 d7 fc ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca5530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 55 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c a2 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cce6b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e6 cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 a2 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cce7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 a2 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cce850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 e8 cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb a1 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca5680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 56 ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 a1 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10da481h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 5b f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 8e ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c7621698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10da49bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 5b f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 8e ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 b1 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c7621678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10da507h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 5a f2 fe}
011fh mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 b1 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c7621680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10da530h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 5a f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 8d ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c7621688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10da547h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 5a f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 8d ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86faed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ab ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 b0 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 13 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e6 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fc ad 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[64u]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 b7 ca c8 f7 7f 00 00 e8 4c 9c b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 70 e9 cc c8 f7 7f 00 00 e8 31 9c b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 58 ea cc c8 f7 7f 00 00 e8 16 9c b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 08 eb cc c8 f7 7f 00 00 e8 fb 9b b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 08 07 cc c8 f7 7f 00 00 e8 e0 9b b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb b8 16 62 c7 f7 7f 00 00 39 09 ff 15 a7 55 f2 fe 48 8b c8 e8 ef 88 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 16 62 c7 f7 7f 00 00 39 09 ff 15 8d 55 f2 fe 48 8b c8 e8 cd 88 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 20 b6 ca c8 f7 7f 00 00 e8 55 ab b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb a0 16 62 c7 f7 7f 00 00 39 09 ff 15 21 55 f2 fe 48 b9 20 b6 ca c8 f7 7f 00 00 e8 22 ab b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb a8 16 62 c7 f7 7f 00 00 39 09 ff 15 f8 54 f2 fe 48 8b c8 e8 50 88 ff ff eb 27 48 8b c8 49 bb b0 16 62 c7 f7 7f 00 00 39 09 ff 15 e1 54 f2 fe 48 8b c8 e8 31 88 ff ff eb 08 48 8b c8 e8 1f ed ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 d9 a5 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 a7 aa b6 5e 48 8b f8 48 8b ce 33 d2 e8 fa 0d 60 4e 48 8b d0 48 8b cf e8 4f e0 06 ff 48 8b cf e8 d7 f6 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8cab750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 9c b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cce970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 e9 cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 9c b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8ccea58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 ea cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 9c b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cceb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 eb cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 9b b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cc0708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 07 cc c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 9b b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76216b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10daa59h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 55 f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 88 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76216c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10daa73h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8d 55 f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 88 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ab b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76216a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10daadfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 55 f2 fe}
011fh mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 ab b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76216a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10dab08h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 54 f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 88 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76216b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10dab1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 54 f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 88 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86faf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ed ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a5 ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 aa b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 0d 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f e0 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f6 ad 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[64i]()[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a0 59 ca c8 f7 7f 00 00 e8 5c 9a b6 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 28 ec cc c8 f7 7f 00 00 e8 41 9a b6 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 10 ed cc c8 f7 7f 00 00 e8 26 9a b6 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 c0 ed cc c8 f7 7f 00 00 e8 0b 9a b6 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 f0 5a ca c8 f7 7f 00 00 e8 f0 99 b6 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb e0 16 62 c7 f7 7f 00 00 39 09 ff 15 df 53 f2 fe 48 8b c8 e8 1f 87 ff ff c5 f9 10 70 08 48 8b cf 49 bb e8 16 62 c7 f7 7f 00 00 39 09 ff 15 c5 53 f2 fe 48 8b c8 e8 fd 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 70 58 ca c8 f7 7f 00 00 e8 65 a9 b6 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c8 16 62 c7 f7 7f 00 00 39 09 ff 15 59 53 f2 fe 48 b9 70 58 ca c8 f7 7f 00 00 e8 32 a9 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb d0 16 62 c7 f7 7f 00 00 39 09 ff 15 30 53 f2 fe 48 8b c8 e8 80 86 ff ff eb 27 48 8b c8 49 bb d8 16 62 c7 f7 7f 00 00 39 09 ff 15 19 53 f2 fe 48 8b c8 e8 61 86 ff ff eb 08 48 8b c8 e8 3f eb ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 e9 a3 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 b7 a8 b6 5e 48 8b f8 48 8b ce 33 d2 e8 0a 0c 60 4e 48 8b d0 48 8b cf e8 5f de 06 ff 48 8b cf e8 e7 f4 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8ca59a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 59 ca c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 9a b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8ccec28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ec cc c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 9a b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cced10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ed cc c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 9a b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8ccedc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ed cc c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 9a b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8ca5af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 5a ca c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 99 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76216e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 62 c7 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-10dac21h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df 53 f2 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c86f4a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 87 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c76216e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 62 c7 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-10dac3bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 53 f2 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f4a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 86 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
00f6h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a9 b6 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c76216c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 62 c7 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-10daca7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 53 f2 fe}
011fh mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
0129h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 a9 b6 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c76216d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 62 c7 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-10dacd0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 53 f2 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c86f4a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 86 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c76216d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 62 c7 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-10dace7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 53 f2 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c86f4a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 86 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c86faf10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f eb ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 a3 ab 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01a4h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a8 b6 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 0c 60 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f de 06 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f4 ad 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[8u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 28 64 ca c8 f7 7f 00 00 e8 63 98 b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 10 f4 cc c8 f7 7f 00 00 e8 48 98 b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 f8 f4 cc c8 f7 7f 00 00 e8 2d 98 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 a8 f5 cc c8 f7 7f 00 00 e8 12 98 b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 78 65 ca c8 f7 7f 00 00 e8 f7 97 b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 08 17 62 c7 f7 7f 00 00 39 09 ff 15 0e 52 f2 fe 48 8b c8 e8 76 88 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ee 51 f2 fe 48 8b c8 e8 4e 88 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f8 62 ca c8 f7 7f 00 00 e8 5a a7 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f0 16 62 c7 f7 7f 00 00 39 09 ff 15 70 51 f2 fe 48 b9 f8 62 ca c8 f7 7f 00 00 e8 21 a7 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb f8 16 62 c7 f7 7f 00 00 39 09 ff 15 47 51 f2 fe 48 8b c8 e8 bf 87 ff ff eb 27 48 8b c8 49 bb 00 17 62 c7 f7 7f 00 00 39 09 ff 15 30 51 f2 fe 48 8b c8 e8 a0 87 ff ff eb 08 48 8b c8 e8 5e f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cc a1 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 9a a6 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ed 09 60 4e 48 8b d0 48 8b cf e8 42 dc 06 ff 48 8b cf e8 ca f2 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca6428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 64 ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 98 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8ccf410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f4 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 98 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8ccf4f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f4 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 98 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8ccf5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f5 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 98 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca6578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 65 ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 97 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10dadf2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 52 f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 88 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10dae12h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee 51 f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 88 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a a7 b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c76216f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10dae90h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 51 f2 fe}
0140h mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 a7 b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c76216f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10daeb9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 51 f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 87 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7621700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10daed0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 51 f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4d78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 87 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fbe40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e f8 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a1 ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a a6 b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 09 60 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 dc 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca f2 ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[8i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 f8 68 ca c8 f7 7f 00 00 e8 33 96 b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 c8 fa cc c8 f7 7f 00 00 e8 18 96 b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 b0 fb cc c8 f7 7f 00 00 e8 fd 95 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 60 fc cc c8 f7 7f 00 00 e8 e2 95 b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 48 6a ca c8 f7 7f 00 00 e8 c7 95 b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 30 17 62 c7 f7 7f 00 00 39 09 ff 15 06 50 f2 fe 48 8b c8 e8 76 86 ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 e6 4f f2 fe 48 8b c8 e8 4e 86 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 c8 67 ca c8 f7 7f 00 00 e8 2a a5 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 18 17 62 c7 f7 7f 00 00 39 09 ff 15 68 4f f2 fe 48 b9 c8 67 ca c8 f7 7f 00 00 e8 f1 a4 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 20 17 62 c7 f7 7f 00 00 39 09 ff 15 3f 4f f2 fe 48 8b c8 e8 bf 85 ff ff eb 27 48 8b c8 49 bb 28 17 62 c7 f7 7f 00 00 39 09 ff 15 28 4f f2 fe 48 8b c8 e8 a0 85 ff ff eb 08 48 8b c8 e8 ce f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9c 9f ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 6a a4 b6 5e 48 8b f8 48 8b ce 33 d2 e8 bd 07 60 4e 48 8b d0 48 8b cf e8 12 da 06 ff 48 8b cf e8 9a f0 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca68f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 68 ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 96 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8ccfac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fa cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 96 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8ccfbb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fb cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 95 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8ccfc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fc cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 95 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca6a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 6a ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 95 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10daffah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 50 f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 86 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10db01ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e6 4f f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 86 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a a5 b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7621718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10db098h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 4f f2 fe}
0140h mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 a4 b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7621720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10db0c1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f 4f f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 85 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7621728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10db0d8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 4f f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4da8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 85 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fbee0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce f6 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 9f ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a a4 b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 07 60 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 da 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a f0 ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[16u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 68 6d ca c8 f7 7f 00 00 e8 03 94 b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 80 fd cc c8 f7 7f 00 00 e8 e8 93 b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 68 fe cc c8 f7 7f 00 00 e8 cd 93 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 18 ff cc c8 f7 7f 00 00 e8 b2 93 b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 b8 6e ca c8 f7 7f 00 00 e8 97 93 b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 58 17 62 c7 f7 7f 00 00 39 09 ff 15 fe 4d f2 fe 48 8b c8 e8 66 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 de 4d f2 fe 48 8b c8 e8 3e 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 38 6c ca c8 f7 7f 00 00 e8 fa a2 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 40 17 62 c7 f7 7f 00 00 39 09 ff 15 60 4d f2 fe 48 b9 38 6c ca c8 f7 7f 00 00 e8 c1 a2 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 48 17 62 c7 f7 7f 00 00 39 09 ff 15 37 4d f2 fe 48 8b c8 e8 af 83 ff ff eb 27 48 8b c8 49 bb 50 17 62 c7 f7 7f 00 00 39 09 ff 15 20 4d f2 fe 48 8b c8 e8 90 83 ff ff eb 08 48 8b c8 e8 f6 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6c 9d ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 3a a2 b6 5e 48 8b f8 48 8b ce 33 d2 e8 8d 05 60 4e 48 8b d0 48 8b cf e8 e2 d7 06 ff 48 8b cf e8 6a ee ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca6d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 6d ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 94 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8ccfd80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 fd cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 93 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8ccfe68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fe cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 93 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8ccff18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ff cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 93 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca6eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6e ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 93 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10db202h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe 4d f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 84 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10db222h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de 4d f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 84 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa a2 b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7621740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10db2a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 4d f2 fe}
0140h mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 a2 b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7621748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10db2c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 4d f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 83 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7621750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10db2e0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 4d f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 83 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fbf38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f4 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 9d ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a a2 b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 05 60 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 d7 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a ee ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[16i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d8 71 ca c8 f7 7f 00 00 e8 d3 91 b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 58 00 cd c8 f7 7f 00 00 e8 b8 91 b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 40 01 cd c8 f7 7f 00 00 e8 9d 91 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f0 01 cd c8 f7 7f 00 00 e8 82 91 b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 28 73 ca c8 f7 7f 00 00 e8 67 91 b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 80 17 62 c7 f7 7f 00 00 39 09 ff 15 f6 4b f2 fe 48 8b c8 e8 56 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 88 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 d6 4b f2 fe 48 8b c8 e8 2e 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a8 70 ca c8 f7 7f 00 00 e8 ca a0 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 68 17 62 c7 f7 7f 00 00 39 09 ff 15 58 4b f2 fe 48 b9 a8 70 ca c8 f7 7f 00 00 e8 91 a0 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 70 17 62 c7 f7 7f 00 00 39 09 ff 15 2f 4b f2 fe 48 8b c8 e8 9f 81 ff ff eb 27 48 8b c8 49 bb 78 17 62 c7 f7 7f 00 00 39 09 ff 15 18 4b f2 fe 48 8b c8 e8 80 81 ff ff eb 08 48 8b c8 e8 1e f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3c 9b ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 0a a0 b6 5e 48 8b f8 48 8b ce 33 d2 e8 5d 03 60 4e 48 8b d0 48 8b cf e8 b2 d5 06 ff 48 8b cf e8 3a ec ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca71d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 71 ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 91 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cd0058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 00 cd c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 91 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cd0140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 01 cd c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 91 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cd01f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 01 cd c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 91 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca7328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 73 ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 91 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10db40ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f6 4b f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 82 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10db42ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 4b f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 82 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a0 b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7621768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10db4a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 4b f2 fe}
0140h mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a0 b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7621770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10db4d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f 4b f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 81 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c7621778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10db4e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 4b f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 81 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fbf90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 9b ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a a0 b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 03 60 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d5 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a ec ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[32u]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 48 76 ca c8 f7 7f 00 00 e8 a3 8f b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 10 03 cd c8 f7 7f 00 00 e8 88 8f b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 f8 03 cd c8 f7 7f 00 00 e8 6d 8f b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 a8 04 cd c8 f7 7f 00 00 e8 52 8f b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 98 77 ca c8 f7 7f 00 00 e8 37 8f b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb a8 17 62 c7 f7 7f 00 00 39 09 ff 15 ee 49 f2 fe 48 8b c8 e8 46 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb b0 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ce 49 f2 fe 48 8b c8 e8 1e 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 18 75 ca c8 f7 7f 00 00 e8 9a 9e b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 90 17 62 c7 f7 7f 00 00 39 09 ff 15 50 49 f2 fe 48 b9 18 75 ca c8 f7 7f 00 00 e8 61 9e b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 98 17 62 c7 f7 7f 00 00 39 09 ff 15 27 49 f2 fe 48 8b c8 e8 8f 7f ff ff eb 27 48 8b c8 49 bb a0 17 62 c7 f7 7f 00 00 39 09 ff 15 10 49 f2 fe 48 8b c8 e8 70 7f ff ff eb 08 48 8b c8 e8 46 f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0c 99 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 da 9d b6 5e 48 8b f8 48 8b ce 33 d2 e8 2d 01 60 4e 48 8b d0 48 8b cf e8 82 d3 06 ff 48 8b cf e8 0a ea ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca7648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 76 ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 8f b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cd0310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 03 cd c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 8f b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cd03f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 03 cd c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 8f b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cd04a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 04 cd c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 8f b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca7798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 77 ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 8f b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76217a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10db612h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee 49 f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 80 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c76217b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10db632h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce 49 f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 80 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9e b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c7621790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10db6b0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 49 f2 fe}
0140h mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 9e b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c7621798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10db6d9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 49 f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 7f ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c76217a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10db6f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 49 f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 7f ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fbfe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 99 ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 9d b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 01 60 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d3 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ea ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[32i]()[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b8 7a ca c8 f7 7f 00 00 e8 73 8d b6 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 c8 05 cd c8 f7 7f 00 00 e8 58 8d b6 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 b0 06 cd c8 f7 7f 00 00 e8 3d 8d b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 60 07 cd c8 f7 7f 00 00 e8 22 8d b6 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 08 7c ca c8 f7 7f 00 00 e8 07 8d b6 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb d0 17 62 c7 f7 7f 00 00 39 09 ff 15 e6 47 f2 fe 48 8b c8 e8 36 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb d8 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 c6 47 f2 fe 48 8b c8 e8 0e 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 88 79 ca c8 f7 7f 00 00 e8 6a 9c b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb b8 17 62 c7 f7 7f 00 00 39 09 ff 15 48 47 f2 fe 48 b9 88 79 ca c8 f7 7f 00 00 e8 31 9c b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb c0 17 62 c7 f7 7f 00 00 39 09 ff 15 1f 47 f2 fe 48 8b c8 e8 7f 7d ff ff eb 27 48 8b c8 49 bb c8 17 62 c7 f7 7f 00 00 39 09 ff 15 08 47 f2 fe 48 8b c8 e8 60 7d ff ff eb 08 48 8b c8 e8 6e ef ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 dc 96 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 aa 9b b6 5e 48 8b f8 48 8b ce 33 d2 e8 fd fe 5f 4e 48 8b d0 48 8b cf e8 52 d1 06 ff 48 8b cf e8 da e7 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca7ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 7a ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 8d b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cd05c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 05 cd c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 8d b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cd06b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 06 cd c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 8d b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cd0760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 07 cd c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 8d b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca7c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 7c ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 8d b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76217d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10db81ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e6 47 f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7e ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c76217d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10db83ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 47 f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 7e ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
0111h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 9c b6 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c76217b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 62 c7 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-10db8b8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 48 47 f2 fe}
0140h mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
014ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 9c b6 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c76217c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 62 c7 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-10db8e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f 47 f2 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c86f4e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 7d ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c76217c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 62 c7 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-10db8f8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 47 f2 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c86f4e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7d ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c86fc040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e ef ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 96 ab 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 9b b6 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd fe 5f 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d1 06 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e7 ad 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[64u]()[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a8 c5 ca c8 f7 7f 00 00 e8 43 87 b6 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 80 08 cd c8 f7 7f 00 00 e8 28 87 b6 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 68 09 cd c8 f7 7f 00 00 e8 0d 87 b6 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 18 0a cd c8 f7 7f 00 00 e8 f2 86 b6 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 c0 33 cc c8 f7 7f 00 00 e8 d7 86 b6 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb f8 17 62 c7 f7 7f 00 00 39 09 ff 15 de 41 f2 fe 48 8b c8 e8 96 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 18 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 be 41 f2 fe 48 8b c8 e8 6e 78 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 78 c4 ca c8 f7 7f 00 00 e8 39 96 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb e0 17 62 c7 f7 7f 00 00 39 09 ff 15 3f 41 f2 fe 48 b9 78 c4 ca c8 f7 7f 00 00 e8 00 96 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb e8 17 62 c7 f7 7f 00 00 39 09 ff 15 16 41 f2 fe 48 8b c8 e8 de 77 ff ff eb 27 48 8b c8 49 bb f0 17 62 c7 f7 7f 00 00 39 09 ff 15 ff 40 f2 fe 48 8b c8 e8 bf 77 ff ff eb 08 48 8b c8 e8 9d fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ab 90 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 79 95 b6 5e 48 8b f8 48 8b ce 33 d2 e8 cc f8 5f 4e 48 8b d0 48 8b cf e8 21 cb 06 ff 48 8b cf e8 a9 e1 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8cac5a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c5 ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 87 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cd0880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 08 cd c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 87 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cd0968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 09 cd c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 87 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cd0a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0a cd c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 86 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cc33c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 33 cc c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 86 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76217f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10dbe22h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de 41 f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 78 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10dbe42h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be 41 f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 78 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 96 b6 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c76217e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 62 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-10dbec1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f 41 f2 fe}
0141h mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 96 b6 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c76217e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 62 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-10dbeeah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 16 41 f2 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c86f4eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 77 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c76217f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-10dbf01h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 40 f2 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c86f4eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 77 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c86fd1a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d fa ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 90 ab 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 95 b6 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f8 5f 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 cb 06 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 e1 ad 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[64i]()[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 28 7f ca c8 f7 7f 00 00 e8 13 85 b6 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 38 0b cd c8 f7 7f 00 00 e8 f8 84 b6 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 20 0c cd c8 f7 7f 00 00 e8 dd 84 b6 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 d0 0c cd c8 f7 7f 00 00 e8 c2 84 b6 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 78 80 ca c8 f7 7f 00 00 e8 a7 84 b6 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 20 18 62 c7 f7 7f 00 00 39 09 ff 15 d6 3f f2 fe 48 8b c8 e8 86 76 ff ff c5 fd 10 70 08 48 8b cf 49 bb 28 18 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 b6 3f f2 fe 48 8b c8 e8 5e 76 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f8 7d ca c8 f7 7f 00 00 e8 09 94 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 08 18 62 c7 f7 7f 00 00 39 09 ff 15 37 3f f2 fe 48 b9 f8 7d ca c8 f7 7f 00 00 e8 d0 93 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 10 18 62 c7 f7 7f 00 00 39 09 ff 15 0e 3f f2 fe 48 8b c8 e8 ce 75 ff ff eb 27 48 8b c8 49 bb 18 18 62 c7 f7 7f 00 00 39 09 ff 15 f7 3e f2 fe 48 8b c8 e8 af 75 ff ff eb 08 48 8b c8 e8 c5 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 7b 8e ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 49 93 b6 5e 48 8b f8 48 8b ce 33 d2 e8 9c f6 5f 4e 48 8b d0 48 8b cf e8 f1 c8 06 ff 48 8b cf e8 79 df ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8ca7f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7f ca c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 85 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cd0b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0b cd c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 84 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cd0c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 0c cd c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 84 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cd0cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 0c cd c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 84 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8ca8078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 80 ca c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 84 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-10dc02ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 3f f2 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c86f4ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 76 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c7621828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 62 c7 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-10dc04ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b6 3f f2 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c86f4ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 76 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
0112h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 94 b6 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c7621808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 62 c7 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-10dc0c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 3f f2 fe}
0141h mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
014bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 93 b6 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c7621810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 62 c7 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-10dc0f2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 3f f2 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c86f4ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 75 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c7621818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-10dc109h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 3e f2 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c86f4ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 75 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c86fd1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f8 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 8e ab 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
01d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 93 b6 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c f6 5f 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c8 06 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 df ad 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[8u]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 50 13 cd c8 f7 7f 00 00 e8 db 82 b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 48 15 cd c8 f7 7f 00 00 e8 bd 82 b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 70 17 cd c8 f7 7f 00 00 e8 9f 82 b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 f8 18 cd c8 f7 7f 00 00 e8 81 82 b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 70 18 62 c7 f7 7f 00 00 39 09 ff 15 00 3e f2 fe 8b d8 48 8b cf 49 bb 78 18 62 c7 f7 7f 00 00 39 09 ff 15 f1 3d f2 fe 48 8b c8 e8 21 d6 ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 18 62 c7 f7 7f 00 00 39 09 ff 15 d7 3d f2 fe 48 8b c8 e8 ff d5 ff ff c5 f9 10 78 08 48 8b cf 49 bb 88 18 62 c7 f7 7f 00 00 39 09 ff 15 bd 3d f2 fe 48 8b c8 e8 dd d5 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 91 fc ff 48 b9 70 3d ca c8 f7 7f 00 00 e8 97 91 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 18 62 c7 f7 7f 00 00 39 09 ff 15 d9 3c f2 fe 8b e8 48 8b cf 49 bb 38 18 62 c7 f7 7f 00 00 39 09 ff 15 ca 3c f2 fe 48 8b c8 e8 3a d5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 db 0d fc ff 48 b9 70 3d ca c8 f7 7f 00 00 e8 0c 91 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 18 62 c7 f7 7f 00 00 39 09 ff 15 5b 3c f2 fe 8b f0 48 8b cb 49 bb 48 18 62 c7 f7 7f 00 00 39 09 ff 15 4c 3c f2 fe 48 8b c8 e8 ac d4 ff ff c5 f9 10 70 08 48 8b cb 49 bb 50 18 62 c7 f7 7f 00 00 39 09 ff 15 32 3c f2 fe 48 8b c8 e8 8a d4 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 10 4d fc ff 48 b9 70 3d ca c8 f7 7f 00 00 e8 51 90 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 18 62 c7 f7 7f 00 00 39 09 ff 15 b8 3b f2 fe 8b f0 48 8b cd 49 bb 60 18 62 c7 f7 7f 00 00 39 09 ff 15 a9 3b f2 fe 48 8b c8 e8 f1 d3 ff ff c5 f9 10 70 08 48 8b cd 49 bb 68 18 62 c7 f7 7f 00 00 39 09 ff 15 8f 3b f2 fe 48 8b c8 e8 67 41 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 cb f6 ff ff 48 b9 70 3d ca c8 f7 7f 00 00 e8 a4 8f b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 8a ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 8f b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 f2 5f 4e 48 8b d0 48 8b cf e8 09 c5 06 ff 48 8b cf e8 91 db ad 5e cc}
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
0026h mov rcx,7ff7c8cd1350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 13 cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 82 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd1548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 15 cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 82 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd1770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 17 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 82 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd18f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 18 cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 82 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dc200h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 3e f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dc20fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 3d f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d6 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dc229h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 3d f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dc243h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd 3d f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d5 ff ff}
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
0145h call 7ff7c86c6c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 91 fc ff}
014ah mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 91 b6 5e}
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
0185h mov r11,7ff7c7621830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dc327h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 3c f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dc336h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 3c f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d5 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86be970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0d fc ff}
01d5h mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 91 b6 5e}
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
0213h mov r11,7ff7c7621840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dc3a5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5b 3c f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dc3b4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4c 3c f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d4 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dc3ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 3c f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c2960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 4d fc ff}
0290h mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 90 b6 5e}
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
02ceh mov r11,7ff7c7621858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dc448h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 3b f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dc457h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 3b f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fb0b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d3 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dc471h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f 3b f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 41 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fd3c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f6 ff ff}
033dh mov rcx,7ff7c8ca3d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3d ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 8f b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8a ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8f b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 f2 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c5 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 db ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[8i]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 24 cd c8 f7 7f 00 00 e8 db 7e b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 26 cd c8 f7 7f 00 00 e8 bd 7e b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 28 cd c8 f7 7f 00 00 e8 9f 7e b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 2a cd c8 f7 7f 00 00 e8 81 7e b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb d0 18 62 c7 f7 7f 00 00 39 09 ff 15 60 3a f2 fe 8b d8 48 8b cf 49 bb d8 18 62 c7 f7 7f 00 00 39 09 ff 15 51 3a f2 fe 48 8b c8 e8 11 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 18 62 c7 f7 7f 00 00 39 09 ff 15 37 3a f2 fe 48 8b c8 e8 ef d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb e8 18 62 c7 f7 7f 00 00 39 09 ff 15 1d 3a f2 fe 48 8b c8 e8 cd d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 8d fc ff 48 b9 40 42 ca c8 f7 7f 00 00 e8 97 8d b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 18 62 c7 f7 7f 00 00 39 09 ff 15 39 39 f2 fe 8b e8 48 8b cf 49 bb 98 18 62 c7 f7 7f 00 00 39 09 ff 15 2a 39 f2 fe 48 8b c8 e8 2a d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b 0b fc ff 48 b9 40 42 ca c8 f7 7f 00 00 e8 0c 8d b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 18 62 c7 f7 7f 00 00 39 09 ff 15 bb 38 f2 fe 8b f0 48 8b cb 49 bb a8 18 62 c7 f7 7f 00 00 39 09 ff 15 ac 38 f2 fe 48 8b c8 e8 9c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb b0 18 62 c7 f7 7f 00 00 39 09 ff 15 92 38 f2 fe 48 8b c8 e8 7a d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 00 50 fc ff 48 b9 40 42 ca c8 f7 7f 00 00 e8 51 8c b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 18 62 c7 f7 7f 00 00 39 09 ff 15 18 38 f2 fe 8b f0 48 8b cd 49 bb c0 18 62 c7 f7 7f 00 00 39 09 ff 15 09 38 f2 fe 48 8b c8 e8 e1 d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb c8 18 62 c7 f7 7f 00 00 39 09 ff 15 ef 37 f2 fe 48 8b c8 e8 67 3d ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 63 f3 ff ff 48 b9 40 42 ca c8 f7 7f 00 00 e8 a4 8b b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 86 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 8b b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 ee 5f 4e 48 8b d0 48 8b cf e8 09 c1 06 ff 48 8b cf e8 91 d7 ad 5e cc}
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
0026h mov rcx,7ff7c8cd24d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 24 cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 7e b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd26c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 26 cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 7e b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd28f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 28 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 7e b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd2a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 2a cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 7e b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76218d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dc5a0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 3a f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76218d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dc5afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 3a f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d4 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c76218e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dc5c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 3a f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c76218e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dc5e3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d 3a f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 ff ff}
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
0145h call 7ff7c86c6c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 8d fc ff}
014ah mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 8d b6 5e}
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
0185h mov r11,7ff7c7621890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dc6c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 39 f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dc6d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 39 f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d3 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86beac0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0b fc ff}
01d5h mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 8d b6 5e}
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
0213h mov r11,7ff7c76218a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dc745h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bb 38 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c76218a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dc754h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ac 38 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c76218b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dc76eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 38 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c3050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 50 fc ff}
0290h mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8c b6 5e}
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
02ceh mov r11,7ff7c76218b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dc7e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 38 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c76218c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dc7f7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 38 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fb2a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c76218c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dc811h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef 37 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3d ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fd460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 f3 ff ff}
033dh mov rcx,7ff7c8ca4240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 42 ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 8b b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 86 ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8b b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ee 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 c1 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d7 ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[16u]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 2c cd c8 f7 7f 00 00 e8 db 7a b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 2e cd c8 f7 7f 00 00 e8 bd 7a b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 30 cd c8 f7 7f 00 00 e8 9f 7a b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 32 cd c8 f7 7f 00 00 e8 81 7a b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 30 19 62 c7 f7 7f 00 00 39 09 ff 15 c0 36 f2 fe 8b d8 48 8b cf 49 bb 38 19 62 c7 f7 7f 00 00 39 09 ff 15 b1 36 f2 fe 48 8b c8 e8 01 d2 ff ff c5 f9 10 70 08 48 8b cf 49 bb 40 19 62 c7 f7 7f 00 00 39 09 ff 15 97 36 f2 fe 48 8b c8 e8 df d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 48 19 62 c7 f7 7f 00 00 39 09 ff 15 7d 36 f2 fe 48 8b c8 e8 bd d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 8a fc ff 48 b9 b0 46 ca c8 f7 7f 00 00 e8 97 89 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 18 62 c7 f7 7f 00 00 39 09 ff 15 99 35 f2 fe 8b e8 48 8b cf 49 bb f8 18 62 c7 f7 7f 00 00 39 09 ff 15 8a 35 f2 fe 48 8b c8 e8 1a d1 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 7b 08 fc ff 48 b9 b0 46 ca c8 f7 7f 00 00 e8 0c 89 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 19 62 c7 f7 7f 00 00 39 09 ff 15 1b 35 f2 fe 8b f0 48 8b cb 49 bb 08 19 62 c7 f7 7f 00 00 39 09 ff 15 0c 35 f2 fe 48 8b c8 e8 8c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb 10 19 62 c7 f7 7f 00 00 39 09 ff 15 f2 34 f2 fe 48 8b c8 e8 6a d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 e0 4e fc ff 48 b9 b0 46 ca c8 f7 7f 00 00 e8 51 88 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 19 62 c7 f7 7f 00 00 39 09 ff 15 78 34 f2 fe 8b f0 48 8b cd 49 bb 20 19 62 c7 f7 7f 00 00 39 09 ff 15 69 34 f2 fe 48 8b c8 e8 d1 cf ff ff c5 f9 10 70 08 48 8b cd 49 bb 28 19 62 c7 f7 7f 00 00 39 09 ff 15 4f 34 f2 fe 48 8b c8 e8 67 39 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 cb ef ff ff 48 b9 b0 46 ca c8 f7 7f 00 00 e8 a4 87 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 82 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 87 b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 ea 5f 4e 48 8b d0 48 8b cf e8 09 bd 06 ff 48 8b cf e8 91 d3 ad 5e cc}
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
0026h mov rcx,7ff7c8cd2cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 2c cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 7a b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd2ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2e cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 7a b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd30f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 30 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 7a b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd3278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 32 cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 7a b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dc940h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 36 f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dc94fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 36 f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 d2 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dc969h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 36 f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df d1 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dc983h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7d 36 f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
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
0145h call 7ff7c86c6d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 8a fc ff}
014ah mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 89 b6 5e}
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
0185h mov r11,7ff7c76218f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dca67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 35 f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c76218f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dca76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 35 f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d1 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86bec10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 08 fc ff}
01d5h mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 89 b6 5e}
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
0213h mov r11,7ff7c7621900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dcae5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b 35 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dcaf4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0c 35 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c d0 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dcb0eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 34 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d0 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c3330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 4e fc ff}
0290h mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 88 b6 5e}
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
02ceh mov r11,7ff7c7621918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dcb88h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 34 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dcb97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 34 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fb490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cf ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dcbb1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f 34 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 39 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fd4c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ef ff ff}
033dh mov rcx,7ff7c8ca46b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 46 ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 87 b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 82 ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 87 b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 ea 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 bd 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 d3 ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[16i]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 34 cd c8 f7 7f 00 00 e8 db 76 b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 36 cd c8 f7 7f 00 00 e8 bd 76 b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 38 cd c8 f7 7f 00 00 e8 9f 76 b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 3a cd c8 f7 7f 00 00 e8 81 76 b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 90 19 62 c7 f7 7f 00 00 39 09 ff 15 20 33 f2 fe 8b d8 48 8b cf 49 bb 98 19 62 c7 f7 7f 00 00 39 09 ff 15 11 33 f2 fe 48 8b c8 e8 f1 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb a0 19 62 c7 f7 7f 00 00 39 09 ff 15 f7 32 f2 fe 48 8b c8 e8 cf cf ff ff c5 f9 10 78 08 48 8b cf 49 bb a8 19 62 c7 f7 7f 00 00 39 09 ff 15 dd 32 f2 fe 48 8b c8 e8 ad cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 86 fc ff 48 b9 20 4b ca c8 f7 7f 00 00 e8 97 85 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 19 62 c7 f7 7f 00 00 39 09 ff 15 f9 31 f2 fe 8b e8 48 8b cf 49 bb 58 19 62 c7 f7 7f 00 00 39 09 ff 15 ea 31 f2 fe 48 8b c8 e8 0a cf ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 cb 05 fc ff 48 b9 20 4b ca c8 f7 7f 00 00 e8 0c 85 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 19 62 c7 f7 7f 00 00 39 09 ff 15 7b 31 f2 fe 8b f0 48 8b cb 49 bb 68 19 62 c7 f7 7f 00 00 39 09 ff 15 6c 31 f2 fe 48 8b c8 e8 7c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 70 19 62 c7 f7 7f 00 00 39 09 ff 15 52 31 f2 fe 48 8b c8 e8 5a ce ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 c0 4d fc ff 48 b9 20 4b ca c8 f7 7f 00 00 e8 51 84 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 19 62 c7 f7 7f 00 00 39 09 ff 15 d8 30 f2 fe 8b f0 48 8b cd 49 bb 80 19 62 c7 f7 7f 00 00 39 09 ff 15 c9 30 f2 fe 48 8b c8 e8 c1 cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 88 19 62 c7 f7 7f 00 00 39 09 ff 15 af 30 f2 fe 48 8b c8 e8 67 35 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 33 ec ff ff 48 b9 20 4b ca c8 f7 7f 00 00 e8 a4 83 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 7e ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 83 b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 e6 5f 4e 48 8b d0 48 8b cf e8 09 b9 06 ff 48 8b cf e8 91 cf ad 5e cc}
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
0026h mov rcx,7ff7c8cd34d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 34 cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 76 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd36c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 36 cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 76 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd38f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 38 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 76 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd3a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3a cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 76 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dcce0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 33 f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dccefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 33 f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cf ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c76219a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dcd09h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 32 f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cf ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c76219a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dcd23h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dd 32 f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cf ff ff}
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
0145h call 7ff7c86c6d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 86 fc ff}
014ah mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 85 b6 5e}
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
0185h mov r11,7ff7c7621950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dce07h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 31 f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dce16h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea 31 f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cf ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86bed60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 05 fc ff}
01d5h mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 85 b6 5e}
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
0213h mov r11,7ff7c7621960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dce85h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b 31 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dce94h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6c 31 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ce ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dceaeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 31 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ce ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 4d fc ff}
0290h mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 84 b6 5e}
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
02ceh mov r11,7ff7c7621978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dcf28h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 30 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dcf37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 30 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fb680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cd ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dcf51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af 30 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 35 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fd530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ec ff ff}
033dh mov rcx,7ff7c8ca4b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4b ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 83 b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 7e ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 83 b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 e6 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 b9 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 cf ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[32u]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 3c cd c8 f7 7f 00 00 e8 db 6e b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 3e cd c8 f7 7f 00 00 e8 bd 6e b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 40 cd c8 f7 7f 00 00 e8 9f 6e b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 42 cd c8 f7 7f 00 00 e8 81 6e b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb f0 19 62 c7 f7 7f 00 00 39 09 ff 15 80 2b f2 fe 8b d8 48 8b cf 49 bb f8 19 62 c7 f7 7f 00 00 39 09 ff 15 71 2b f2 fe 48 8b c8 e8 e1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 1a 62 c7 f7 7f 00 00 39 09 ff 15 57 2b f2 fe 48 8b c8 e8 bf c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb 08 1a 62 c7 f7 7f 00 00 39 09 ff 15 3d 2b f2 fe 48 8b c8 e8 9d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 83 fc ff 48 b9 90 4f ca c8 f7 7f 00 00 e8 97 7d b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 19 62 c7 f7 7f 00 00 39 09 ff 15 59 2a f2 fe 8b e8 48 8b cf 49 bb b8 19 62 c7 f7 7f 00 00 39 09 ff 15 4a 2a f2 fe 48 8b c8 e8 fa c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 1b ff fb ff 48 b9 90 4f ca c8 f7 7f 00 00 e8 0c 7d b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 19 62 c7 f7 7f 00 00 39 09 ff 15 db 29 f2 fe 8b f0 48 8b cb 49 bb c8 19 62 c7 f7 7f 00 00 39 09 ff 15 cc 29 f2 fe 48 8b c8 e8 6c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb d0 19 62 c7 f7 7f 00 00 39 09 ff 15 b2 29 f2 fe 48 8b c8 e8 4a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 a0 48 fc ff 48 b9 90 4f ca c8 f7 7f 00 00 e8 51 7c b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 19 62 c7 f7 7f 00 00 39 09 ff 15 38 29 f2 fe 8b f0 48 8b cd 49 bb e0 19 62 c7 f7 7f 00 00 39 09 ff 15 29 29 f2 fe 48 8b c8 e8 b1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb e8 19 62 c7 f7 7f 00 00 39 09 ff 15 0f 29 f2 fe 48 8b c8 e8 67 2d ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 03 f9 ff ff 48 b9 90 4f ca c8 f7 7f 00 00 e8 a4 7b b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 76 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 7b b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 de 5f 4e 48 8b d0 48 8b cf e8 09 b1 06 ff 48 8b cf e8 91 c7 ad 5e cc}
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
0026h mov rcx,7ff7c8cd3cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3c cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 6e b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd3ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3e cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 6e b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd40f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 40 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 6e b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd4278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 42 cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 6e b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76219f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dd480h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 2b f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c76219f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dd48fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 2b f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dd4a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 2b f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dd4c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d 2b f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c9 ff ff}
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
0145h call 7ff7c86c7210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 83 fc ff}
014ah mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7d b6 5e}
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
0185h mov r11,7ff7c76219b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dd5a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 2a f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c76219b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dd5b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 2a f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86beeb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b ff fb ff}
01d5h mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 7d b6 5e}
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
0213h mov r11,7ff7c76219c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dd625h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 db 29 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c76219c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dd634h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cc 29 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c76219d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dd64eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 29 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c38f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 48 fc ff}
0290h mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 7c b6 5e}
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
02ceh mov r11,7ff7c76219d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dd6c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 29 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c76219e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dd6d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 29 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fb870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c76219e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dd6f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f 29 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 2d ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fea00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f9 ff ff}
033dh mov rcx,7ff7c8ca4f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 4f ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 7b b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 76 ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 7b b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 de 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 b1 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c7 ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[32i]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 44 cd c8 f7 7f 00 00 e8 db 6a b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 46 cd c8 f7 7f 00 00 e8 bd 6a b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 48 cd c8 f7 7f 00 00 e8 9f 6a b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 4a cd c8 f7 7f 00 00 e8 81 6a b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 50 1a 62 c7 f7 7f 00 00 39 09 ff 15 e0 27 f2 fe 8b d8 48 8b cf 49 bb 58 1a 62 c7 f7 7f 00 00 39 09 ff 15 d1 27 f2 fe 48 8b c8 e8 d1 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb 60 1a 62 c7 f7 7f 00 00 39 09 ff 15 b7 27 f2 fe 48 8b c8 e8 af c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 68 1a 62 c7 f7 7f 00 00 39 09 ff 15 9d 27 f2 fe 48 8b c8 e8 8d c7 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 7f fc ff 48 b9 00 54 ca c8 f7 7f 00 00 e8 97 79 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 1a 62 c7 f7 7f 00 00 39 09 ff 15 b9 26 f2 fe 8b e8 48 8b cf 49 bb 18 1a 62 c7 f7 7f 00 00 39 09 ff 15 aa 26 f2 fe 48 8b c8 e8 ea c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b 00 fc ff 48 b9 00 54 ca c8 f7 7f 00 00 e8 0c 79 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 1a 62 c7 f7 7f 00 00 39 09 ff 15 3b 26 f2 fe 8b f0 48 8b cb 49 bb 28 1a 62 c7 f7 7f 00 00 39 09 ff 15 2c 26 f2 fe 48 8b c8 e8 5c c6 ff ff c5 f9 10 70 08 48 8b cb 49 bb 30 1a 62 c7 f7 7f 00 00 39 09 ff 15 12 26 f2 fe 48 8b c8 e8 3a c6 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 90 4b fc ff 48 b9 00 54 ca c8 f7 7f 00 00 e8 51 78 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 1a 62 c7 f7 7f 00 00 39 09 ff 15 98 25 f2 fe 8b f0 48 8b cd 49 bb 40 1a 62 c7 f7 7f 00 00 39 09 ff 15 89 25 f2 fe 48 8b c8 e8 a1 c5 ff ff c5 f9 10 70 08 48 8b cd 49 bb 48 1a 62 c7 f7 7f 00 00 39 09 ff 15 6f 25 f2 fe 48 8b c8 e8 67 29 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 6b f5 ff ff 48 b9 00 54 ca c8 f7 7f 00 00 e8 a4 77 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 72 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 77 b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 da 5f 4e 48 8b d0 48 8b cf e8 09 ad 06 ff 48 8b cf e8 91 c3 ad 5e cc}
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
0026h mov rcx,7ff7c8cd44d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 44 cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 6a b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd46c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 46 cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 6a b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd48f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 48 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 6a b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd4a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4a cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 6a b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10dd820h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 27 f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10dd82fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 27 f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c7 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10dd849h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 27 f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c7 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10dd863h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d 27 f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c7 ff ff}
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
0145h call 7ff7c86c7290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 7f fc ff}
014ah mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 79 b6 5e}
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
0185h mov r11,7ff7c7621a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10dd947h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 26 f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10dd956h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 26 f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c6 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86bf400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 00 fc ff}
01d5h mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 79 b6 5e}
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
0213h mov r11,7ff7c7621a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10dd9c5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b 26 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10dd9d4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2c 26 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c6 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10dd9eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 26 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c6 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c3fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 4b fc ff}
0290h mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 78 b6 5e}
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
02ceh mov r11,7ff7c7621a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dda68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 25 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dda77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 25 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fba60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c5 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dda91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f 25 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 29 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fea68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 ff ff}
033dh mov rcx,7ff7c8ca5400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 54 ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 77 b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 72 ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 77 b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 da 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 ad 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c3 ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[64u]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 4c cd c8 f7 7f 00 00 e8 db 66 b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 4e cd c8 f7 7f 00 00 e8 bd 66 b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 50 cd c8 f7 7f 00 00 e8 9f 66 b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 52 cd c8 f7 7f 00 00 e8 81 66 b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb b0 1a 62 c7 f7 7f 00 00 39 09 ff 15 40 24 f2 fe 8b d8 48 8b cf 49 bb b8 1a 62 c7 f7 7f 00 00 39 09 ff 15 31 24 f2 fe 48 8b c8 e8 d1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 1a 62 c7 f7 7f 00 00 39 09 ff 15 17 24 f2 fe 48 8b c8 e8 af c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb c8 1a 62 c7 f7 7f 00 00 39 09 ff 15 fd 23 f2 fe 48 8b c8 e8 8d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 06 7c fc ff 48 b9 20 b6 ca c8 f7 7f 00 00 e8 97 75 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 1a 62 c7 f7 7f 00 00 39 09 ff 15 19 23 f2 fe 8b e8 48 8b cf 49 bb 78 1a 62 c7 f7 7f 00 00 39 09 ff 15 0a 23 f2 fe 48 8b c8 e8 ea c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 bb fd fb ff 48 b9 20 b6 ca c8 f7 7f 00 00 e8 0c 75 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 1a 62 c7 f7 7f 00 00 39 09 ff 15 9b 22 f2 fe 8b f0 48 8b cb 49 bb 88 1a 62 c7 f7 7f 00 00 39 09 ff 15 8c 22 f2 fe 48 8b c8 e8 5c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 90 1a 62 c7 f7 7f 00 00 39 09 ff 15 72 22 f2 fe 48 8b c8 e8 3a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 70 4a fc ff 48 b9 20 b6 ca c8 f7 7f 00 00 e8 51 74 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 1a 62 c7 f7 7f 00 00 39 09 ff 15 f8 21 f2 fe 8b f0 48 8b cd 49 bb a0 1a 62 c7 f7 7f 00 00 39 09 ff 15 e9 21 f2 fe 48 8b c8 e8 a1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb a8 1a 62 c7 f7 7f 00 00 39 09 ff 15 cf 21 f2 fe 48 8b c8 e8 67 25 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 d3 f1 ff ff 48 b9 20 b6 ca c8 f7 7f 00 00 e8 a4 73 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 6e ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 73 b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 d6 5f 4e 48 8b d0 48 8b cf e8 09 a9 06 ff 48 8b cf e8 91 bf ad 5e cc}
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
0026h mov rcx,7ff7c8cd4cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4c cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 66 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd4ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 4e cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 66 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd50f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 50 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 66 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd5278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 52 cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 66 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10ddbc0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 24 f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10ddbcfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 24 f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10ddbe9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 24 f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10ddc03h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd 23 f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c9 ff ff}
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
0145h call 7ff7c86c7310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 7c fc ff}
014ah mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 75 b6 5e}
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
0185h mov r11,7ff7c7621a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10ddce7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 23 f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10ddcf6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 23 f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86bf550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb fd fb ff}
01d5h mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 75 b6 5e}
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
0213h mov r11,7ff7c7621a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10ddd65h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b 22 f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10ddd74h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8c 22 f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10ddd8eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 22 f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c42c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4a fc ff}
0290h mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 74 b6 5e}
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
02ceh mov r11,7ff7c7621a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10dde08h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 21 f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10dde17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 21 f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fc060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10dde31h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf 21 f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 25 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86fead0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f1 ff ff}
033dh mov rcx,7ff7c8cab620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 73 b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6e ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 73 b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d6 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a9 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bf ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[64i]()[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 d0 54 cd c8 f7 7f 00 00 e8 db 62 b6 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 c8 56 cd c8 f7 7f 00 00 e8 bd 62 b6 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 f0 58 cd c8 f7 7f 00 00 e8 9f 62 b6 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 78 5a cd c8 f7 7f 00 00 e8 81 62 b6 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 10 1b 62 c7 f7 7f 00 00 39 09 ff 15 a0 20 f2 fe 8b d8 48 8b cf 49 bb 18 1b 62 c7 f7 7f 00 00 39 09 ff 15 91 20 f2 fe 48 8b c8 e8 c1 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 1b 62 c7 f7 7f 00 00 39 09 ff 15 77 20 f2 fe 48 8b c8 e8 9f c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 28 1b 62 c7 f7 7f 00 00 39 09 ff 15 5d 20 f2 fe 48 8b c8 e8 7d c7 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 86 78 fc ff 48 b9 70 58 ca c8 f7 7f 00 00 e8 97 71 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 1a 62 c7 f7 7f 00 00 39 09 ff 15 79 1f f2 fe 8b e8 48 8b cf 49 bb d8 1a 62 c7 f7 7f 00 00 39 09 ff 15 6a 1f f2 fe 48 8b c8 e8 da c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 0b fb fb ff 48 b9 70 58 ca c8 f7 7f 00 00 e8 0c 71 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 1a 62 c7 f7 7f 00 00 39 09 ff 15 fb 1e f2 fe 8b f0 48 8b cb 49 bb e8 1a 62 c7 f7 7f 00 00 39 09 ff 15 ec 1e f2 fe 48 8b c8 e8 4c c6 ff ff c5 f9 10 70 08 48 8b cb 49 bb f0 1a 62 c7 f7 7f 00 00 39 09 ff 15 d2 1e f2 fe 48 8b c8 e8 2a c6 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 50 49 fc ff 48 b9 70 58 ca c8 f7 7f 00 00 e8 51 70 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 1a 62 c7 f7 7f 00 00 39 09 ff 15 58 1e f2 fe 8b f0 48 8b cd 49 bb 00 1b 62 c7 f7 7f 00 00 39 09 ff 15 49 1e f2 fe 48 8b c8 e8 91 c5 ff ff c5 f9 10 70 08 48 8b cd 49 bb 08 1b 62 c7 f7 7f 00 00 39 09 ff 15 2f 1e f2 fe 48 8b c8 e8 67 21 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 3b ee ff ff 48 b9 70 58 ca c8 f7 7f 00 00 e8 a4 6f b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 93 6a ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 61 6f b6 5e 48 8b f8 48 8b ce 33 d2 e8 b4 d2 5f 4e 48 8b d0 48 8b cf e8 09 a5 06 ff 48 8b cf e8 91 bb ad 5e cc}
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
0026h mov rcx,7ff7c8cd54d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 54 cd c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 62 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cd56c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 56 cd c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 62 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cd58f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 58 cd c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 62 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cd5a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a cd c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 62 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 62 c7 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-10ddf60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 20 f2 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c7621b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 62 c7 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-10ddf6fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 20 f2 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c7621b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-10ddf89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 20 f2 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c7621b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 62 c7 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-10ddfa3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d 20 f2 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c7 ff ff}
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
0145h call 7ff7c86c7390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 78 fc ff}
014ah mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
0154h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 71 b6 5e}
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
0185h mov r11,7ff7c7621ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 62 c7 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-10de087h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 1f f2 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c7621ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 62 c7 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-10de096h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 1f f2 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c6 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c86bf6a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b fb fb ff}
01d5h mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
01dfh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 71 b6 5e}
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
0213h mov r11,7ff7c7621ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 62 c7 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-10de105h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb 1e f2 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c7621ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 62 c7 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-10de114h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ec 1e f2 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c6 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c7621af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 62 c7 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-10de12eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 1e f2 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c6 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c86c45a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 49 fc ff}
0290h mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
029ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 70 b6 5e}
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
02ceh mov r11,7ff7c7621af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 62 c7 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-10de1a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 1e f2 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c7621b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 62 c7 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-10de1b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 1e f2 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c86fc250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c5 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c7621b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 62 c7 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-10de1d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f 1e f2 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 21 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c86feb38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ee ff ff}
033dh mov rcx,7ff7c8ca5870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 58 ca c8 f7 7f 00 00}
0347h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 6f b6 5e}
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
0378h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 6a ab 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
038ah call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 6f b6 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 d2 5f 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 a5 06 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bb ad 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[8u]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 88 62 cd c8 f7 7f 00 00 e8 c9 5e b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 80 64 cd c8 f7 7f 00 00 e8 ab 5e b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 a8 66 cd c8 f7 7f 00 00 e8 8d 5e b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 30 68 cd c8 f7 7f 00 00 e8 6f 5e b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 70 1b 62 c7 f7 7f 00 00 39 09 ff 15 ee 1c f2 fe 8b d8 48 8b cf 49 bb 78 1b 62 c7 f7 7f 00 00 39 09 ff 15 df 1c f2 fe 48 8b c8 e8 9f c5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 80 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 bf 1c f2 fe 48 8b c8 e8 77 c5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 88 1b 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 9f 1c f2 fe 48 8b c8 e8 4f c5 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 d9 74 fc ff 48 b9 f8 62 ca c8 f7 7f 00 00 e8 6a 6d b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 1b 62 c7 f7 7f 00 00 39 09 ff 15 94 1b f2 fe 8b e8 48 8b cf 49 bb 38 1b 62 c7 f7 7f 00 00 39 09 ff 15 85 1b f2 fe 48 8b c8 e8 85 c4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 16 f8 fb ff 48 b9 f8 62 ca c8 f7 7f 00 00 e8 c7 6c b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 1b 62 c7 f7 7f 00 00 39 09 ff 15 01 1b f2 fe 8b f0 48 8b cb 49 bb 48 1b 62 c7 f7 7f 00 00 39 09 ff 15 f2 1a f2 fe 48 8b c8 e8 e2 c3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 50 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 d2 1a f2 fe 48 8b c8 e8 ba c3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 da 4b fc ff 48 b9 f8 62 ca c8 f7 7f 00 00 e8 eb 6b b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 1b 62 c7 f7 7f 00 00 39 09 ff 15 3d 1a f2 fe 8b f0 48 8b cd 49 bb 60 1b 62 c7 f7 7f 00 00 39 09 ff 15 2e 1a f2 fe 48 8b c8 e8 06 c3 ff ff c5 fd 10 70 08 48 8b cd 49 bb 68 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0e 1a f2 fe 48 8b c8 e8 e6 1c ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 81 eb ff ff 48 b9 f8 62 ca c8 f7 7f 00 00 e8 1a 6b b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f1 65 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 bf 6a b6 5e 48 8b f8 48 8b ce 33 d2 e8 12 ce 5f 4e 48 8b d0 48 8b cf e8 67 a0 06 ff 48 8b cf e8 ef b6 ad 5e cc}
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
0038h mov rcx,7ff7c8cd6288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 62 cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 5e b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd6480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 64 cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 5e b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd66a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 66 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 5e b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd6830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 68 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 5e b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10de312h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee 1c f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10de321h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df 1c f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c5 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10de341h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf 1c f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c5 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10de361h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 1c f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c5 ff ff}
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
0172h call 7ff7c86c7410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 74 fc ff}
0177h mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 6d b6 5e}
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
01cah mov r11,7ff7c7621b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10de46ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 94 1b f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10de47bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 1b f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c4 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bf7f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 f8 fb ff}
021ah mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 6c b6 5e}
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
026dh mov r11,7ff7c7621b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10de4ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 1b f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10de50eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 1a f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 c3 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10de52eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 1a f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c3 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c4c90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 4b fc ff}
02f6h mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 6b b6 5e}
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
0349h mov r11,7ff7c7621b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10de5c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d 1a f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10de5d2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e 1a f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fc440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c3 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10de5f2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e 1a f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 1c ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c86fed08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 eb ff ff}
03c7h mov rcx,7ff7c8ca62f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 62 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6b b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 65 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 6a b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 ce 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 a0 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b6 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[8i]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 74 cd c8 f7 7f 00 00 e8 19 5a b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 76 cd c8 f7 7f 00 00 e8 fb 59 b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 78 cd c8 f7 7f 00 00 e8 dd 59 b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 79 cd c8 f7 7f 00 00 e8 bf 59 b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb d0 1b 62 c7 f7 7f 00 00 39 09 ff 15 9e 18 f2 fe 8b d8 48 8b cf 49 bb d8 1b 62 c7 f7 7f 00 00 39 09 ff 15 8f 18 f2 fe 48 8b c8 e8 1f c3 ff ff c5 fd 10 70 08 48 8b cf 49 bb e0 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6f 18 f2 fe 48 8b c8 e8 f7 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb e8 1b 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 4f 18 f2 fe 48 8b c8 e8 cf c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a9 70 fc ff 48 b9 c8 67 ca c8 f7 7f 00 00 e8 ba 68 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 1b 62 c7 f7 7f 00 00 39 09 ff 15 44 17 f2 fe 8b e8 48 8b cf 49 bb 98 1b 62 c7 f7 7f 00 00 39 09 ff 15 35 17 f2 fe 48 8b c8 e8 05 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c6 f4 fb ff 48 b9 c8 67 ca c8 f7 7f 00 00 e8 17 68 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 1b 62 c7 f7 7f 00 00 39 09 ff 15 b1 16 f2 fe 8b f0 48 8b cb 49 bb a8 1b 62 c7 f7 7f 00 00 39 09 ff 15 a2 16 f2 fe 48 8b c8 e8 62 c1 ff ff c5 fd 10 70 08 48 8b cb 49 bb b0 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 82 16 f2 fe 48 8b c8 e8 3a c1 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 1a 4a fc ff 48 b9 c8 67 ca c8 f7 7f 00 00 e8 3b 67 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 1b 62 c7 f7 7f 00 00 39 09 ff 15 ed 15 f2 fe 8b f0 48 8b cd 49 bb c0 1b 62 c7 f7 7f 00 00 39 09 ff 15 de 15 f2 fe 48 8b c8 e8 86 c0 ff ff c5 fd 10 70 08 48 8b cd 49 bb c8 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 be 15 f2 fe 48 8b c8 e8 36 18 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 e7 ff ff 48 b9 c8 67 ca c8 f7 7f 00 00 e8 6a 66 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 41 61 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 0f 66 b6 5e 48 8b f8 48 8b ce 33 d2 e8 62 c9 5f 4e 48 8b d0 48 8b cf e8 b7 9b 06 ff 48 8b cf e8 3f b2 ad 5e cc}
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
0038h mov rcx,7ff7c8cd7408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 74 cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 5a b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd7600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 76 cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 59 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd7828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 78 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 59 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd79b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 79 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 59 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10de762h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e 18 f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10de771h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f 18 f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f c3 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10de791h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f 18 f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 c2 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10de7b1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f 18 f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c2 ff ff}
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
0172h call 7ff7c86c7490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 70 fc ff}
0177h mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 68 b6 5e}
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
01cah mov r11,7ff7c7621b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10de8bch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 44 17 f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10de8cbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 17 f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c2 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bf950h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 f4 fb ff}
021ah mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 68 b6 5e}
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
026dh mov r11,7ff7c7621ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10de94fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 16 f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10de95eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 16 f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c1 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10de97eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 16 f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c1 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c4f80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 4a fc ff}
02f6h mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 67 b6 5e}
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
0349h mov r11,7ff7c7621bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10dea13h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ed 15 f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10dea22h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de 15 f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fc670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 c0 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10dea42h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be 15 f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 18 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c86feda0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e7 ff ff}
03c7h mov rcx,7ff7c8ca67c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 67 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 66 b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 61 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 66 b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 c9 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 9b 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f b2 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[16u]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 7c cd c8 f7 7f 00 00 e8 69 51 b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 7e cd c8 f7 7f 00 00 e8 4b 51 b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 80 cd c8 f7 7f 00 00 e8 2d 51 b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 81 cd c8 f7 7f 00 00 e8 0f 51 b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 30 1c 62 c7 f7 7f 00 00 39 09 ff 15 4e 10 f2 fe 8b d8 48 8b cf 49 bb 38 1c 62 c7 f7 7f 00 00 39 09 ff 15 3f 10 f2 fe 48 8b c8 e8 9f bc ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1f 10 f2 fe 48 8b c8 e8 77 bc ff ff c5 7d 10 40 08 48 8b cf 49 bb 48 1c 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 ff 0f f2 fe 48 8b c8 e8 4f bc ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 79 68 fc ff 48 b9 38 6c ca c8 f7 7f 00 00 e8 0a 60 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 1b 62 c7 f7 7f 00 00 39 09 ff 15 f4 0e f2 fe 8b e8 48 8b cf 49 bb f8 1b 62 c7 f7 7f 00 00 39 09 ff 15 e5 0e f2 fe 48 8b c8 e8 85 bb ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 76 ed fb ff 48 b9 38 6c ca c8 f7 7f 00 00 e8 67 5f b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 1c 62 c7 f7 7f 00 00 39 09 ff 15 61 0e f2 fe 8b f0 48 8b cb 49 bb 08 1c 62 c7 f7 7f 00 00 39 09 ff 15 52 0e f2 fe 48 8b c8 e8 e2 ba ff ff c5 fd 10 70 08 48 8b cb 49 bb 10 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 32 0e f2 fe 48 8b c8 e8 ba ba ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 48 fc ff 48 b9 38 6c ca c8 f7 7f 00 00 e8 8b 5e b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 1c 62 c7 f7 7f 00 00 39 09 ff 15 9d 0d f2 fe 8b f0 48 8b cd 49 bb 20 1c 62 c7 f7 7f 00 00 39 09 ff 15 8e 0d f2 fe 48 8b c8 e8 06 ba ff ff c5 fd 10 70 08 48 8b cd 49 bb 28 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6e 0d f2 fe 48 8b c8 e8 86 0f ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 89 f8 ff ff 48 b9 38 6c ca c8 f7 7f 00 00 e8 ba 5d b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 91 58 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 5f 5d b6 5e 48 8b f8 48 8b ce 33 d2 e8 b2 c0 5f 4e 48 8b d0 48 8b cf e8 07 93 06 ff 48 8b cf e8 8f a9 ad 5e cc}
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
0038h mov rcx,7ff7c8cd7c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 7c cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 51 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd7e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7e cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 51 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd8028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 80 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 51 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd81b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 81 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 51 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10defb2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e 10 f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10defc1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f 10 f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bc ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10defe1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f 10 f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10df001h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 0f f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bc ff ff}
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
0172h call 7ff7c86c7510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 68 fc ff}
0177h mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 60 b6 5e}
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
01cah mov r11,7ff7c7621bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10df10ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f4 0e f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10df11bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e5 0e f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bfab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 ed fb ff}
021ah mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 5f b6 5e}
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
026dh mov r11,7ff7c7621c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10df19fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 0e f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10df1aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 0e f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ba ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10df1ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 0e f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ba ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c5670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 48 fc ff}
02f6h mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5e b6 5e}
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
0349h mov r11,7ff7c7621c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10df263h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d 0d f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10df272h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e 0d f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fc8a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ba ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10df292h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e 0d f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 0f ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8700770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f8 ff ff}
03c7h mov rcx,7ff7c8ca6c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 6c ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 5d b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 58 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 5d b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 c0 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 93 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a9 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[16i]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 84 cd c8 f7 7f 00 00 e8 b9 4c b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 86 cd c8 f7 7f 00 00 e8 9b 4c b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 88 cd c8 f7 7f 00 00 e8 7d 4c b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 89 cd c8 f7 7f 00 00 e8 5f 4c b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 90 1c 62 c7 f7 7f 00 00 39 09 ff 15 fe 0b f2 fe 8b d8 48 8b cf 49 bb 98 1c 62 c7 f7 7f 00 00 39 09 ff 15 ef 0b f2 fe 48 8b c8 e8 1f ba ff ff c5 fd 10 70 08 48 8b cf 49 bb a0 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 cf 0b f2 fe 48 8b c8 e8 f7 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb a8 1c 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 af 0b f2 fe 48 8b c8 e8 cf b9 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 49 64 fc ff 48 b9 a8 70 ca c8 f7 7f 00 00 e8 5a 5b b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 1c 62 c7 f7 7f 00 00 39 09 ff 15 a4 0a f2 fe 8b e8 48 8b cf 49 bb 58 1c 62 c7 f7 7f 00 00 39 09 ff 15 95 0a f2 fe 48 8b c8 e8 05 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 26 ea fb ff 48 b9 a8 70 ca c8 f7 7f 00 00 e8 b7 5a b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 1c 62 c7 f7 7f 00 00 39 09 ff 15 11 0a f2 fe 8b f0 48 8b cb 49 bb 68 1c 62 c7 f7 7f 00 00 39 09 ff 15 02 0a f2 fe 48 8b c8 e8 62 b8 ff ff c5 fd 10 70 08 48 8b cb 49 bb 70 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 e2 09 f2 fe 48 8b c8 e8 3a b8 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 46 fc ff 48 b9 a8 70 ca c8 f7 7f 00 00 e8 db 59 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 1c 62 c7 f7 7f 00 00 39 09 ff 15 4d 09 f2 fe 8b f0 48 8b cd 49 bb 80 1c 62 c7 f7 7f 00 00 39 09 ff 15 3e 09 f2 fe 48 8b c8 e8 86 b7 ff ff c5 fd 10 70 08 48 8b cd 49 bb 88 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1e 09 f2 fe 48 8b c8 e8 d6 0a ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 41 f4 ff ff 48 b9 a8 70 ca c8 f7 7f 00 00 e8 0a 59 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e1 53 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 af 58 b6 5e 48 8b f8 48 8b ce 33 d2 e8 02 bc 5f 4e 48 8b d0 48 8b cf e8 57 8e 06 ff 48 8b cf e8 df a4 ad 5e cc}
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
0038h mov rcx,7ff7c8cd8408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 84 cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 4c b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd8600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 86 cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 4c b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd8828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 88 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 4c b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd89b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 89 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 4c b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10df402h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe 0b f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10df411h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef 0b f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ba ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10df431h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf 0b f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b9 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10df451h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af 0b f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b9 ff ff}
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
0172h call 7ff7c86c7590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 64 fc ff}
0177h mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 5b b6 5e}
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
01cah mov r11,7ff7c7621c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10df55ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a4 0a f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10df56bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 0a f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bfc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 ea fb ff}
021ah mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 5a b6 5e}
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
026dh mov r11,7ff7c7621c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10df5efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 0a f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10df5feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 0a f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b8 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10df61eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 09 f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b8 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c5960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 46 fc ff}
02f6h mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 59 b6 5e}
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
0349h mov r11,7ff7c7621c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10df6b3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4d 09 f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10df6c2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e 09 f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fcad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b7 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10df6e2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1e 09 f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 0a ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c87007d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f4 ff ff}
03c7h mov rcx,7ff7c8ca70a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 70 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 59 b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 53 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 58 b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 bc 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 8e 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a4 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[32u]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 8c cd c8 f7 7f 00 00 e8 09 48 b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 8e cd c8 f7 7f 00 00 e8 eb 47 b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 90 cd c8 f7 7f 00 00 e8 cd 47 b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 91 cd c8 f7 7f 00 00 e8 af 47 b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb f0 1c 62 c7 f7 7f 00 00 39 09 ff 15 ae 07 f2 fe 8b d8 48 8b cf 49 bb f8 1c 62 c7 f7 7f 00 00 39 09 ff 15 9f 07 f2 fe 48 8b c8 e8 9f b7 ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7f 07 f2 fe 48 8b c8 e8 77 b7 ff ff c5 7d 10 40 08 48 8b cf 49 bb 08 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 5f 07 f2 fe 48 8b c8 e8 4f b7 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 19 60 fc ff 48 b9 18 75 ca c8 f7 7f 00 00 e8 aa 56 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 1c 62 c7 f7 7f 00 00 39 09 ff 15 54 06 f2 fe 8b e8 48 8b cf 49 bb b8 1c 62 c7 f7 7f 00 00 39 09 ff 15 45 06 f2 fe 48 8b c8 e8 85 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d6 e6 fb ff 48 b9 18 75 ca c8 f7 7f 00 00 e8 07 56 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 1c 62 c7 f7 7f 00 00 39 09 ff 15 c1 05 f2 fe 8b f0 48 8b cb 49 bb c8 1c 62 c7 f7 7f 00 00 39 09 ff 15 b2 05 f2 fe 48 8b c8 e8 e2 b5 ff ff c5 fd 10 70 08 48 8b cb 49 bb d0 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 92 05 f2 fe 48 8b c8 e8 ba b5 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 da 44 fc ff 48 b9 18 75 ca c8 f7 7f 00 00 e8 2b 55 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 1c 62 c7 f7 7f 00 00 39 09 ff 15 fd 04 f2 fe 8b f0 48 8b cd 49 bb e0 1c 62 c7 f7 7f 00 00 39 09 ff 15 ee 04 f2 fe 48 8b c8 e8 06 b5 ff ff c5 fd 10 70 08 48 8b cd 49 bb e8 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ce 04 f2 fe 48 8b c8 e8 26 06 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f9 ef ff ff 48 b9 18 75 ca c8 f7 7f 00 00 e8 5a 54 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 31 4f ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 ff 53 b6 5e 48 8b f8 48 8b ce 33 d2 e8 52 b7 5f 4e 48 8b d0 48 8b cf e8 a7 89 06 ff 48 8b cf e8 2f a0 ad 5e cc}
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
0038h mov rcx,7ff7c8cd8c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8c cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 48 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd8e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 8e cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 47 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd9028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 90 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 47 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd91b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 91 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 47 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10df852h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae 07 f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10df861h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 07 f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b7 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10df881h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f 07 f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b7 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10df8a1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f 07 f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b7 ff ff}
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
0172h call 7ff7c86c7610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 60 fc ff}
0177h mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 56 b6 5e}
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
01cah mov r11,7ff7c7621cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10df9ach]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 54 06 f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10df9bbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 06 f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b6 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bfd70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 e6 fb ff}
021ah mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 56 b6 5e}
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
026dh mov r11,7ff7c7621cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10dfa3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 05 f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10dfa4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 05 f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b5 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10dfa6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 05 f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b5 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c5c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 44 fc ff}
02f6h mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 55 b6 5e}
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
0349h mov r11,7ff7c7621cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10dfb03h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd 04 f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10dfb12h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee 04 f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fcd00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b5 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10dfb32h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce 04 f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 06 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8700840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ef ff ff}
03c7h mov rcx,7ff7c8ca7518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 75 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 54 b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 4f ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 53 b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 89 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a0 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[32i]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 94 cd c8 f7 7f 00 00 e8 59 43 b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 96 cd c8 f7 7f 00 00 e8 3b 43 b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 98 cd c8 f7 7f 00 00 e8 1d 43 b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 99 cd c8 f7 7f 00 00 e8 ff 42 b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 50 1d 62 c7 f7 7f 00 00 39 09 ff 15 5e 03 f2 fe 8b d8 48 8b cf 49 bb 58 1d 62 c7 f7 7f 00 00 39 09 ff 15 4f 03 f2 fe 48 8b c8 e8 1f b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2f 03 f2 fe 48 8b c8 e8 f7 b4 ff ff c5 7d 10 40 08 48 8b cf 49 bb 68 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 0f 03 f2 fe 48 8b c8 e8 cf b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e9 5b fc ff 48 b9 88 79 ca c8 f7 7f 00 00 e8 fa 51 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 1d 62 c7 f7 7f 00 00 39 09 ff 15 04 02 f2 fe 8b e8 48 8b cf 49 bb 18 1d 62 c7 f7 7f 00 00 39 09 ff 15 f5 01 f2 fe 48 8b c8 e8 05 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 86 e3 fb ff 48 b9 88 79 ca c8 f7 7f 00 00 e8 57 51 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 1d 62 c7 f7 7f 00 00 39 09 ff 15 71 01 f2 fe 8b f0 48 8b cb 49 bb 28 1d 62 c7 f7 7f 00 00 39 09 ff 15 62 01 f2 fe 48 8b c8 e8 62 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 30 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 42 01 f2 fe 48 8b c8 e8 3a b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 1a 43 fc ff 48 b9 88 79 ca c8 f7 7f 00 00 e8 7b 50 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 1d 62 c7 f7 7f 00 00 39 09 ff 15 ad 00 f2 fe 8b f0 48 8b cd 49 bb 40 1d 62 c7 f7 7f 00 00 39 09 ff 15 9e 00 f2 fe 48 8b c8 e8 86 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 48 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7e 00 f2 fe 48 8b c8 e8 76 01 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 b1 eb ff ff 48 b9 88 79 ca c8 f7 7f 00 00 e8 aa 4f b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 81 4a ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 4f 4f b6 5e 48 8b f8 48 8b ce 33 d2 e8 a2 b2 5f 4e 48 8b d0 48 8b cf e8 f7 84 06 ff 48 8b cf e8 7f 9b ad 5e cc}
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
0038h mov rcx,7ff7c8cd9408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 94 cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 43 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd9600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 96 cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 43 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cd9828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 98 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 43 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cd99b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 99 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 42 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10dfca2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e 03 f2 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10dfcb1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f 03 f2 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b5 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10dfcd1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f 03 f2 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10dfcf1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f 03 f2 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b4 ff ff}
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
0172h call 7ff7c86c7690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 5b fc ff}
0177h mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 51 b6 5e}
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
01cah mov r11,7ff7c7621d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10dfdfch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 04 02 f2 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10dfe0bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 01 f2 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b4 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86bfed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 e3 fb ff}
021ah mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 51 b6 5e}
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
026dh mov r11,7ff7c7621d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10dfe8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 01 f2 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10dfe9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 01 f2 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b3 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10dfebeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 01 f2 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b3 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c5f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 43 fc ff}
02f6h mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 50 b6 5e}
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
0349h mov r11,7ff7c7621d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10dff53h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ad 00 f2 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10dff62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e 00 f2 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fcf30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b2 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10dff82h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e 00 f2 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 01 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c87008a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 eb ff ff}
03c7h mov rcx,7ff7c8ca7988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 79 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 4f b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 4a ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 4f b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 b2 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 84 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 9b ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[64u]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 9c cd c8 f7 7f 00 00 e8 a9 3e b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 9e cd c8 f7 7f 00 00 e8 8b 3e b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 a0 cd c8 f7 7f 00 00 e8 6d 3e b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 a1 cd c8 f7 7f 00 00 e8 4f 3e b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb b0 1d 62 c7 f7 7f 00 00 39 09 ff 15 0e ff f1 fe 8b d8 48 8b cf 49 bb b8 1d 62 c7 f7 7f 00 00 39 09 ff 15 ff fe f1 fe 48 8b c8 e8 9f b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 df fe f1 fe 48 8b c8 e8 77 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb c8 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 bf fe f1 fe 48 8b c8 e8 4f b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 b9 57 fc ff 48 b9 78 c4 ca c8 f7 7f 00 00 e8 4a 4d b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 1d 62 c7 f7 7f 00 00 39 09 ff 15 b4 fd f1 fe 8b e8 48 8b cf 49 bb 78 1d 62 c7 f7 7f 00 00 39 09 ff 15 a5 fd f1 fe 48 8b c8 e8 85 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 36 e0 fb ff 48 b9 78 c4 ca c8 f7 7f 00 00 e8 a7 4c b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 1d 62 c7 f7 7f 00 00 39 09 ff 15 21 fd f1 fe 8b f0 48 8b cb 49 bb 88 1d 62 c7 f7 7f 00 00 39 09 ff 15 12 fd f1 fe 48 8b c8 e8 e2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 90 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 f2 fc f1 fe 48 8b c8 e8 ba b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 45 fc ff 48 b9 78 c4 ca c8 f7 7f 00 00 e8 cb 4b b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 1d 62 c7 f7 7f 00 00 39 09 ff 15 5d fc f1 fe 8b f0 48 8b cd 49 bb a0 1d 62 c7 f7 7f 00 00 39 09 ff 15 4e fc f1 fe 48 8b c8 e8 06 b4 ff ff c5 fd 10 70 08 48 8b cd 49 bb a8 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2e fc f1 fe 48 8b c8 e8 c6 fc fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 e7 ff ff 48 b9 78 c4 ca c8 f7 7f 00 00 e8 fa 4a b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 d1 45 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 9f 4a b6 5e 48 8b f8 48 8b ce 33 d2 e8 f2 ad 5f 4e 48 8b d0 48 8b cf e8 47 80 06 ff 48 8b cf e8 cf 96 ad 5e cc}
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
0038h mov rcx,7ff7c8cd9c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9c cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 3e b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cd9e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 9e cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 3e b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cda028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a0 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 3e b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cda1b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a1 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 3e b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10e00f2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e ff f1 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10e0101h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff fe f1 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b6 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10e0121h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df fe f1 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10e0141h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf fe f1 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b6 ff ff}
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
0172h call 7ff7c86c7710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 57 fc ff}
0177h mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 4d b6 5e}
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
01cah mov r11,7ff7c7621d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10e024ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b4 fd f1 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10e025bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a5 fd f1 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b5 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86c0030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 e0 fb ff}
021ah mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 4c b6 5e}
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
026dh mov r11,7ff7c7621d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10e02dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 fd f1 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10e02eeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 fd f1 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b4 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10e030eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 fc f1 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b4 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c6630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 45 fc ff}
02f6h mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 4b b6 5e}
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
0349h mov r11,7ff7c7621d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10e03a3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d fc f1 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10e03b2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e fc f1 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fd560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b4 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10e03d2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e fc f1 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 fc fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8700910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e7 ff ff}
03c7h mov rcx,7ff7c8cac478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c4 ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 4a b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 45 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 4a b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 ad 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 80 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 96 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[64i]()[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 08 a4 cd c8 f7 7f 00 00 e8 f9 39 b6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 00 a6 cd c8 f7 7f 00 00 e8 db 39 b6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 28 a8 cd c8 f7 7f 00 00 e8 bd 39 b6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 b0 a9 cd c8 f7 7f 00 00 e8 9f 39 b6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 10 1e 62 c7 f7 7f 00 00 39 09 ff 15 be fa f1 fe 8b d8 48 8b cf 49 bb 18 1e 62 c7 f7 7f 00 00 39 09 ff 15 af fa f1 fe 48 8b c8 e8 1f b4 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 1e 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8f fa f1 fe 48 8b c8 e8 f7 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb 28 1e 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 6f fa f1 fe 48 8b c8 e8 cf b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 89 57 fc ff 48 b9 f8 7d ca c8 f7 7f 00 00 e8 9a 48 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 1d 62 c7 f7 7f 00 00 39 09 ff 15 64 f9 f1 fe 8b e8 48 8b cf 49 bb d8 1d 62 c7 f7 7f 00 00 39 09 ff 15 55 f9 f1 fe 48 8b c8 e8 05 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e6 e0 fb ff 48 b9 f8 7d ca c8 f7 7f 00 00 e8 f7 47 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 1d 62 c7 f7 7f 00 00 39 09 ff 15 d1 f8 f1 fe 8b f0 48 8b cb 49 bb e8 1d 62 c7 f7 7f 00 00 39 09 ff 15 c2 f8 f1 fe 48 8b c8 e8 62 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb f0 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 a2 f8 f1 fe 48 8b c8 e8 3a b2 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 43 fc ff 48 b9 f8 7d ca c8 f7 7f 00 00 e8 1b 47 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 1d 62 c7 f7 7f 00 00 39 09 ff 15 0d f8 f1 fe 8b f0 48 8b cd 49 bb 00 1e 62 c7 f7 7f 00 00 39 09 ff 15 fe f7 f1 fe 48 8b c8 e8 86 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb 08 1e 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 de f7 f1 fe 48 8b c8 e8 16 f8 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 21 e3 ff ff 48 b9 f8 7d ca c8 f7 7f 00 00 e8 4a 46 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 21 41 ab 5e 48 8b f0 48 b9 20 96 98 c7 f7 7f 00 00 e8 ef 45 b6 5e 48 8b f8 48 8b ce 33 d2 e8 42 a9 5f 4e 48 8b d0 48 8b cf e8 97 7b 06 ff 48 8b cf e8 1f 92 ad 5e cc}
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
0038h mov rcx,7ff7c8cda408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a4 cd c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 39 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cda600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a6 cd c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 39 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cda828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a8 cd c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 39 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cda9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a9 cd c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 39 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 62 c7 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-10e0542h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be fa f1 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 62 c7 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-10e0551h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af fa f1 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b4 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c7621e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 62 c7 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-10e0571h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f fa f1 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b3 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c7621e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 62 c7 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-10e0591h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f fa f1 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b3 ff ff}
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
0172h call 7ff7c86c7b90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 57 fc ff}
0177h mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
0181h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 48 b6 5e}
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
01cah mov r11,7ff7c7621dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 62 c7 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-10e069ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 64 f9 f1 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c7621dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 62 c7 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-10e06abh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 f9 f1 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b3 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c86c0590h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 e0 fb ff}
021ah mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
0224h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 47 b6 5e}
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
026dh mov r11,7ff7c7621de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 62 c7 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-10e072fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 f8 f1 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c7621de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 62 c7 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-10e073eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 f8 f1 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b2 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c7621df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 62 c7 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-10e075eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 f8 f1 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b2 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c86c6920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 43 fc ff}
02f6h mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
0300h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 47 b6 5e}
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
0349h mov r11,7ff7c7621df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 62 c7 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-10e07f3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0d f8 f1 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c7621e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 62 c7 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-10e0802h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe f7 f1 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c86fd790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b1 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c7621e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 62 c7 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-10e0822h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de f7 f1 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c86f1e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 f8 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c8700978h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e3 ff ff}
03c7h mov rcx,7ff7c8ca7df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7d ca c8 f7 7f 00 00}
03d1h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 46 b6 5e}
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
041ah call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 41 ab 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c7989620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 96 98 c7 f7 7f 00 00}
042ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 45 b6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a9 5f 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c776a270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7b 06 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 92 ad 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
