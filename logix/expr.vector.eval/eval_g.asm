------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 92 d4 c8 f7 7f 00 00 e8 9c fa ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f0 29 d8 c8 f7 7f 00 00 e8 81 fa ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 d8 2a d8 c8 f7 7f 00 00 e8 66 fa ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 88 2b d8 c8 f7 7f 00 00 e8 4b fa ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 48 94 d4 c8 f7 7f 00 00 e8 30 fa ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb b8 17 64 c7 f7 7f 00 00 48 b8 b8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 39 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 17 64 c7 f7 7f 00 00 48 b8 c0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 11 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 99 09 ae 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb a0 17 64 c7 f7 7f 00 00 48 b8 a0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 60 09 ae 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb a8 17 64 c7 f7 7f 00 00 48 b8 a8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 88 93 ff ff eb 2d 48 8b c8 49 bb b0 17 64 c7 f7 7f 00 00 48 b8 b0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 63 93 ff ff eb 08 48 8b c8 e8 a1 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 0b 04 a3 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 d9 08 ae 5e 48 8b f8 48 8b ce 33 d2 e8 2c 6c 57 4e 48 8b d0 48 8b cf e8 51 90 00 ff 48 8b cf e8 09 55 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d492f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 92 d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c fa ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d829f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 29 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 fa ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d82ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 2a d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fa ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d82b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 2b d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b fa ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d49448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 94 d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 fa ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76417b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76417b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 94 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76417c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76417c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 17 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 94 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 09 ae 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76417a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c76417a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 17 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 09 ae 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76417a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c76417a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 17 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 93 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76417b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c76417b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 17 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 93 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f7 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 04 a3 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 08 ae 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 6c 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 90 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 55 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c8 97 d4 c8 f7 7f 00 00 e8 8c f8 ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 a8 30 d8 c8 f7 7f 00 00 e8 71 f8 ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 90 31 d8 c8 f7 7f 00 00 e8 56 f8 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 40 32 d8 c8 f7 7f 00 00 e8 3b f8 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 18 99 d4 c8 f7 7f 00 00 e8 20 f8 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb e0 17 64 c7 f7 7f 00 00 48 b8 e0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 59 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb e8 17 64 c7 f7 7f 00 00 48 b8 e8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 31 92 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 98 96 d4 c8 f7 7f 00 00 e8 89 07 ae 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c8 17 64 c7 f7 7f 00 00 48 b8 c8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 98 96 d4 c8 f7 7f 00 00 e8 50 07 ae 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb d0 17 64 c7 f7 7f 00 00 48 b8 d0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a8 91 ff ff eb 2d 48 8b c8 49 bb d8 17 64 c7 f7 7f 00 00 48 b8 d8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 91 ff ff eb 08 48 8b c8 e8 31 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 fb 01 a3 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 c9 06 ae 5e 48 8b f8 48 8b ce 33 d2 e8 1c 6a 57 4e 48 8b d0 48 8b cf e8 41 8e 00 ff 48 8b cf e8 f9 52 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d497c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 97 d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c f8 ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d830a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 30 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f8 ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d83190h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 31 d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 f8 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d83240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 32 d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b f8 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d49918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 99 d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f8 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76417e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76417e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 17 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 92 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76417e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76417e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 17 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 92 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 07 ae 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76417c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c76417c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 17 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 07 ae 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76417d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c76417d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 17 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 91 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76417d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c76417d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 17 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 91 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 01 a3 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 06 ae 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 6a 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 8e 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 52 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 38 9c d4 c8 f7 7f 00 00 e8 7c f6 ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 60 33 d8 c8 f7 7f 00 00 e8 61 f6 ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 48 34 d8 c8 f7 7f 00 00 e8 46 f6 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f8 34 d8 c8 f7 7f 00 00 e8 2b f6 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 88 9d d4 c8 f7 7f 00 00 e8 10 f6 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 08 18 64 c7 f7 7f 00 00 48 b8 08 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 69 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 10 18 64 c7 f7 7f 00 00 48 b8 10 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 41 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 08 9b d4 c8 f7 7f 00 00 e8 79 05 ae 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb f0 17 64 c7 f7 7f 00 00 48 b8 f0 17 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 08 9b d4 c8 f7 7f 00 00 e8 40 05 ae 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb f8 17 64 c7 f7 7f 00 00 48 b8 f8 17 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b8 8f ff ff eb 2d 48 8b c8 49 bb 00 18 64 c7 f7 7f 00 00 48 b8 00 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 8f ff ff eb 08 48 8b c8 e8 79 f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 eb ff a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 b9 04 ae 5e 48 8b f8 48 8b ce 33 d2 e8 0c 68 57 4e 48 8b d0 48 8b cf e8 31 8c 00 ff 48 8b cf e8 e9 50 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d49c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9c d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c f6 ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d83360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 33 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 f6 ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d83448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 34 d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f6 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d834f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 34 d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b f6 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d49d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9d d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 f6 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7641808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7641808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 90 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7641810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 90 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 05 ae 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76417f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c76417f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 17 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 05 ae 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76417f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c76417f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 8f ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7641800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c7641800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f758h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8f ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f4 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ff a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 04 ae 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 68 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8c 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 50 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a8 a0 d4 c8 f7 7f 00 00 e8 6c f4 ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 18 36 d8 c8 f7 7f 00 00 e8 51 f4 ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 00 37 d8 c8 f7 7f 00 00 e8 36 f4 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 b0 37 d8 c8 f7 7f 00 00 e8 1b f4 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 f8 a1 d4 c8 f7 7f 00 00 e8 00 f4 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 30 18 64 c7 f7 7f 00 00 48 b8 30 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 79 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 38 18 64 c7 f7 7f 00 00 48 b8 38 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 78 9f d4 c8 f7 7f 00 00 e8 69 03 ae 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 18 18 64 c7 f7 7f 00 00 48 b8 18 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 78 9f d4 c8 f7 7f 00 00 e8 30 03 ae 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 20 18 64 c7 f7 7f 00 00 48 b8 20 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c8 8d ff ff eb 2d 48 8b c8 49 bb 28 18 64 c7 f7 7f 00 00 48 b8 28 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a3 8d ff ff eb 08 48 8b c8 e8 c1 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 db fd a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 a9 02 ae 5e 48 8b f8 48 8b ce 33 d2 e8 fc 65 57 4e 48 8b d0 48 8b cf e8 21 8a 00 ff 48 8b cf e8 d9 4e a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d4a0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a0 d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f4 ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d83618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 36 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f4 ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d83700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 37 d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 f4 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d837b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 37 d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f4 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d4a1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 a1 d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 f4 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7641830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7641830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 8e ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7641838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8e ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 03 ae 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7641818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c7641818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 03 ae 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7641820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c7641820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8d ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7641828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c7641828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f778h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 8d ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f2 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db fd a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 02 ae 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 65 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 8a 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 4e a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 18 a5 d4 c8 f7 7f 00 00 e8 5c f2 ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 d0 38 d8 c8 f7 7f 00 00 e8 41 f2 ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 b8 39 d8 c8 f7 7f 00 00 e8 26 f2 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 68 3a d8 c8 f7 7f 00 00 e8 0b f2 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 68 a6 d4 c8 f7 7f 00 00 e8 f0 f1 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 58 18 64 c7 f7 7f 00 00 48 b8 58 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 60 18 64 c7 f7 7f 00 00 48 b8 60 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 59 01 ae 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 40 18 64 c7 f7 7f 00 00 48 b8 40 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 20 01 ae 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 48 18 64 c7 f7 7f 00 00 48 b8 48 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 8b ff ff eb 2d 48 8b c8 49 bb 50 18 64 c7 f7 7f 00 00 48 b8 50 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 8b ff ff eb 08 48 8b c8 e8 09 f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 cb fb a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 99 00 ae 5e 48 8b f8 48 8b ce 33 d2 e8 ec 63 57 4e 48 8b d0 48 8b cf e8 11 88 00 ff 48 8b cf e8 c9 4c a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d4a518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a5 d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f2 ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d838d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 38 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f2 ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d839b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 39 d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 f2 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d83a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3a d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f2 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d4a668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 a6 d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f1 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7641858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7641858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8c ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7641860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8c ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 01 ae 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7641840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c7641840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 18 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 01 ae 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7641848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c7641848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 18 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8b ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7641850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c7641850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8b ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785cf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f1 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fb a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 00 ae 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 63 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 88 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 4c a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 88 a9 d4 c8 f7 7f 00 00 e8 3c ec ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 88 3b d8 c8 f7 7f 00 00 e8 21 ec ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 70 3c d8 c8 f7 7f 00 00 e8 06 ec ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 20 3d d8 c8 f7 7f 00 00 e8 eb eb ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 d8 aa d4 c8 f7 7f 00 00 e8 d0 eb ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 80 18 64 c7 f7 7f 00 00 48 b8 80 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 86 ff ff c5 f9 10 70 08 48 8b cf 49 bb 88 18 64 c7 f7 7f 00 00 48 b8 88 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 39 fb ad 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 68 18 64 c7 f7 7f 00 00 48 b8 68 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 00 fb ad 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 70 18 64 c7 f7 7f 00 00 48 b8 70 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 85 ff ff eb 2d 48 8b c8 49 bb 78 18 64 c7 f7 7f 00 00 48 b8 78 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 85 ff ff eb 08 48 8b c8 e8 19 eb ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 ab f5 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 79 fa ad 5e 48 8b f8 48 8b ce 33 d2 e8 cc 5d 57 4e 48 8b d0 48 8b cf e8 f1 81 00 ff 48 8b cf e8 a9 46 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d4a988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 a9 d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c ec ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d83b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 3b d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 ec ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d83c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 3c d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ec ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d83d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 3d d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb eb ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d4aad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 aa d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 eb ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7641880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7641880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 86 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7641888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7641888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 86 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 fb ad 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7641868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c7641868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 18 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 fb ad 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7641870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c7641870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 18 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 85 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7641878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c7641878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f7b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 85 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8785d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 eb ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f5 a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa ad 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 5d 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 81 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 46 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 08 0c d6 c8 f7 7f 00 00 e8 2c ea ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 40 3e d8 c8 f7 7f 00 00 e8 11 ea ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 28 3f d8 c8 f7 7f 00 00 e8 f6 e9 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 d8 3f d8 c8 f7 7f 00 00 e8 db e9 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 a0 5b d6 c8 f7 7f 00 00 e8 c0 e9 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb a8 18 64 c7 f7 7f 00 00 48 b8 a8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 09 85 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 18 64 c7 f7 7f 00 00 48 b8 b0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 84 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 29 f9 ad 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 90 18 64 c7 f7 7f 00 00 48 b8 90 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 f0 f8 ad 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 98 18 64 c7 f7 7f 00 00 48 b8 98 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 58 84 ff ff eb 2d 48 8b c8 49 bb a0 18 64 c7 f7 7f 00 00 48 b8 a0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 84 ff ff eb 08 48 8b c8 e8 b1 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 9b f3 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 69 f8 ad 5e 48 8b f8 48 8b ce 33 d2 e8 bc 5b 57 4e 48 8b d0 48 8b cf e8 e1 7f 00 ff 48 8b cf e8 99 44 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d60c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 0c d6 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ea ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d83e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 3e d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ea ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d83f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 3f d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 e9 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d83fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 3f d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e9 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d65ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 5b d6 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 e9 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76418a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76418a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 85 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76418b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76418b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 84 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f9 ad 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7641890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c7641890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 18 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 f8 ad 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7641898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c7641898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 18 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 84 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76418a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c76418a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f848h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 84 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8786cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f3 a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f8 ad 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 5b 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 7f 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 44 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 ad d4 c8 f7 7f 00 00 e8 1c e8 ad 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f8 40 d8 c8 f7 7f 00 00 e8 01 e8 ad 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 e0 41 d8 c8 f7 7f 00 00 e8 e6 e7 ad 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 90 42 d8 c8 f7 7f 00 00 e8 cb e7 ad 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 48 af d4 c8 f7 7f 00 00 e8 b0 e7 ad 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb d0 18 64 c7 f7 7f 00 00 48 b8 d0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 19 83 ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 18 64 c7 f7 7f 00 00 48 b8 d8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 82 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 19 f7 ad 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b8 18 64 c7 f7 7f 00 00 48 b8 b8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 e0 f6 ad 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb c0 18 64 c7 f7 7f 00 00 48 b8 c0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 68 82 ff ff eb 2d 48 8b c8 49 bb c8 18 64 c7 f7 7f 00 00 48 b8 c8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 43 82 ff ff eb 08 48 8b c8 e8 f9 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 8b f1 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 59 f6 ad 5e 48 8b f8 48 8b ce 33 d2 e8 ac 59 57 4e 48 8b d0 48 8b cf e8 d1 7d 00 ff 48 8b cf e8 89 42 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d4adf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ad d4 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c e8 ad 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d840f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 40 d8 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e8 ad 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d841e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 41 d8 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 e7 ad 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d84290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 42 d8 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb e7 ad 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d4af48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 af d4 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 e7 ad 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76418d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 64 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76418d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 18 64 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c877f868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 83 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76418d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 64 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76418d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 18 64 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c877f868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 82 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f7 ad 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76418b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 64 c7 f7 7f 00 00}
0123h mov rax,7ff7c76418b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 18 64 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 f6 ad 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76418c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 64 c7 f7 7f 00 00}
015ah mov rax,7ff7c76418c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 18 64 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c877f868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 82 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76418c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 64 c7 f7 7f 00 00}
017fh mov rax,7ff7c76418c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 18 64 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c877f868h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 82 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8786d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f1 a2 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f6 ad 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 59 57 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 7d 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 42 a5 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 80 b8 d4 c8 f7 7f 00 00 e8 03 e6 ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 e0 48 d8 c8 f7 7f 00 00 e8 e8 e5 ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 c8 49 d8 c8 f7 7f 00 00 e8 cd e5 ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 78 4a d8 c8 f7 7f 00 00 e8 b2 e5 ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 d0 b9 d4 c8 f7 7f 00 00 e8 97 e5 ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb f8 18 64 c7 f7 7f 00 00 48 b8 f8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 40 81 ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 19 64 c7 f7 7f 00 00 48 b8 00 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 12 81 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 ee f4 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb e0 18 64 c7 f7 7f 00 00 48 b8 e0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 af f4 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb e8 18 64 c7 f7 7f 00 00 48 b8 e8 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 77 80 ff ff eb 2d 48 8b c8 49 bb f0 18 64 c7 f7 7f 00 00 48 b8 f0 18 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 80 ff ff eb 08 48 8b c8 e8 58 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 4e ef a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 1c f4 ad 5e 48 8b f8 48 8b ce 33 d2 e8 6f 57 57 4e 48 8b d0 48 8b cf e8 94 7b 00 ff 48 8b cf e8 4c 40 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4b880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b8 d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 e6 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d848e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 48 d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 e5 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d849c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 49 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd e5 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d84a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 4a d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 e5 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4b9d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b9 d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 e5 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76418f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76418f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 18 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877f8a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 81 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7641900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c7641900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877f8a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 81 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f4 ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76418e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c76418e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 18 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f4 ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76418e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c76418e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 18 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877f8a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 80 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76418f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76418f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 18 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877f8a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 80 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8786eb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f6 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e ef a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c f4 ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 57 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 7b 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 40 a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 50 bd d4 c8 f7 7f 00 00 e8 b3 e3 ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 98 4f d8 c8 f7 7f 00 00 e8 98 e3 ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 80 50 d8 c8 f7 7f 00 00 e8 7d e3 ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 30 51 d8 c8 f7 7f 00 00 e8 62 e3 ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 a0 be d4 c8 f7 7f 00 00 e8 47 e3 ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 20 19 64 c7 f7 7f 00 00 48 b8 20 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 90 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 28 19 64 c7 f7 7f 00 00 48 b8 28 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 62 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 20 bc d4 c8 f7 7f 00 00 e8 9e f2 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 08 19 64 c7 f7 7f 00 00 48 b8 08 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 20 bc d4 c8 f7 7f 00 00 e8 5f f2 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 10 19 64 c7 f7 7f 00 00 48 b8 10 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c7 81 ff ff eb 2d 48 8b c8 49 bb 18 19 64 c7 f7 7f 00 00 48 b8 18 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 81 ff ff eb 08 48 8b c8 e8 a8 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fe ec a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 cc f1 ad 5e 48 8b f8 48 8b ce 33 d2 e8 1f 55 57 4e 48 8b d0 48 8b cf e8 44 79 00 ff 48 8b cf e8 fc 3d a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4bd50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 bd d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 e3 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d84f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4f d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 e3 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d85080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 50 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e3 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d85130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 51 d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 e3 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4bea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 be d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 e3 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7641920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fc48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 82 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7641928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c7641928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fc48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 82 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e f2 ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7641908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c7641908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 19 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f2 ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7641910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c7641910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877fc48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 81 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7641918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7641918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 19 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877fc48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 81 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8786f58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f4 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe ec a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f1 ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 55 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 79 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 3d a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 c0 c1 d4 c8 f7 7f 00 00 e8 63 e1 ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 50 52 d8 c8 f7 7f 00 00 e8 48 e1 ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 38 53 d8 c8 f7 7f 00 00 e8 2d e1 ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 e8 53 d8 c8 f7 7f 00 00 e8 12 e1 ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 10 c3 d4 c8 f7 7f 00 00 e8 f7 e0 ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 48 19 64 c7 f7 7f 00 00 48 b8 48 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 60 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb 50 19 64 c7 f7 7f 00 00 48 b8 50 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 32 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 4e f0 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 30 19 64 c7 f7 7f 00 00 48 b8 30 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 0f f0 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 38 19 64 c7 f7 7f 00 00 48 b8 38 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 7f ff ff eb 2d 48 8b c8 49 bb 40 19 64 c7 f7 7f 00 00 48 b8 40 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 7f ff ff eb 08 48 8b c8 e8 b0 f2 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ae ea a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 7c ef ad 5e 48 8b f8 48 8b ce 33 d2 e8 cf 52 57 4e 48 8b d0 48 8b cf e8 f4 76 00 ff 48 8b cf e8 ac 3b a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4c1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c1 d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 e1 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d85250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 52 d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 e1 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d85338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 53 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e1 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d853e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 53 d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e1 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4c310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c3 d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 e0 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7641948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fc68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 80 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7641950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c7641950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fc68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 80 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f0 ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7641930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c7641930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 19 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f0 ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7641938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c7641938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 19 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877fc68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7f ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7641940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7641940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 19 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877fc68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 7f ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8786fb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f2 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae ea a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ef ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 52 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 76 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 3b a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 30 c6 d4 c8 f7 7f 00 00 e8 13 df ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 08 55 d8 c8 f7 7f 00 00 e8 f8 de ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 f0 55 d8 c8 f7 7f 00 00 e8 dd de ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 a0 56 d8 c8 f7 7f 00 00 e8 c2 de ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 80 c7 d4 c8 f7 7f 00 00 e8 a7 de ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 70 19 64 c7 f7 7f 00 00 48 b8 70 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 30 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb 78 19 64 c7 f7 7f 00 00 48 b8 78 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 02 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 fe ed ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 58 19 64 c7 f7 7f 00 00 48 b8 58 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 bf ed ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 60 19 64 c7 f7 7f 00 00 48 b8 60 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 67 7d ff ff eb 2d 48 8b c8 49 bb 68 19 64 c7 f7 7f 00 00 48 b8 68 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 42 7d ff ff eb 08 48 8b c8 e8 b8 f0 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 5e e8 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 2c ed ad 5e 48 8b f8 48 8b ce 33 d2 e8 7f 50 57 4e 48 8b d0 48 8b cf e8 a4 74 00 ff 48 8b cf e8 5c 39 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4c630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c6 d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 df ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d85508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 55 d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 de ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d855f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 55 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd de ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d856a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 56 d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 de ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4c780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c7 d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 de ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7641970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fc88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7e ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7641978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c7641978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fc88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 7e ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe ed ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7641958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c7641958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 19 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ed ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7641960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c7641960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 19 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877fc88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7d ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7641968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7641968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 19 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877fc88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7d ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8787008h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e8 a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ed ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 50 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 74 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 39 a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a0 ca d4 c8 f7 7f 00 00 e8 c3 d8 ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 c0 57 d8 c8 f7 7f 00 00 e8 a8 d8 ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 a8 58 d8 c8 f7 7f 00 00 e8 8d d8 ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 58 59 d8 c8 f7 7f 00 00 e8 72 d8 ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 f0 cb d4 c8 f7 7f 00 00 e8 57 d8 ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 98 19 64 c7 f7 7f 00 00 48 b8 98 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 00 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb a0 19 64 c7 f7 7f 00 00 48 b8 a0 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d2 77 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 ae e7 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 80 19 64 c7 f7 7f 00 00 48 b8 80 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 6f e7 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 88 19 64 c7 f7 7f 00 00 48 b8 88 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 37 77 ff ff eb 2d 48 8b c8 49 bb 90 19 64 c7 f7 7f 00 00 48 b8 90 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 77 ff ff eb 08 48 8b c8 e8 38 fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0e e2 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 dc e6 ad 5e 48 8b f8 48 8b ce 33 d2 e8 2f 4a 57 4e 48 8b d0 48 8b cf e8 54 6e 00 ff 48 8b cf e8 0c 33 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4caa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ca d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 d8 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d857c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 57 d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 d8 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d858a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 58 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d d8 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d85958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 59 d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 d8 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4cbf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 cb d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 d8 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7641998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 78 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76419a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c76419a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 77 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae e7 ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7641980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c7641980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 19 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f e7 ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7641988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c7641988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 19 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877fca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 77 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7641990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7641990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 19 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877fca8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 77 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8787fd8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fa ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e e2 a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e6 ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 4a 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 6e 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 33 a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 10 cf d4 c8 f7 7f 00 00 e8 73 d6 ad 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 78 5a d8 c8 f7 7f 00 00 e8 58 d6 ad 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 60 5b d8 c8 f7 7f 00 00 e8 3d d6 ad 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 10 5c d8 c8 f7 7f 00 00 e8 22 d6 ad 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 60 d0 d4 c8 f7 7f 00 00 e8 07 d6 ad 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb c0 19 64 c7 f7 7f 00 00 48 b8 c0 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d0 75 ff ff c5 fd 10 70 08 48 8b cf 49 bb c8 19 64 c7 f7 7f 00 00 48 b8 c8 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a2 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 5e e5 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a8 19 64 c7 f7 7f 00 00 48 b8 a8 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 1f e5 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb b0 19 64 c7 f7 7f 00 00 48 b8 b0 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 75 ff ff eb 2d 48 8b c8 49 bb b8 19 64 c7 f7 7f 00 00 48 b8 b8 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e2 74 ff ff eb 08 48 8b c8 e8 40 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 be df a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 8c e4 ad 5e 48 8b f8 48 8b ce 33 d2 e8 df 47 57 4e 48 8b d0 48 8b cf e8 04 6c 00 ff 48 8b cf e8 bc 30 a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4cf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cf d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 d6 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d85a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 5a d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d6 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d85b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 5b d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d d6 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d85c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 5c d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d6 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4d060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d0 d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 d6 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76419c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76419c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fcc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 75 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76419c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c76419c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fcc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 75 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e e5 ad 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76419a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 64 c7 f7 7f 00 00}
0144h mov rax,7ff7c76419a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 19 64 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e5 ad 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76419b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 64 c7 f7 7f 00 00}
017bh mov rax,7ff7c76419b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 64 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c877fcc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 75 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76419b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 64 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76419b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 19 64 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c877fcc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 74 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8788030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f8 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be df a2 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c e4 ad 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 47 57 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 6c 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 30 a5 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 60 1a d6 c8 f7 7f 00 00 e8 23 d4 ad 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 30 5d d8 c8 f7 7f 00 00 e8 08 d4 ad 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 18 5e d8 c8 f7 7f 00 00 e8 ed d3 ad 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 c8 5e d8 c8 f7 7f 00 00 e8 d2 d3 ad 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 58 88 d6 c8 f7 7f 00 00 e8 b7 d3 ad 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb e8 19 64 c7 f7 7f 00 00 48 b8 e8 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 10 74 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 19 64 c7 f7 7f 00 00 48 b8 f0 19 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e2 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 30 19 d6 c8 f7 7f 00 00 e8 0d e3 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d0 19 64 c7 f7 7f 00 00 48 b8 d0 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 30 19 d6 c8 f7 7f 00 00 e8 ce e2 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb d8 19 64 c7 f7 7f 00 00 48 b8 d8 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 73 ff ff eb 2d 48 8b c8 49 bb e0 19 64 c7 f7 7f 00 00 48 b8 e0 19 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 73 ff ff eb 08 48 8b c8 e8 47 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6d dd a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 3b e2 ad 5e 48 8b f8 48 8b ce 33 d2 e8 8e 45 57 4e 48 8b d0 48 8b cf e8 b3 69 00 ff 48 8b cf e8 6b 2e a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d61a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 1a d6 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 d4 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d85d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 5d d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d4 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d85e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 5e d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d85ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 5e d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d3 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d68858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 88 d6 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 d3 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76419e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76419e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 19 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fd58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 74 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76419f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c76419f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 19 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fd58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 73 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d e3 ad 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c76419d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 64 c7 f7 7f 00 00}
0145h mov rax,7ff7c76419d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 19 64 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce e2 ad 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c76419d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 64 c7 f7 7f 00 00}
017ch mov rax,7ff7c76419d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 19 64 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c877fd58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 73 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c76419e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 64 c7 f7 7f 00 00}
01a1h mov rax,7ff7c76419e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 19 64 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c877fd58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 73 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c8788088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f6 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d dd a2 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e2 ad 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 45 57 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 69 00 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 2e a5 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 80 d3 d4 c8 f7 7f 00 00 e8 d3 d1 ad 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 e8 5f d8 c8 f7 7f 00 00 e8 b8 d1 ad 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 d0 60 d8 c8 f7 7f 00 00 e8 9d d1 ad 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 80 61 d8 c8 f7 7f 00 00 e8 82 d1 ad 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 d0 d4 d4 c8 f7 7f 00 00 e8 67 d1 ad 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 10 1a 64 c7 f7 7f 00 00 48 b8 10 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e0 71 ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 1a 64 c7 f7 7f 00 00 48 b8 18 1a 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b2 71 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 bd e0 ad 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f8 19 64 c7 f7 7f 00 00 48 b8 f8 19 64 c7 f7 7f 00 00 39 09 ff 10 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 7e e0 ad 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 00 1a 64 c7 f7 7f 00 00 48 b8 00 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 71 ff ff eb 2d 48 8b c8 49 bb 08 1a 64 c7 f7 7f 00 00 48 b8 08 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 70 ff ff eb 08 48 8b c8 e8 4f f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 1d db a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 eb df ad 5e 48 8b f8 48 8b ce 33 d2 e8 3e 43 57 4e 48 8b d0 48 8b cf e8 63 67 00 ff 48 8b cf e8 1b 2c a5 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d4d380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d3 d4 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 d1 ad 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d85fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 5f d8 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 d1 ad 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d860d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 60 d8 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d1 ad 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d86180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 61 d8 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 d1 ad 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d4d4d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d4 d4 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 d1 ad 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7641a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 64 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7641a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 64 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c877fd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 71 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7641a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 64 c7 f7 7f 00 00}
00dah mov rax,7ff7c7641a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 64 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c877fd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 71 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e0 ad 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c76419f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 64 c7 f7 7f 00 00}
0145h mov rax,7ff7c76419f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 19 64 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e e0 ad 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7641a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 64 c7 f7 7f 00 00}
017ch mov rax,7ff7c7641a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 64 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c877fd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 71 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7641a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 64 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7641a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 64 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c877fd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 70 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c87880e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f4 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d db a2 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb df ad 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 43 57 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 67 00 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 2c a5 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 00 68 d8 c8 f7 7f 00 00 e8 7b cf ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 f8 69 d8 c8 f7 7f 00 00 e8 5d cf ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 20 6c d8 c8 f7 7f 00 00 e8 3f cf ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 a8 6d d8 c8 f7 7f 00 00 e8 21 cf ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 60 1a 64 c7 f7 7f 00 00 48 b8 60 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 68 1a 64 c7 f7 7f 00 00 48 b8 68 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 70 1a 64 c7 f7 7f 00 00 48 b8 70 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb 78 1a 64 c7 f7 7f 00 00 48 b8 78 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ce 8b fc ff 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 1f de ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 1a 64 c7 f7 7f 00 00 48 b8 20 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 28 1a 64 c7 f7 7f 00 00 48 b8 28 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 a7 08 fc ff 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 88 dd ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 1a 64 c7 f7 7f 00 00 48 b8 30 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 38 1a 64 c7 f7 7f 00 00 48 b8 38 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 40 1a 64 c7 f7 7f 00 00 48 b8 40 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ca 4b fc ff 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 bb dc ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 1a 64 c7 f7 7f 00 00 48 b8 48 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 50 1a 64 c7 f7 7f 00 00 48 b8 50 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 58 1a 64 c7 f7 7f 00 00 48 b8 58 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e7 39 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 0b f2 ff ff 48 b9 c8 91 d4 c8 f7 7f 00 00 e8 fc db ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 eb d6 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 b9 db ad 5e 48 8b f8 48 8b ce 33 d2 e8 0c 3f 57 4e 48 8b d0 48 8b cf e8 31 63 00 ff 48 8b cf e8 e9 27 a5 5e cc}
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
0026h mov rcx,7ff7c8d86800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 68 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b cf ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d869f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 69 d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d cf ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d86c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 6c d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f cf ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d86da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 6d d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 cf ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1a 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1a 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1a 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1a 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d3 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8751a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 8b fc ff}
0162h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f de ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1a 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 d3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c87497c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 08 fc ff}
01f9h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 dd ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1a 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1a 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d2 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1a 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d2 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874dbb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 4b fc ff}
02c6h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb dc ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1a 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1a 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8786210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d1 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1a 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 39 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c87882b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f2 ff ff}
0385h mov rcx,7ff7c8d491c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 91 d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc db ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d6 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 db ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 3f 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 63 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 27 a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 79 d8 c8 f7 7f 00 00 e8 3b cb ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 7b d8 c8 f7 7f 00 00 e8 1d cb ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 7d d8 c8 f7 7f 00 00 e8 ff ca ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 7f d8 c8 f7 7f 00 00 e8 e1 ca ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb c0 1a 64 c7 f7 7f 00 00 48 b8 c0 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb c8 1a 64 c7 f7 7f 00 00 48 b8 c8 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e5 d1 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 1a 64 c7 f7 7f 00 00 48 b8 d0 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bd d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb d8 1a 64 c7 f7 7f 00 00 48 b8 d8 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 0e 88 fc ff 48 b9 98 96 d4 c8 f7 7f 00 00 e8 df d9 ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 1a 64 c7 f7 7f 00 00 48 b8 80 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 88 1a 64 c7 f7 7f 00 00 48 b8 88 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e6 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 05 fc ff 48 b9 98 96 d4 c8 f7 7f 00 00 e8 48 d9 ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 1a 64 c7 f7 7f 00 00 48 b8 90 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 98 1a 64 c7 f7 7f 00 00 48 b8 98 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb a0 1a 64 c7 f7 7f 00 00 48 b8 a0 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 6a 4a fc ff 48 b9 98 96 d4 c8 f7 7f 00 00 e8 7b d8 ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 1a 64 c7 f7 7f 00 00 48 b8 a8 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b0 1a 64 c7 f7 7f 00 00 48 b8 b0 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7f cf ff ff c5 f9 10 70 08 48 8b cd 49 bb b8 1a 64 c7 f7 7f 00 00 48 b8 b8 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a7 35 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 63 ee ff ff 48 b9 98 96 d4 c8 f7 7f 00 00 e8 bc d7 ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 ab d2 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 79 d7 ad 5e 48 8b f8 48 8b ce 33 d2 e8 cc 3a 57 4e 48 8b d0 48 8b cf e8 f1 5e 00 ff 48 8b cf e8 a9 23 a5 5e cc}
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
0026h mov rcx,7ff7c8d87980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 79 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b cb ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d87b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7b d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d cb ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d87da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 7d d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ca ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d87f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7f d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ca ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1a 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1a 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d1 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1a 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1a 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d1 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8751ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 88 fc ff}
0162h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df d9 ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1a 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1a 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d0 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8749910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 05 fc ff}
01f9h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 d9 ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1a 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1a 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1a 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d0 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874de90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4a fc ff}
02c6h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b d8 ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1a 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1a 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8786420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f cf ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1a 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 35 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8788348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ee ff ff}
0385h mov rcx,7ff7c8d49698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 96 d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc d7 ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab d2 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 d7 ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 3a 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 5e 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 23 a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 81 d8 c8 f7 7f 00 00 e8 fb c6 ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 83 d8 c8 f7 7f 00 00 e8 dd c6 ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 85 d8 c8 f7 7f 00 00 e8 bf c6 ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 87 d8 c8 f7 7f 00 00 e8 a1 c6 ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 20 1b 64 c7 f7 7f 00 00 48 b8 20 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 28 1b 64 c7 f7 7f 00 00 48 b8 28 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 1b 64 c7 f7 7f 00 00 48 b8 30 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8d cf ff ff c5 f9 10 78 08 48 8b cf 49 bb 38 1b 64 c7 f7 7f 00 00 48 b8 38 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 65 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 4e 88 fc ff 48 b9 08 9b d4 c8 f7 7f 00 00 e8 9f d5 ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 1a 64 c7 f7 7f 00 00 48 b8 e0 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb e8 1a 64 c7 f7 7f 00 00 48 b8 e8 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 ce ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 02 fc ff 48 b9 08 9b d4 c8 f7 7f 00 00 e8 08 d5 ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 1a 64 c7 f7 7f 00 00 48 b8 f0 1a 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb f8 1a 64 c7 f7 7f 00 00 48 b8 f8 1a 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 00 1b 64 c7 f7 7f 00 00 48 b8 00 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f4 cd ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 0a 49 fc ff 48 b9 08 9b d4 c8 f7 7f 00 00 e8 3b d4 ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1b 64 c7 f7 7f 00 00 48 b8 08 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 10 1b 64 c7 f7 7f 00 00 48 b8 10 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 18 1b 64 c7 f7 7f 00 00 48 b8 18 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 67 31 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 8b ea ff ff 48 b9 08 9b d4 c8 f7 7f 00 00 e8 7c d3 ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 6b ce a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 39 d3 ad 5e 48 8b f8 48 8b ce 33 d2 e8 8c 36 57 4e 48 8b d0 48 8b cf e8 b1 5a 00 ff 48 8b cf e8 69 1f a5 5e cc}
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
0026h mov rcx,7ff7c8d88180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 81 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c6 ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d88378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 83 d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c6 ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d885a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 85 d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c6 ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d88728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 87 d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c6 ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1b 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1b 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cf ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1b 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1b 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cf ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8751f50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 88 fc ff}
0162h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f d5 ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1a 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1a 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ce ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8749a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 02 fc ff}
01f9h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 d5 ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1a 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1a 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1b 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 cd ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874e170h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 49 fc ff}
02c6h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d4 ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1b 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1b 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8786630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1b 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 31 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c87883b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ea ff ff}
0385h mov rcx,7ff7c8d49b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9b d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d3 ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b ce a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 d3 ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 36 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 5a 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 1f a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 89 d8 c8 f7 7f 00 00 e8 ab be ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 8b d8 c8 f7 7f 00 00 e8 8d be ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 8d d8 c8 f7 7f 00 00 e8 6f be ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 8f d8 c8 f7 7f 00 00 e8 51 be ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 80 1b 64 c7 f7 7f 00 00 48 b8 80 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 88 1b 64 c7 f7 7f 00 00 48 b8 88 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 90 1b 64 c7 f7 7f 00 00 48 b8 90 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4d c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb 98 1b 64 c7 f7 7f 00 00 48 b8 98 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 80 fc ff 48 b9 78 9f d4 c8 f7 7f 00 00 e8 4f cd ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1b 64 c7 f7 7f 00 00 48 b8 40 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 48 1b 64 c7 f7 7f 00 00 48 b8 48 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 fb fb ff 48 b9 78 9f d4 c8 f7 7f 00 00 e8 b8 cc ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1b 64 c7 f7 7f 00 00 48 b8 50 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 58 1b 64 c7 f7 7f 00 00 48 b8 58 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 60 1b 64 c7 f7 7f 00 00 48 b8 60 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 9a 43 fc ff 48 b9 78 9f d4 c8 f7 7f 00 00 e8 eb cb ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1b 64 c7 f7 7f 00 00 48 b8 68 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 70 1b 64 c7 f7 7f 00 00 48 b8 70 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 78 1b 64 c7 f7 7f 00 00 48 b8 78 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 29 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 b3 f8 ff ff 48 b9 78 9f d4 c8 f7 7f 00 00 e8 2c cb ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b c6 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 e9 ca ad 5e 48 8b f8 48 8b ce 33 d2 e8 3c 2e 57 4e 48 8b d0 48 8b cf e8 61 52 00 ff 48 8b cf e8 19 17 a5 5e cc}
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
0026h mov rcx,7ff7c8d88980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 89 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab be ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d88b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 8b d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d be ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d88da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8d d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f be ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d88f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 8f d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 be ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1b 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1b 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1b 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c9 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1b 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8751fd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 80 fc ff}
0162h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cd ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1b 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1b 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8749bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fb fb ff}
01f9h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 cc ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1b 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1b 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1b 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874e450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 43 fc ff}
02c6h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb cb ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1b 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1b 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8786840h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c7 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1b 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 29 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8789a28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f8 ff ff}
0385h mov rcx,7ff7c8d49f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9f d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c cb ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c6 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 ca ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2e 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 52 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 17 a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 91 d8 c8 f7 7f 00 00 e8 6b ba ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 93 d8 c8 f7 7f 00 00 e8 4d ba ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 95 d8 c8 f7 7f 00 00 e8 2f ba ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 97 d8 c8 f7 7f 00 00 e8 11 ba ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb e0 1b 64 c7 f7 7f 00 00 48 b8 e0 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb e8 1b 64 c7 f7 7f 00 00 48 b8 e8 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 45 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 1b 64 c7 f7 7f 00 00 48 b8 f0 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1d c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb f8 1b 64 c7 f7 7f 00 00 48 b8 f8 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 be 7c fc ff 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 0f c9 ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1b 64 c7 f7 7f 00 00 48 b8 a0 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb a8 1b 64 c7 f7 7f 00 00 48 b8 a8 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 d7 fc fb ff 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 78 c8 ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1b 64 c7 f7 7f 00 00 48 b8 b0 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb b8 1b 64 c7 f7 7f 00 00 48 b8 b8 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb c0 1b 64 c7 f7 7f 00 00 48 b8 c0 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 4a 46 fc ff 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 ab c7 ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1b 64 c7 f7 7f 00 00 48 b8 c8 1b 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d0 1b 64 c7 f7 7f 00 00 48 b8 d0 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb d8 1b 64 c7 f7 7f 00 00 48 b8 d8 1b 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d7 24 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 db f4 ff ff 48 b9 e8 a3 d4 c8 f7 7f 00 00 e8 ec c6 ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 db c1 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 a9 c6 ad 5e 48 8b f8 48 8b ce 33 d2 e8 fc 29 57 4e 48 8b d0 48 8b cf e8 21 4e 00 ff 48 8b cf e8 d9 12 a5 5e cc}
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
0026h mov rcx,7ff7c8d89180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 91 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b ba ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d89378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 93 d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d ba ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d895a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 95 d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f ba ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d89728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 97 d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ba ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1b 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1b 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c7 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1b 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c7 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1b 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8752050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 7c fc ff}
0162h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c9 ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1b 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1b 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c6 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c874a100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fc fb ff}
01f9h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 c8 ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1b 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1b 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1b 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874eb40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 46 fc ff}
02c6h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab c7 ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1b 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1b 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8786a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1b 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 24 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8789a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f4 ff ff}
0385h mov rcx,7ff7c8d4a3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a3 d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec c6 ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c1 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 c6 ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 29 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 4e 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 12 a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 99 d8 c8 f7 7f 00 00 e8 2b b6 ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 9b d8 c8 f7 7f 00 00 e8 0d b6 ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 9d d8 c8 f7 7f 00 00 e8 ef b5 ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 9f d8 c8 f7 7f 00 00 e8 d1 b5 ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 40 1c 64 c7 f7 7f 00 00 48 b8 40 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 48 1c 64 c7 f7 7f 00 00 48 b8 48 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 1c 64 c7 f7 7f 00 00 48 b8 50 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fd c8 ff ff c5 f9 10 78 08 48 8b cf 49 bb 58 1c 64 c7 f7 7f 00 00 48 b8 58 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d5 c8 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 fe 78 fc ff 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 cf c4 ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1c 64 c7 f7 7f 00 00 48 b8 00 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 08 1c 64 c7 f7 7f 00 00 48 b8 08 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 e7 f9 fb ff 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 38 c4 ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1c 64 c7 f7 7f 00 00 48 b8 10 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 18 1c 64 c7 f7 7f 00 00 48 b8 18 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8c c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 20 1c 64 c7 f7 7f 00 00 48 b8 20 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ea 44 fc ff 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 6b c3 ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1c 64 c7 f7 7f 00 00 48 b8 28 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 30 1c 64 c7 f7 7f 00 00 48 b8 30 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bf c6 ff ff c5 f9 10 70 08 48 8b cd 49 bb 38 1c 64 c7 f7 7f 00 00 48 b8 38 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 20 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 03 f1 ff ff 48 b9 58 a8 d4 c8 f7 7f 00 00 e8 ac c2 ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b bd a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 69 c2 ad 5e 48 8b f8 48 8b ce 33 d2 e8 bc 25 57 4e 48 8b d0 48 8b cf e8 e1 49 00 ff 48 8b cf e8 99 0e a5 5e cc}
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
0026h mov rcx,7ff7c8d89980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 99 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b b6 ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d89b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 9b d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d b6 ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d89da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9d d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b5 ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d89f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9f d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 b5 ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1c 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1c 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1c 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c8 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1c 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 c8 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c87520d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 78 fc ff}
0162h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c4 ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1c 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1c 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c874a250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f9 fb ff}
01f9h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 c4 ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1c 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1c 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1c 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874ee20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 44 fc ff}
02c6h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b c3 ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1c 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1c 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8787070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c6 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1c 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 20 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8789af8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f1 ff ff}
0385h mov rcx,7ff7c8d4a858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a8 d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c2 ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bd a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c2 ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 25 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 49 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 0e a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 a1 d8 c8 f7 7f 00 00 e8 eb b1 ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 a3 d8 c8 f7 7f 00 00 e8 cd b1 ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 a5 d8 c8 f7 7f 00 00 e8 af b1 ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 a7 d8 c8 f7 7f 00 00 e8 91 b1 ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb a0 1c 64 c7 f7 7f 00 00 48 b8 a0 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb a8 1c 64 c7 f7 7f 00 00 48 b8 a8 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 1c 64 c7 f7 7f 00 00 48 b8 b0 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cd c6 ff ff c5 f9 10 78 08 48 8b cf 49 bb b8 1c 64 c7 f7 7f 00 00 48 b8 b8 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 3e 75 fc ff 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 8f c0 ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 1c 64 c7 f7 7f 00 00 48 b8 60 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 68 1c 64 c7 f7 7f 00 00 48 b8 68 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 f7 f6 fb ff 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 f8 bf ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 1c 64 c7 f7 7f 00 00 48 b8 70 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 78 1c 64 c7 f7 7f 00 00 48 b8 78 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb 80 1c 64 c7 f7 7f 00 00 48 b8 80 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 8a 43 fc ff 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 2b bf ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 1c 64 c7 f7 7f 00 00 48 b8 88 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 90 1c 64 c7 f7 7f 00 00 48 b8 90 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb 98 1c 64 c7 f7 7f 00 00 48 b8 98 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 57 1c ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 2b ed ff ff 48 b9 d8 0a d6 c8 f7 7f 00 00 e8 6c be ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 5b b9 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 29 be ad 5e 48 8b f8 48 8b ce 33 d2 e8 7c 21 57 4e 48 8b d0 48 8b cf e8 a1 45 00 ff 48 8b cf e8 59 0a a5 5e cc}
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
0026h mov rcx,7ff7c8d8a180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a1 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb b1 ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d8a378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a3 d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd b1 ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d8a5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a5 d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af b1 ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d8a728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 a7 d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b1 ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1c 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1c 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1c 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c6 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1c 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c6 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c8752150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 75 fc ff}
0162h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c0 ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1c 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1c 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c5 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c874a3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f6 fb ff}
01f9h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 bf ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1c 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1c 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1c 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874f100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 43 fc ff}
02c6h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b bf ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1c 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1c 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8787280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1c 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 1c ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8789b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ed ff ff}
0385h mov rcx,7ff7c8d60ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 0a d6 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c be ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b b9 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 be ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 21 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 45 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 0a a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 a9 d8 c8 f7 7f 00 00 e8 ab ad ad 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 ab d8 c8 f7 7f 00 00 e8 8d ad ad 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 ad d8 c8 f7 7f 00 00 e8 6f ad ad 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 af d8 c8 f7 7f 00 00 e8 51 ad ad 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 00 1d 64 c7 f7 7f 00 00 48 b8 00 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 08 1d 64 c7 f7 7f 00 00 48 b8 08 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 10 1d 64 c7 f7 7f 00 00 48 b8 10 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9d c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 18 1d 64 c7 f7 7f 00 00 48 b8 18 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 71 fc ff 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 4f bc ad 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 1c 64 c7 f7 7f 00 00 48 b8 c0 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb c8 1c 64 c7 f7 7f 00 00 48 b8 c8 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 07 f4 fb ff 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 b8 bb ad 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 1c 64 c7 f7 7f 00 00 48 b8 d0 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb d8 1c 64 c7 f7 7f 00 00 48 b8 d8 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb e0 1c 64 c7 f7 7f 00 00 48 b8 e0 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 2a 42 fc ff 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 eb ba ad 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 1c 64 c7 f7 7f 00 00 48 b8 e8 1c 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f0 1c 64 c7 f7 7f 00 00 48 b8 f0 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb f8 1c 64 c7 f7 7f 00 00 48 b8 f8 1c 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 18 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 53 e9 ff ff 48 b9 c8 ac d4 c8 f7 7f 00 00 e8 2c ba ad 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b b5 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 e9 b9 ad 5e 48 8b f8 48 8b ce 33 d2 e8 3c 1d 57 4e 48 8b d0 48 8b cf e8 61 41 00 ff 48 8b cf e8 19 06 a5 5e cc}
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
0026h mov rcx,7ff7c8d8a980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a9 d8 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ad ad 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d8ab78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ab d8 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ad ad 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d8ada0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ad d8 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ad ad 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d8af28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 af d8 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 ad ad 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7641d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 64 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7641d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1d 64 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7641d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 64 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7641d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1d 64 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7641d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 64 c7 f7 7f 00 00}
00edh mov rax,7ff7c7641d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1d 64 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7641d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 64 c7 f7 7f 00 00}
0115h mov rax,7ff7c7641d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1d 64 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c4 ff ff}
012bh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
0130h lea rcx,[rsp+60h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 60}
0135h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0137h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
013dh vmovapd [rsp+40h],xmm7                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 7c 24 40}
0143h vmovapd [rsp+30h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 30}
0149h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
014eh lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
0153h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0158h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
015dh call 7ff7c87521d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 71 fc ff}
0162h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bc ad 5e}
0171h vmovapd xmm0,[rsp+60h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 60}
0177h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
017ch vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
0185h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
018eh add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
0195h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0196h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0197h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0198h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0199h ret                                     ; RET || C3 || encoded[1]{c3}
019ah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019dh mov r11,7ff7c7641cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 64 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7641cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1c 64 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7641cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 64 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7641cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1c 64 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c874a4f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f4 fb ff}
01f9h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 bb ad 5e}
0208h vmovapd xmm0,[rsp+90h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 90 00 00 00}
0211h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0216h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
021fh vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
0228h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
022fh pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0230h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0231h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
0232h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0233h ret                                     ; RET || C3 || encoded[1]{c3}
0234h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0237h mov r11,7ff7c7641cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 64 c7 f7 7f 00 00}
0241h mov rax,7ff7c7641cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1c 64 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7641cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 64 c7 f7 7f 00 00}
025eh mov rax,7ff7c7641cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1c 64 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7641ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 64 c7 f7 7f 00 00}
0286h mov rax,7ff7c7641ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1c 64 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c874f3e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 42 fc ff}
02c6h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ba ad 5e}
02d5h vmovapd xmm0,[rsp+80h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[9]{c5 f9 28 84 24 80 00 00 00}
02deh vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
02e3h vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
02ech vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
02f5h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
02fch pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
02fdh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
02feh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
02ffh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
0300h ret                                     ; RET || C3 || encoded[1]{c3}
0301h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0304h mov r11,7ff7c7641ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 64 c7 f7 7f 00 00}
030eh mov rax,7ff7c7641ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1c 64 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7641cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 64 c7 f7 7f 00 00}
032bh mov rax,7ff7c7641cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1c 64 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8787490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7641cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 64 c7 f7 7f 00 00}
0353h mov rax,7ff7c7641cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1c 64 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 18 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8789bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 e9 ff ff}
0385h mov rcx,7ff7c8d4acc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ac d4 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ba ad 5e}
0394h vmovapd xmm0,[rsp+70h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 70}
039ah vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
039fh vmovaps xmm6,[rsp+0b0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 b0 00 00 00}
03a8h vmovaps xmm7,[rsp+0a0h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 a0 00 00 00}
03b1h add rsp,0c8h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 c8 00 00 00}
03b8h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
03b9h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
03bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
03bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
03bch ret                                     ; RET || C3 || encoded[1]{c3}
03bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b b5 a2 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 b9 ad 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 1d 57 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 41 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 06 a5 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 b7 d8 c8 f7 7f 00 00 e8 59 a9 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 b9 d8 c8 f7 7f 00 00 e8 3b a9 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 bb d8 c8 f7 7f 00 00 e8 1d a9 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 bc d8 c8 f7 7f 00 00 e8 ff a8 ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 60 1d 64 c7 f7 7f 00 00 48 b8 60 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 68 1d 64 c7 f7 7f 00 00 48 b8 68 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 c2 ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 1d 64 c7 f7 7f 00 00 48 b8 70 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 55 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb 78 1d 64 c7 f7 7f 00 00 48 b8 78 1d 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 27 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 91 6d fc ff 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 e2 b7 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 1d 64 c7 f7 7f 00 00 48 b8 20 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 28 1d 64 c7 f7 7f 00 00 48 b8 28 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 c1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d2 f0 fb ff 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 33 b7 ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 1d 64 c7 f7 7f 00 00 48 b8 30 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 38 1d 64 c7 f7 7f 00 00 48 b8 38 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 c0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 40 1d 64 c7 f7 7f 00 00 48 b8 40 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 74 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 74 44 fc ff 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 45 b6 ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 1d 64 c7 f7 7f 00 00 48 b8 48 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 50 1d 64 c7 f7 7f 00 00 48 b8 50 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb 58 1d 64 c7 f7 7f 00 00 48 b8 58 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 56 13 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 e6 ff ff 48 b9 50 b7 d4 c8 f7 7f 00 00 e8 62 b5 ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 39 b0 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 07 b5 ad 5e 48 8b f8 48 8b ce 33 d2 e8 5a 18 57 4e 48 8b d0 48 8b cf e8 7f 3c 00 ff 48 8b cf e8 37 01 a5 5e cc}
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
0038h mov rcx,7ff7c8d8b738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b7 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a9 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8b930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 b9 d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b a9 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8bb58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bb d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a9 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8bce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 bc d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff a8 ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1d 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1d 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1d 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1d 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c2 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c8752250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6d fc ff}
018fh mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b7 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1d 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1d 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874a640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f0 fb ff}
023eh mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b7 ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1d 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1d 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1d 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c874fad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 44 fc ff}
032ch mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 b6 ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1d 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1d 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c87876a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bf ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1d 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 13 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8789d98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e6 ff ff}
040fh mov rcx,7ff7c8d4b750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b7 d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b5 ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 b0 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b5 ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 18 57 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 3c 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 01 a5 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 c8 d8 c8 f7 7f 00 00 e8 59 a0 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 ca d8 c8 f7 7f 00 00 e8 3b a0 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 cc d8 c8 f7 7f 00 00 e8 1d a0 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 ce d8 c8 f7 7f 00 00 e8 ff 9f ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb c0 1d 64 c7 f7 7f 00 00 48 b8 c0 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb c8 1d 64 c7 f7 7f 00 00 48 b8 c8 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 bb ff ff c5 fd 10 70 08 48 8b cf 49 bb d0 1d 64 c7 f7 7f 00 00 48 b8 d0 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a5 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb d8 1d 64 c7 f7 7f 00 00 48 b8 d8 1d 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 77 bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 11 65 fc ff 48 b9 20 bc d4 c8 f7 7f 00 00 e8 e2 ae ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 1d 64 c7 f7 7f 00 00 48 b8 80 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 88 1d 64 c7 f7 7f 00 00 48 b8 88 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a1 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 32 e9 fb ff 48 b9 20 bc d4 c8 f7 7f 00 00 e8 33 ae ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 1d 64 c7 f7 7f 00 00 48 b8 90 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 98 1d 64 c7 f7 7f 00 00 48 b8 98 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb a0 1d 64 c7 f7 7f 00 00 48 b8 a0 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c4 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 42 fc ff 48 b9 20 bc d4 c8 f7 7f 00 00 e8 45 ad ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 1d 64 c7 f7 7f 00 00 48 b8 a8 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b0 1d 64 c7 f7 7f 00 00 48 b8 b0 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb b8 1d 64 c7 f7 7f 00 00 48 b8 b8 1d 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 56 0a ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 39 f8 ff ff 48 b9 20 bc d4 c8 f7 7f 00 00 e8 62 ac ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 39 a7 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 07 ac ad 5e 48 8b f8 48 8b ce 33 d2 e8 5a 0f 57 4e 48 8b d0 48 8b cf e8 7f 33 00 ff 48 8b cf e8 37 f8 a4 5e cc}
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
0038h mov rcx,7ff7c8d8c8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 c8 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a0 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8cab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ca d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b a0 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8ccd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 cc d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d a0 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8ce60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ce d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 9f ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1d 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1d 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bb ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1d 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bb ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1d 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c87522d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 65 fc ff}
018fh mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ae ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1d 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1d 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ba ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874a7a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e9 fb ff}
023eh mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ae ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1d 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1d 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b9 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1d 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b9 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c87501c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 42 fc ff}
032ch mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 ad ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1d 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1d 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c87878f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b9 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1d 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 0a ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878b878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f8 ff ff}
040fh mov rcx,7ff7c8d4bc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 bc d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ac ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 a7 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 ac ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 0f 57 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 33 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 f8 a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 d0 d8 c8 f7 7f 00 00 e8 69 9b ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 d2 d8 c8 f7 7f 00 00 e8 4b 9b ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 d4 d8 c8 f7 7f 00 00 e8 2d 9b ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 d6 d8 c8 f7 7f 00 00 e8 0f 9b ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 20 1e 64 c7 f7 7f 00 00 48 b8 20 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 28 1e 64 c7 f7 7f 00 00 48 b8 28 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 1e 64 c7 f7 7f 00 00 48 b8 30 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 05 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 38 1e 64 c7 f7 7f 00 00 48 b8 38 1e 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 d7 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a1 60 fc ff 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 f2 a9 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 1d 64 c7 f7 7f 00 00 48 b8 e0 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb e8 1d 64 c7 f7 7f 00 00 48 b8 e8 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 a2 e5 fb ff 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 43 a9 ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 1d 64 c7 f7 7f 00 00 48 b8 f0 1d 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb f8 1d 64 c7 f7 7f 00 00 48 b8 f8 1d 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb 00 1e 64 c7 f7 7f 00 00 48 b8 00 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 24 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 40 fc ff 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 55 a8 ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1e 64 c7 f7 7f 00 00 48 b8 08 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 10 1e 64 c7 f7 7f 00 00 48 b8 10 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 18 1e 64 c7 f7 7f 00 00 48 b8 18 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 66 05 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 b1 f3 ff ff 48 b9 90 c0 d4 c8 f7 7f 00 00 e8 72 a7 ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 49 a2 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 17 a7 ad 5e 48 8b f8 48 8b ce 33 d2 e8 6a 0a 57 4e 48 8b d0 48 8b cf e8 8f 2e 00 ff 48 8b cf e8 47 f3 a4 5e cc}
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
0038h mov rcx,7ff7c8d8d0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d0 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9b ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8d2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 d2 d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 9b ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8d4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d4 d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 9b ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8d660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 d6 d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 9b ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1e 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1e 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b9 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1e 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1e 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b8 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c8752350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 60 fc ff}
018fh mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 a9 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1d 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1d 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b8 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874a900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e5 fb ff}
023eh mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a9 ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1d 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1e 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b7 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c87504b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 40 fc ff}
032ch mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 a8 ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1e 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1e 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8787b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b6 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1e 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 05 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878b8e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f3 ff ff}
040fh mov rcx,7ff7c8d4c090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 c0 d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 a7 ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 a2 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 0a 57 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 2e 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f3 a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 d8 d8 c8 f7 7f 00 00 e8 79 96 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 da d8 c8 f7 7f 00 00 e8 5b 96 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 dc d8 c8 f7 7f 00 00 e8 3d 96 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 de d8 c8 f7 7f 00 00 e8 1f 96 ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 80 1e 64 c7 f7 7f 00 00 48 b8 80 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 88 1e 64 c7 f7 7f 00 00 48 b8 88 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 1e 64 c7 f7 7f 00 00 48 b8 90 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 65 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb 98 1e 64 c7 f7 7f 00 00 48 b8 98 1e 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 37 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 31 5c fc ff 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 02 a5 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1e 64 c7 f7 7f 00 00 48 b8 40 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 48 1e 64 c7 f7 7f 00 00 48 b8 48 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 12 e2 fb ff 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 53 a4 ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1e 64 c7 f7 7f 00 00 48 b8 50 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 58 1e 64 c7 f7 7f 00 00 48 b8 58 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 60 1e 64 c7 f7 7f 00 00 48 b8 60 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 84 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 65 a3 ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1e 64 c7 f7 7f 00 00 48 b8 68 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 70 1e 64 c7 f7 7f 00 00 48 b8 70 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c4 b3 ff ff c5 fd 10 70 08 48 8b cd 49 bb 78 1e 64 c7 f7 7f 00 00 48 b8 78 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 76 00 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 29 ef ff ff 48 b9 00 c5 d4 c8 f7 7f 00 00 e8 82 a2 ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 59 9d a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 27 a2 ad 5e 48 8b f8 48 8b ce 33 d2 e8 7a 05 57 4e 48 8b d0 48 8b cf e8 9f 29 00 ff 48 8b cf e8 57 ee a4 5e cc}
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
0038h mov rcx,7ff7c8d8d8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 d8 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 96 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8dab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 da d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 96 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8dcd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 dc d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 96 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8de60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 de d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 96 ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1e 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1e 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b6 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1e 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b6 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1e 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b6 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c87523d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5c fc ff}
018fh mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 a5 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1e 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1e 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b5 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874aa60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e2 fb ff}
023eh mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 a4 ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1e 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1e 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b4 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1e 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b4 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c87507a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 a3 ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1e 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1e 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8787d90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1e 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 00 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878b948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ef ff ff}
040fh mov rcx,7ff7c8d4c500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c5 d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 a2 ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 9d a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a2 ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 05 57 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 29 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 ee a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 e0 d8 c8 f7 7f 00 00 e8 89 91 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 e2 d8 c8 f7 7f 00 00 e8 6b 91 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 e4 d8 c8 f7 7f 00 00 e8 4d 91 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 e6 d8 c8 f7 7f 00 00 e8 2f 91 ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb e0 1e 64 c7 f7 7f 00 00 48 b8 e0 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb e8 1e 64 c7 f7 7f 00 00 48 b8 e8 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f3 b7 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 1e 64 c7 f7 7f 00 00 48 b8 f0 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c5 b7 ff ff c5 7d 10 40 08 48 8b cf 49 bb f8 1e 64 c7 f7 7f 00 00 48 b8 f8 1e 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 97 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c1 57 fc ff 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 12 a0 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1e 64 c7 f7 7f 00 00 48 b8 a0 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb a8 1e 64 c7 f7 7f 00 00 48 b8 a8 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c1 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 82 de fb ff 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 63 9f ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1e 64 c7 f7 7f 00 00 48 b8 b0 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb b8 1e 64 c7 f7 7f 00 00 48 b8 b8 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 b6 ff ff c5 fd 10 70 08 48 8b cb 49 bb c0 1e 64 c7 f7 7f 00 00 48 b8 c0 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e4 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 75 9e ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1e 64 c7 f7 7f 00 00 48 b8 c8 1e 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d0 1e 64 c7 f7 7f 00 00 48 b8 d0 1e 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 b5 ff ff c5 fd 10 70 08 48 8b cd 49 bb d8 1e 64 c7 f7 7f 00 00 48 b8 d8 1e 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 86 fb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 a1 ea ff ff 48 b9 70 c9 d4 c8 f7 7f 00 00 e8 92 9d ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 69 98 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 37 9d ad 5e 48 8b f8 48 8b ce 33 d2 e8 8a 00 57 4e 48 8b d0 48 8b cf e8 af 24 00 ff 48 8b cf e8 67 e9 a4 5e cc}
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
0038h mov rcx,7ff7c8d8e0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e0 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 91 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8e2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e2 d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 91 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8e4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 e4 d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 91 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8e660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e6 d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 91 ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1e 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1e 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b7 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1e 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b7 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1e 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b7 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c8752450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 57 fc ff}
018fh mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 a0 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1e 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1e 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b6 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874abc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 de fb ff}
023eh mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 9f ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1e 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1e 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b6 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1e 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b5 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8750a90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 9e ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1e 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1e 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c87883e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b5 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1e 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878b9b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ea ff ff}
040fh mov rcx,7ff7c8d4c970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c9 d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 9d ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 98 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 9d ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 00 57 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 24 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 e9 a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 e8 d8 c8 f7 7f 00 00 e8 99 8c ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 ea d8 c8 f7 7f 00 00 e8 7b 8c ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 ec d8 c8 f7 7f 00 00 e8 5d 8c ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 ee d8 c8 f7 7f 00 00 e8 3f 8c ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 40 1f 64 c7 f7 7f 00 00 48 b8 40 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 48 1f 64 c7 f7 7f 00 00 48 b8 48 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 50 1f 64 c7 f7 7f 00 00 48 b8 50 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 25 b5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 58 1f 64 c7 f7 7f 00 00 48 b8 58 1f 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 f7 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 51 53 fc ff 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 22 9b ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1f 64 c7 f7 7f 00 00 48 b8 00 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 08 1f 64 c7 f7 7f 00 00 48 b8 08 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 f2 da fb ff 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 73 9a ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1f 64 c7 f7 7f 00 00 48 b8 10 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 18 1f 64 c7 f7 7f 00 00 48 b8 18 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 20 1f 64 c7 f7 7f 00 00 48 b8 20 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 44 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 85 99 ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1f 64 c7 f7 7f 00 00 48 b8 28 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 30 1f 64 c7 f7 7f 00 00 48 b8 30 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 38 1f 64 c7 f7 7f 00 00 48 b8 38 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 96 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 19 e6 ff ff 48 b9 e0 cd d4 c8 f7 7f 00 00 e8 a2 98 ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 79 93 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 47 98 ad 5e 48 8b f8 48 8b ce 33 d2 e8 9a fb 56 4e 48 8b d0 48 8b cf e8 bf 1f 00 ff 48 8b cf e8 77 e4 a4 5e cc}
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
0038h mov rcx,7ff7c8d8e8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e8 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 8c ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8eab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ea d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 8c ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8ecd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 ec d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 8c ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8ee60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ee d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8c ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1f 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1f 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1f 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1f 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b5 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1f 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1f 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c87524d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 53 fc ff}
018fh mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 9b ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1f 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1f 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 b4 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874ad20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 da fb ff}
023eh mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 9a ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1f 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1f 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b3 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1f 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 b3 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8751180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 99 ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1f 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1f 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8788630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b2 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1f 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878ba18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e6 ff ff}
040fh mov rcx,7ff7c8d4cde0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 cd d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 98 ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 93 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 98 ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a fb 56 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 1f 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 e4 a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 f0 d8 c8 f7 7f 00 00 e8 a9 87 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 f2 d8 c8 f7 7f 00 00 e8 8b 87 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 f4 d8 c8 f7 7f 00 00 e8 6d 87 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 f6 d8 c8 f7 7f 00 00 e8 4f 87 ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb a0 1f 64 c7 f7 7f 00 00 48 b8 a0 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb a8 1f 64 c7 f7 7f 00 00 48 b8 a8 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb b0 1f 64 c7 f7 7f 00 00 48 b8 b0 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 85 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb b8 1f 64 c7 f7 7f 00 00 48 b8 b8 1f 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 57 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e1 52 fc ff 48 b9 30 19 d6 c8 f7 7f 00 00 e8 32 96 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 1f 64 c7 f7 7f 00 00 48 b8 60 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 68 1f 64 c7 f7 7f 00 00 48 b8 68 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 62 db fb ff 48 b9 30 19 d6 c8 f7 7f 00 00 e8 83 95 ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 1f 64 c7 f7 7f 00 00 48 b8 70 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 78 1f 64 c7 f7 7f 00 00 48 b8 78 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 80 1f 64 c7 f7 7f 00 00 48 b8 80 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a4 b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 30 19 d6 c8 f7 7f 00 00 e8 95 94 ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 1f 64 c7 f7 7f 00 00 48 b8 88 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 90 1f 64 c7 f7 7f 00 00 48 b8 90 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e4 af ff ff c5 fd 10 70 08 48 8b cd 49 bb 98 1f 64 c7 f7 7f 00 00 48 b8 98 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a6 f1 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 91 e1 ff ff 48 b9 30 19 d6 c8 f7 7f 00 00 e8 b2 93 ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 89 8e a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 57 93 ad 5e 48 8b f8 48 8b ce 33 d2 e8 aa f6 56 4e 48 8b d0 48 8b cf e8 cf 1a 00 ff 48 8b cf e8 87 df a4 5e cc}
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
0038h mov rcx,7ff7c8d8f0b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f0 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 87 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8f2b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f2 d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 87 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8f4d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f4 d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 87 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8f660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f6 d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 87 ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7641fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1f 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7641fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1f 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7641fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1f 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7641fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1f 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7641fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1f 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7641fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1f 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7641fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1f 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7641fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1f 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b2 ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c8752950h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 52 fc ff}
018fh mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 96 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1f 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1f 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1f 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1f 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874b280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 db fb ff}
023eh mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 95 ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1f 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1f 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1f 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1f 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1f 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1f 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8751470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 94 ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1f 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1f 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1f 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1f 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8788880h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 af ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1f 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1f 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f1 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878ba80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e1 ff ff}
040fh mov rcx,7ff7c8d61930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 19 d6 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 93 ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8e a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 93 ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa f6 56 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 1a 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 df a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 f8 d8 c8 f7 7f 00 00 e8 b9 82 ad 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 fa d8 c8 f7 7f 00 00 e8 9b 82 ad 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 fc d8 c8 f7 7f 00 00 e8 7d 82 ad 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 fe d8 c8 f7 7f 00 00 e8 5f 82 ad 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 00 20 64 c7 f7 7f 00 00 48 b8 00 20 64 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 08 20 64 c7 f7 7f 00 00 48 b8 08 20 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 13 b0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 20 64 c7 f7 7f 00 00 48 b8 10 20 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e5 af ff ff c5 7d 10 40 08 48 8b cf 49 bb 18 20 64 c7 f7 7f 00 00 48 b8 18 20 64 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 b7 af ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 71 4e fc ff 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 42 91 ad 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 1f 64 c7 f7 7f 00 00 48 b8 c0 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb c8 1f 64 c7 f7 7f 00 00 48 b8 c8 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 ae ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d2 d7 fb ff 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 93 90 ad 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 1f 64 c7 f7 7f 00 00 48 b8 d0 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb d8 1f 64 c7 f7 7f 00 00 48 b8 d8 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 ae ff ff c5 fd 10 70 08 48 8b cb 49 bb e0 1f 64 c7 f7 7f 00 00 48 b8 e0 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 04 ae ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3a fc ff 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 a5 8f ad 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 1f 64 c7 f7 7f 00 00 48 b8 e8 1f 64 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f0 1f 64 c7 f7 7f 00 00 48 b8 f0 1f 64 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 ad ff ff c5 fd 10 70 08 48 8b cd 49 bb f8 1f 64 c7 f7 7f 00 00 48 b8 f8 1f 64 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b6 ec fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 09 dd ff ff 48 b9 50 d2 d4 c8 f7 7f 00 00 e8 c2 8e ad 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 99 89 a2 5e 48 8b f0 48 b9 00 eb ae c7 f7 7f 00 00 e8 67 8e ad 5e 48 8b f8 48 8b ce 33 d2 e8 ba f1 56 4e 48 8b d0 48 8b cf e8 df 15 00 ff 48 8b cf e8 97 da a4 5e cc}
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
0038h mov rcx,7ff7c8d8f8b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f8 d8 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 82 ad 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d8fab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 fa d8 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 82 ad 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d8fcd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 fc d8 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 82 ad 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d8fe60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 fe d8 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 82 ad 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7642000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 20 64 c7 f7 7f 00 00}
00bah mov rax,7ff7c7642000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 20 64 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7642008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 20 64 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7642008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 20 64 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b0 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7642010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 20 64 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7642010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 20 64 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 af ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7642018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 20 64 c7 f7 7f 00 00}
012dh mov rax,7ff7c7642018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 20 64 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 af ff ff}
0149h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
014eh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
0156h mov edx,ebx                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d3}
0158h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
015eh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0164h vinsertf128 ymm8,ymm8,xmm9,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 43 3d 18 c1 01}
016ah vmovupd [rsp+50h],ymm8                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 7d 11 44 24 50}
0170h vmovupd [rsp+30h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 30}
0176h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
017bh lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0180h lea rax,[rsp+30h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 44 24 30}
0185h mov [rsp+20h],rax                       ; MOV r/m64, r64 || REX.W 89 /r || encoded[5]{48 89 44 24 20}
018ah call 7ff7c87529d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4e fc ff}
018fh mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 91 ad 5e}
019eh vmovupd ymm0,[rsp+90h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 90 00 00 00}
01a7h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
01ach vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
01b5h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
01beh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
01c7h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
01d0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d3h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
01dah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
01dbh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
01dch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01ddh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01deh ret                                     ; RET || C3 || encoded[1]{c3}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h mov r11,7ff7c7641fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1f 64 c7 f7 7f 00 00}
01ech mov rax,7ff7c7641fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1f 64 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7641fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1f 64 c7 f7 7f 00 00}
0209h mov rax,7ff7c7641fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1f 64 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ae ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c874b3e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d7 fb ff}
023eh mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 90 ad 5e}
024dh vmovupd ymm0,[rsp+0f0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 f0 00 00 00}
0256h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
025bh vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0264h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
026dh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0276h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
027fh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0282h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0289h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
028ah pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
028bh pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
028ch pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
028dh ret                                     ; RET || C3 || encoded[1]{c3}
028eh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0291h mov r11,7ff7c7641fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1f 64 c7 f7 7f 00 00}
029bh mov rax,7ff7c7641fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1f 64 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7641fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1f 64 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7641fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1f 64 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ae ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7641fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1f 64 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7641fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1f 64 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ae ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8751760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3a fc ff}
032ch mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 8f ad 5e}
033bh vmovupd ymm0,[rsp+0d0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 d0 00 00 00}
0344h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0349h vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0352h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
035bh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0364h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
036dh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0370h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
0377h pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
0378h pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
0379h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
037ah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
037bh ret                                     ; RET || C3 || encoded[1]{c3}
037ch mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
037fh mov r11,7ff7c7641fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1f 64 c7 f7 7f 00 00}
0389h mov rax,7ff7c7641fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1f 64 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7641ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1f 64 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7641ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1f 64 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8788ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ad ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7641ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1f 64 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7641ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1f 64 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c877ca70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ec fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c878bae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 dd ff ff}
040fh mov rcx,7ff7c8d4d250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d2 d4 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 8e ad 5e}
041eh vmovupd ymm0,[rsp+0b0h]                 ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[9]{c5 fd 10 84 24 b0 00 00 00}
0427h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
042ch vmovaps xmm6,[rsp+150h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 b4 24 50 01 00 00}
0435h vmovaps xmm7,[rsp+140h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 f8 28 bc 24 40 01 00 00}
043eh vmovaps xmm8,[rsp+130h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 84 24 30 01 00 00}
0447h vmovaps xmm9,[rsp+120h]                 ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[9]{c5 78 28 8c 24 20 01 00 00}
0450h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0453h add rsp,168h                            ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 68 01 00 00}
045ah pop rbx                                 ; POP r64 || 58+ro || encoded[1]{5b}
045bh pop rbp                                 ; POP r64 || 58+ro || encoded[1]{5d}
045ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
045dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
045eh ret                                     ; RET || C3 || encoded[1]{c3}
045fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 89 a2 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7aeeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ae c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 8e ad 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba f1 56 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c778f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 15 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 da a4 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
