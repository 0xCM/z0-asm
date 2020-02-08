------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 80 b4 c5 c8 f7 7f 00 00 e8 1c 39 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 88 4b c9 c8 f7 7f 00 00 e8 01 39 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 70 4c c9 c8 f7 7f 00 00 e8 e6 38 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 20 4d c9 c8 f7 7f 00 00 e8 cb 38 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 d0 b5 c5 c8 f7 7f 00 00 e8 b0 38 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb e8 16 61 c7 f7 7f 00 00 48 b8 e8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 49 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 16 61 c7 f7 7f 00 00 48 b8 f0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 19 48 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d0 16 61 c7 f7 7f 00 00 48 b8 d0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 e0 47 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb d8 16 61 c7 f7 7f 00 00 48 b8 d8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 98 93 ff ff eb 2d 48 8b c8 49 bb e0 16 61 c7 f7 7f 00 00 48 b8 e0 16 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 73 93 ff ff eb 08 48 8b c8 e8 49 f9 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 8b 42 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 59 47 b7 5e 48 8b f8 48 8b ce 33 d2 e8 ac aa 60 4e 48 8b d0 48 8b cf e8 c9 6f 06 ff 48 8b cf e8 89 93 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5b480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b4 c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 39 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c94b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 4b c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 39 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c94c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 4c c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 38 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c94d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 4d c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 38 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5b5d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b5 c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 38 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76116e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76116e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 16 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 94 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76116f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76116f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 16 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 94 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 48 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76116d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c76116d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 16 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 47 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76116d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c76116d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 16 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 93 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76116e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c76116e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 16 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb898h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 93 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f1e78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f9 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 42 ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 47 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac aa 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 6f 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 93 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 50 b9 c5 c8 f7 7f 00 00 e8 0c 37 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 40 52 c9 c8 f7 7f 00 00 e8 f1 36 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 28 53 c9 c8 f7 7f 00 00 e8 d6 36 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 d8 53 c9 c8 f7 7f 00 00 e8 bb 36 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 a0 ba c5 c8 f7 7f 00 00 e8 a0 36 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 10 17 61 c7 f7 7f 00 00 48 b8 10 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 69 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 17 61 c7 f7 7f 00 00 48 b8 18 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 41 92 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 09 46 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb f8 16 61 c7 f7 7f 00 00 48 b8 f8 16 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 d0 45 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 00 17 61 c7 f7 7f 00 00 48 b8 00 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b8 91 ff ff eb 2d 48 8b c8 49 bb 08 17 61 c7 f7 7f 00 00 48 b8 08 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 91 ff ff eb 08 48 8b c8 e8 d9 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 7b 40 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 49 45 b7 5e 48 8b f8 48 8b ce 33 d2 e8 9c a8 60 4e 48 8b d0 48 8b cf e8 b9 6d 06 ff 48 8b cf e8 79 91 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5b950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b9 c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 37 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c95240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 52 c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 36 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c95328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 53 c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 36 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c953d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 53 c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 36 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5baa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ba c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 36 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7611710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7611710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 92 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7611718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7611718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 92 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 46 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76116f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c76116f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 16 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 45 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7611700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c7611700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 91 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7611708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c7611708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb8c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 91 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f1f18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f7 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 40 ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 45 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c a8 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 6d 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 91 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c0 bd c5 c8 f7 7f 00 00 e8 fc 34 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f8 54 c9 c8 f7 7f 00 00 e8 e1 34 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 e0 55 c9 c8 f7 7f 00 00 e8 c6 34 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 90 56 c9 c8 f7 7f 00 00 e8 ab 34 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 10 bf c5 c8 f7 7f 00 00 e8 90 34 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 38 17 61 c7 f7 7f 00 00 48 b8 38 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 79 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 40 17 61 c7 f7 7f 00 00 48 b8 40 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 90 bc c5 c8 f7 7f 00 00 e8 f9 43 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 20 17 61 c7 f7 7f 00 00 48 b8 20 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 90 bc c5 c8 f7 7f 00 00 e8 c0 43 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 28 17 61 c7 f7 7f 00 00 48 b8 28 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c8 8f ff ff eb 2d 48 8b c8 49 bb 30 17 61 c7 f7 7f 00 00 48 b8 30 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a3 8f ff ff eb 08 48 8b c8 e8 21 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 6b 3e ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 39 43 b7 5e 48 8b f8 48 8b ce 33 d2 e8 8c a6 60 4e 48 8b d0 48 8b cf e8 a9 6b 06 ff 48 8b cf e8 69 8f ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5bdc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 bd c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 34 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c954f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 54 c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 34 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c955e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 55 c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 34 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c95690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 56 c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 34 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5bf10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bf c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 34 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7611738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7611738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 90 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7611740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7611740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 90 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 43 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7611720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c7611720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 43 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7611728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c7611728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8f ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7611730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c7611730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb8e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 8f ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f1f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 3e ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 43 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c a6 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 6b 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 8f ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 30 c2 c5 c8 f7 7f 00 00 e8 ec 32 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 b0 57 c9 c8 f7 7f 00 00 e8 d1 32 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 98 58 c9 c8 f7 7f 00 00 e8 b6 32 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 48 59 c9 c8 f7 7f 00 00 e8 9b 32 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 80 c3 c5 c8 f7 7f 00 00 e8 80 32 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 60 17 61 c7 f7 7f 00 00 48 b8 60 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 68 17 61 c7 f7 7f 00 00 48 b8 68 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 e9 41 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 48 17 61 c7 f7 7f 00 00 48 b8 48 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 b0 41 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 50 17 61 c7 f7 7f 00 00 48 b8 50 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 8d ff ff eb 2d 48 8b c8 49 bb 58 17 61 c7 f7 7f 00 00 48 b8 58 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 8d ff ff eb 08 48 8b c8 e8 69 f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 5b 3c ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 29 41 b7 5e 48 8b f8 48 8b ce 33 d2 e8 7c a4 60 4e 48 8b d0 48 8b cf e8 99 69 06 ff 48 8b cf e8 59 8d ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5c230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c2 c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 32 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c957b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 57 c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 32 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c95898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 58 c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 32 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c95948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 59 c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 32 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5c380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c3 c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 32 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7611760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7611760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8e ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7611768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7611768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8e ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 41 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7611748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c7611748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 41 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7611750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c7611750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8d ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7611758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c7611758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb908h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8d ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f1fc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f4 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 3c ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 41 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c a4 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 69 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 8d ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a0 c6 c5 c8 f7 7f 00 00 e8 dc 30 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 68 5a c9 c8 f7 7f 00 00 e8 c1 30 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 50 5b c9 c8 f7 7f 00 00 e8 a6 30 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 00 5c c9 c8 f7 7f 00 00 e8 8b 30 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 f0 c7 c5 c8 f7 7f 00 00 e8 70 30 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 88 17 61 c7 f7 7f 00 00 48 b8 88 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 99 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 90 17 61 c7 f7 7f 00 00 48 b8 90 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 71 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 d9 3f b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 70 17 61 c7 f7 7f 00 00 48 b8 70 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 a0 3f b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 78 17 61 c7 f7 7f 00 00 48 b8 78 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 8b ff ff eb 2d 48 8b c8 49 bb 80 17 61 c7 f7 7f 00 00 48 b8 80 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3 8b ff ff eb 08 48 8b c8 e8 b1 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 4b 3a ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 19 3f b7 5e 48 8b f8 48 8b ce 33 d2 e8 6c a2 60 4e 48 8b d0 48 8b cf e8 89 67 06 ff 48 8b cf e8 49 8b ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5c6a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c6 c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 30 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c95a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5a c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 30 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c95b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5b c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 30 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c95c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 5c c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 30 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5c7f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c7 c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 30 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7611788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7611788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 8c ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7611790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7611790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8c ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 3f b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7611770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c7611770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 3f b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7611778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c7611778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 8b ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7611780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c7611780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 8b ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f2020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f2 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 3a ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 3f b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c a2 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 67 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 8b ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 10 cb c5 c8 f7 7f 00 00 e8 cc 2e b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 20 5d c9 c8 f7 7f 00 00 e8 b1 2e b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 08 5e c9 c8 f7 7f 00 00 e8 96 2e b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 b8 5e c9 c8 f7 7f 00 00 e8 7b 2e b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 60 cc c5 c8 f7 7f 00 00 e8 60 2e b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb b0 17 61 c7 f7 7f 00 00 48 b8 b0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 8a ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 17 61 c7 f7 7f 00 00 48 b8 b8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 c9 3d b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 98 17 61 c7 f7 7f 00 00 48 b8 98 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 90 3d b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb a0 17 61 c7 f7 7f 00 00 48 b8 a0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f8 89 ff ff eb 2d 48 8b c8 49 bb a8 17 61 c7 f7 7f 00 00 48 b8 a8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 89 ff ff eb 08 48 8b c8 e8 f9 f0 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 3b 38 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 09 3d b7 5e 48 8b f8 48 8b ce 33 d2 e8 5c a0 60 4e 48 8b d0 48 8b cf e8 79 65 06 ff 48 8b cf e8 39 89 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5cb10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cb c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 2e b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c95d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5d c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 2e b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c95e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5e c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 2e b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c95eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 5e c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 2e b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5cc60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 cc c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 2e b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76117b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76117b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 8a ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76117b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76117b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8a ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 3d b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7611798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c7611798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 3d b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76117a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c76117a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 89 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76117a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c76117a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb948h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 89 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f2078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f0 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 38 ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 3d b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c a0 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 65 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 89 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 90 2d c7 c8 f7 7f 00 00 e8 ac 28 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 d8 5f c9 c8 f7 7f 00 00 e8 91 28 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 c0 60 c9 c8 f7 7f 00 00 e8 76 28 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 70 61 c9 c8 f7 7f 00 00 e8 5b 28 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 28 7d c7 c8 f7 7f 00 00 e8 40 28 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb d8 17 61 c7 f7 7f 00 00 48 b8 d8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 19 85 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 17 61 c7 f7 7f 00 00 48 b8 e0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 84 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 60 2c c7 c8 f7 7f 00 00 e8 a9 37 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c0 17 61 c7 f7 7f 00 00 48 b8 c0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 60 2c c7 c8 f7 7f 00 00 e8 70 37 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb c8 17 61 c7 f7 7f 00 00 48 b8 c8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 68 84 ff ff eb 2d 48 8b c8 49 bb d0 17 61 c7 f7 7f 00 00 48 b8 d0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 43 84 ff ff eb 08 48 8b c8 e8 79 fa ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 1b 32 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 e9 36 b7 5e 48 8b f8 48 8b ce 33 d2 e8 3c 9a 60 4e 48 8b d0 48 8b cf e8 59 5f 06 ff 48 8b cf e8 19 83 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c72d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 2d c7 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 28 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c95fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 5f c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 28 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c960c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 60 c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 28 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c96170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 28 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c77d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7d c7 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 28 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76117d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76117d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 17 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb9d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 85 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76117e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76117e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 17 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb9d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 84 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 37 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76117c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c76117c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 37 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76117c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c76117c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb9d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 84 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76117d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c76117d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb9d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 84 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f3018h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 fa ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 32 ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 36 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 9a 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 5f 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 83 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 80 cf c5 c8 f7 7f 00 00 e8 9c 26 b7 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 90 62 c9 c8 f7 7f 00 00 e8 81 26 b7 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 78 63 c9 c8 f7 7f 00 00 e8 66 26 b7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 28 64 c9 c8 f7 7f 00 00 e8 4b 26 b7 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 d0 d0 c5 c8 f7 7f 00 00 e8 30 26 b7 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 00 18 61 c7 f7 7f 00 00 48 b8 00 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 29 83 ff ff c5 f9 10 70 08 48 8b cf 49 bb 08 18 61 c7 f7 7f 00 00 48 b8 08 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 83 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 50 ce c5 c8 f7 7f 00 00 e8 99 35 b7 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e8 17 61 c7 f7 7f 00 00 48 b8 e8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 50 ce c5 c8 f7 7f 00 00 e8 60 35 b7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb f0 17 61 c7 f7 7f 00 00 48 b8 f0 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 78 82 ff ff eb 2d 48 8b c8 49 bb f8 17 61 c7 f7 7f 00 00 48 b8 f8 17 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 82 ff ff eb 08 48 8b c8 e8 c1 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 0b 30 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 d9 34 b7 5e 48 8b f8 48 8b ce 33 d2 e8 2c 98 60 4e 48 8b d0 48 8b cf e8 49 5d 06 ff 48 8b cf e8 09 81 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c5cf80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cf c5 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 26 b7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8c96290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 62 c9 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 26 b7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8c96378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 63 c9 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 26 b7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8c96428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 64 c9 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 26 b7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c5d0d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d0 c5 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 26 b7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7611800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 61 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7611800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 18 61 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 83 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7611808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 61 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7611808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 18 61 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 83 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 35 b7 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76117e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 61 c7 f7 7f 00 00}
0123h mov rax,7ff7c76117e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 17 61 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 35 b7 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 61 c7 f7 7f 00 00}
015ah mov rax,7ff7c76117f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 17 61 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 82 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76117f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 61 c7 f7 7f 00 00}
017fh mov rax,7ff7c76117f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 61 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86eb9f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 82 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f3070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 30 ac 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 34 b7 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 98 60 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 5d 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 81 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 08 da c5 c8 f7 7f 00 00 e8 83 24 b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 78 6a c9 c8 f7 7f 00 00 e8 68 24 b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 60 6b c9 c8 f7 7f 00 00 e8 4d 24 b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 10 6c c9 c8 f7 7f 00 00 e8 32 24 b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 58 db c5 c8 f7 7f 00 00 e8 17 24 b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 28 18 61 c7 f7 7f 00 00 48 b8 28 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 90 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 18 61 c7 f7 7f 00 00 48 b8 30 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 62 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 6e 33 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 10 18 61 c7 f7 7f 00 00 48 b8 10 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 2f 33 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 18 18 61 c7 f7 7f 00 00 48 b8 18 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c7 83 ff ff eb 2d 48 8b c8 49 bb 20 18 61 c7 f7 7f 00 00 48 b8 20 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 83 ff ff eb 08 48 8b c8 e8 20 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ce 2d ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 9c 32 b7 5e 48 8b f8 48 8b ce 33 d2 e8 ef 95 60 4e 48 8b d0 48 8b cf e8 0c 5b 06 ff 48 8b cf e8 cc 7e ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5da08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 da c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 24 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c96a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 6a c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 24 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c96b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 6b c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 24 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c96c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 6c c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 24 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5db58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 db c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 24 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7611828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7611828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 84 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7611830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c7611830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 84 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 33 b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7611810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c7611810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 33 b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7611818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c7611818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 83 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7611820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7611820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebd78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 83 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f3200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 f8 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 2d ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 32 b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 95 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 5b 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 7e ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d8 de c5 c8 f7 7f 00 00 e8 33 22 b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 30 71 c9 c8 f7 7f 00 00 e8 18 22 b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 18 72 c9 c8 f7 7f 00 00 e8 fd 21 b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 c8 72 c9 c8 f7 7f 00 00 e8 e2 21 b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 28 e0 c5 c8 f7 7f 00 00 e8 c7 21 b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 50 18 61 c7 f7 7f 00 00 48 b8 50 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 70 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 18 61 c7 f7 7f 00 00 48 b8 58 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 42 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 1e 31 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 38 18 61 c7 f7 7f 00 00 48 b8 38 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 df 30 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 40 18 61 c7 f7 7f 00 00 48 b8 40 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a7 81 ff ff eb 2d 48 8b c8 49 bb 48 18 61 c7 f7 7f 00 00 48 b8 48 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 82 81 ff ff eb 08 48 8b c8 e8 70 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 7e 2b ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 4c 30 b7 5e 48 8b f8 48 8b ce 33 d2 e8 9f 93 60 4e 48 8b d0 48 8b cf e8 bc 58 06 ff 48 8b cf e8 7c 7c ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5ded8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 de c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 22 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c97130h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 71 c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 22 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c97218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 72 c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 21 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c972c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 72 c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 21 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 21 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7611850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7611850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 82 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7611858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c7611858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 82 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 31 b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7611838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c7611838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 30 b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7611840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c7611840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 81 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7611848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7611848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebda8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 81 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f32a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 f6 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 2b ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 30 b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 93 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 58 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 7c ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 48 e3 c5 c8 f7 7f 00 00 e8 e3 1f b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 e8 73 c9 c8 f7 7f 00 00 e8 c8 1f b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 d0 74 c9 c8 f7 7f 00 00 e8 ad 1f b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 80 75 c9 c8 f7 7f 00 00 e8 92 1f b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 98 e4 c5 c8 f7 7f 00 00 e8 77 1f b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 78 18 61 c7 f7 7f 00 00 48 b8 78 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 40 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb 80 18 61 c7 f7 7f 00 00 48 b8 80 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 12 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 ce 2e b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 60 18 61 c7 f7 7f 00 00 48 b8 60 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 8f 2e b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 68 18 61 c7 f7 7f 00 00 48 b8 68 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 77 7f ff ff eb 2d 48 8b c8 49 bb 70 18 61 c7 f7 7f 00 00 48 b8 70 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 7f ff ff eb 08 48 8b c8 e8 78 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 2e 29 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 fc 2d b7 5e 48 8b f8 48 8b ce 33 d2 e8 4f 91 60 4e 48 8b d0 48 8b cf e8 6c 56 06 ff 48 8b cf e8 2c 7a ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5e348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e3 c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 1f b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c973e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 73 c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 1f b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c974d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 74 c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 1f b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c97580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 75 c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 1f b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 1f b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7611878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7611878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 80 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7611880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c7611880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 80 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 2e b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7611860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c7611860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 2e b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7611868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c7611868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 7f ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7611870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7611870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebdc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 7f ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f32f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 f4 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 29 ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 2d b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 91 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 56 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 7a ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b8 e7 c5 c8 f7 7f 00 00 e8 93 1d b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 a0 76 c9 c8 f7 7f 00 00 e8 78 1d b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 88 77 c9 c8 f7 7f 00 00 e8 5d 1d b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 38 78 c9 c8 f7 7f 00 00 e8 42 1d b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 08 e9 c5 c8 f7 7f 00 00 e8 27 1d b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb a0 18 61 c7 f7 7f 00 00 48 b8 a0 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 10 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb a8 18 61 c7 f7 7f 00 00 48 b8 a8 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e2 7d ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 7e 2c b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 88 18 61 c7 f7 7f 00 00 48 b8 88 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 3f 2c b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 90 18 61 c7 f7 7f 00 00 48 b8 90 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 47 7d ff ff eb 2d 48 8b c8 49 bb 98 18 61 c7 f7 7f 00 00 48 b8 98 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 22 7d ff ff eb 08 48 8b c8 e8 80 f2 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 de 26 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 ac 2b b7 5e 48 8b f8 48 8b ce 33 d2 e8 ff 8e 60 4e 48 8b d0 48 8b cf e8 1c 54 06 ff 48 8b cf e8 dc 77 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5e7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 e7 c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 1d b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c976a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 76 c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 1d b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c97788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 77 c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 1d b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c97838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 78 c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 1d b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 1d b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76118a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76118a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 7e ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76118a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c76118a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 7d ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 2c b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7611888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c7611888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 2c b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7611890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c7611890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 7d ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7611898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7611898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebde8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 7d ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f3350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f2 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 26 ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 2b b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 8e 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 54 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 77 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 28 ec c5 c8 f7 7f 00 00 e8 43 1b b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 58 79 c9 c8 f7 7f 00 00 e8 28 1b b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 40 7a c9 c8 f7 7f 00 00 e8 0d 1b b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 f0 7a c9 c8 f7 7f 00 00 e8 f2 1a b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 78 ed c5 c8 f7 7f 00 00 e8 d7 1a b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb c8 18 61 c7 f7 7f 00 00 48 b8 c8 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e0 7b ff ff c5 fd 10 70 08 48 8b cf 49 bb d0 18 61 c7 f7 7f 00 00 48 b8 d0 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b2 7b ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 2e 2a b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb b0 18 61 c7 f7 7f 00 00 48 b8 b0 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 ef 29 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb b8 18 61 c7 f7 7f 00 00 48 b8 b8 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 7b ff ff eb 2d 48 8b c8 49 bb c0 18 61 c7 f7 7f 00 00 48 b8 c0 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f2 7a ff ff eb 08 48 8b c8 e8 88 f0 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 8e 24 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 5c 29 b7 5e 48 8b f8 48 8b ce 33 d2 e8 af 8c 60 4e 48 8b d0 48 8b cf e8 cc 51 06 ff 48 8b cf e8 8c 75 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5ec28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 ec c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 1b b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c97958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 79 c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 1b b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c97a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7a c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 1b b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c97af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 7a c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 1a b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5ed78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 1a b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76118c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76118c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 7b ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76118d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c76118d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 7b ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 2a b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76118b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c76118b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 29 b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76118b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c76118b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 7b ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76118c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76118c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebe08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 7a ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f33a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f0 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 24 ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 29 b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 8c 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 51 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 75 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 98 f0 c5 c8 f7 7f 00 00 e8 f3 14 b7 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 10 7c c9 c8 f7 7f 00 00 e8 d8 14 b7 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 f8 7c c9 c8 f7 7f 00 00 e8 bd 14 b7 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 a8 7d c9 c8 f7 7f 00 00 e8 a2 14 b7 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 e8 f1 c5 c8 f7 7f 00 00 e8 87 14 b7 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb f0 18 61 c7 f7 7f 00 00 48 b8 f0 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b0 75 ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 18 61 c7 f7 7f 00 00 48 b8 f8 18 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 82 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 68 ef c5 c8 f7 7f 00 00 e8 de 23 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d8 18 61 c7 f7 7f 00 00 48 b8 d8 18 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 68 ef c5 c8 f7 7f 00 00 e8 9f 23 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb e0 18 61 c7 f7 7f 00 00 48 b8 e0 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e7 74 ff ff eb 2d 48 8b c8 49 bb e8 18 61 c7 f7 7f 00 00 48 b8 e8 18 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c2 74 ff ff eb 08 48 8b c8 e8 68 ea ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3e 1e ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 0c 23 b7 5e 48 8b f8 48 8b ce 33 d2 e8 5f 86 60 4e 48 8b d0 48 8b cf e8 7c 4b 06 ff 48 8b cf e8 3c 6f ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5f098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 f0 c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 14 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c97c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7c c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 14 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c97cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7c c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 14 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c97da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 7d c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 14 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5f1e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 f1 c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 14 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76118f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76118f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 18 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 75 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76118f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c76118f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 18 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 75 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 23 b7 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76118d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 61 c7 f7 7f 00 00}
0144h mov rax,7ff7c76118d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 18 61 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 23 b7 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76118e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 61 c7 f7 7f 00 00}
017bh mov rax,7ff7c76118e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 18 61 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 74 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76118e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 61 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76118e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 18 61 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86ebe28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 74 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86f33d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 ea ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 1e ac 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 23 b7 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 86 60 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 4b 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 6f ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 e8 3b c7 c8 f7 7f 00 00 e8 a3 12 b7 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 c8 7e c9 c8 f7 7f 00 00 e8 88 12 b7 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 b0 7f c9 c8 f7 7f 00 00 e8 6d 12 b7 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 60 80 c9 c8 f7 7f 00 00 e8 52 12 b7 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 e0 a9 c7 c8 f7 7f 00 00 e8 37 12 b7 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 18 19 61 c7 f7 7f 00 00 48 b8 18 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f0 73 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 19 61 c7 f7 7f 00 00 48 b8 20 19 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c2 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 8d 21 b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 00 19 61 c7 f7 7f 00 00 48 b8 00 19 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 4e 21 b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 08 19 61 c7 f7 7f 00 00 48 b8 08 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 73 ff ff eb 2d 48 8b c8 49 bb 10 19 61 c7 f7 7f 00 00 48 b8 10 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 73 ff ff eb 08 48 8b c8 e8 57 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ed 1b ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 bb 20 b7 5e 48 8b f8 48 8b ce 33 d2 e8 0e 84 60 4e 48 8b d0 48 8b cf e8 2b 49 06 ff 48 8b cf e8 eb 6c ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c73be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 3b c7 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 12 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c97ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 7e c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 12 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c97fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 7f c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 12 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c98060h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 80 c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 12 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c7a9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a9 c7 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 12 b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7611918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7611918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 19 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebeb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 73 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7611920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c7611920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 19 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebeb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 73 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 21 b7 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7611900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 61 c7 f7 7f 00 00}
0145h mov rax,7ff7c7611900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 19 61 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 21 b7 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7611908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 61 c7 f7 7f 00 00}
017ch mov rax,7ff7c7611908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 19 61 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c86ebeb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 73 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7611910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 61 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7611910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 61 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c86ebeb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 73 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c86f4418h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f8 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 1b ac 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 20 b7 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 84 60 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 49 06 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 6c ae 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 08 f5 c5 c8 f7 7f 00 00 e8 53 10 b7 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 80 81 c9 c8 f7 7f 00 00 e8 38 10 b7 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 68 82 c9 c8 f7 7f 00 00 e8 1d 10 b7 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 18 83 c9 c8 f7 7f 00 00 e8 02 10 b7 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 58 f6 c5 c8 f7 7f 00 00 e8 e7 0f b7 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 40 19 61 c7 f7 7f 00 00 48 b8 40 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c0 71 ff ff c5 fd 10 70 08 48 8b cf 49 bb 48 19 61 c7 f7 7f 00 00 48 b8 48 19 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 92 71 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 3d 1f b7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 28 19 61 c7 f7 7f 00 00 48 b8 28 19 61 c7 f7 7f 00 00 39 09 ff 10 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 fe 1e b7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 30 19 61 c7 f7 7f 00 00 48 b8 30 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 70 ff ff eb 2d 48 8b c8 49 bb 38 19 61 c7 f7 7f 00 00 48 b8 38 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d1 70 ff ff eb 08 48 8b c8 e8 5f f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9d 19 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 6b 1e b7 5e 48 8b f8 48 8b ce 33 d2 e8 be 81 60 4e 48 8b d0 48 8b cf e8 db 46 06 ff 48 8b cf e8 9b 6a ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c5f508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 f5 c5 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 10 b7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8c98180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 81 c9 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 10 b7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8c98268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 82 c9 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 10 b7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8c98318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 83 c9 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 10 b7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c5f658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 f6 c5 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 0f b7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7611940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 61 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7611940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 19 61 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 71 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7611948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 61 c7 f7 7f 00 00}
00dah mov rax,7ff7c7611948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 19 61 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 71 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 1f b7 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7611928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 61 c7 f7 7f 00 00}
0145h mov rax,7ff7c7611928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 61 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 1e b7 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7611930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 61 c7 f7 7f 00 00}
017ch mov rax,7ff7c7611930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 19 61 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 70 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7611938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 61 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7611938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 19 61 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c86ebed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 70 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c86f4470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f6 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 19 ac 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 1e b7 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 81 60 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 46 06 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 6a ae 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 89 c9 c8 f7 7f 00 00 e8 fb 0d b7 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 90 8b c9 c8 f7 7f 00 00 e8 dd 0d b7 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 b8 8d c9 c8 f7 7f 00 00 e8 bf 0d b7 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 40 8f c9 c8 f7 7f 00 00 e8 a1 0d b7 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 90 19 61 c7 f7 7f 00 00 48 b8 90 19 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 98 19 61 c7 f7 7f 00 00 48 b8 98 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb a0 19 61 c7 f7 7f 00 00 48 b8 a0 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb a8 19 61 c7 f7 7f 00 00 48 b8 a8 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ce 8b fc ff 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 9f 1c b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 19 61 c7 f7 7f 00 00 48 b8 50 19 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 58 19 61 c7 f7 7f 00 00 48 b8 58 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 97 08 fc ff 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 08 1c b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 19 61 c7 f7 7f 00 00 48 b8 60 19 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 68 19 61 c7 f7 7f 00 00 48 b8 68 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 70 19 61 c7 f7 7f 00 00 48 b8 70 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ba 47 fc ff 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 3b 1b b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 19 61 c7 f7 7f 00 00 48 b8 78 19 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 80 19 61 c7 f7 7f 00 00 48 b8 80 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 88 19 61 c7 f7 7f 00 00 48 b8 88 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3f 3c ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 1b f4 ff ff 48 b9 50 b3 c5 c8 f7 7f 00 00 e8 7c 1a b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 6b 15 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 39 1a b7 5e 48 8b f8 48 8b ce 33 d2 e8 8c 7d 60 4e 48 8b d0 48 8b cf e8 a9 42 06 ff 48 8b cf e8 69 66 ae 5e cc}
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
0026h mov rcx,7ff7c8c98998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 89 c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 0d b7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c98b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8b c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 0d b7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c98db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8d c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 0d b7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c98f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8f c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 0d b7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 19 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 19 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76119a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c76119a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 19 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76119a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c76119a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 19 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d3 ff ff}
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
015dh call 7ff7c86bdbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 8b fc ff}
0162h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1c b7 5e}
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
019dh mov r11,7ff7c7611950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 19 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 19 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 d3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b5930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 08 fc ff}
01f9h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 1c b7 5e}
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
0237h mov r11,7ff7c7611960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 19 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 19 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d2 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 19 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d2 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86b9920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 47 fc ff}
02c6h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 1b b7 5e}
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
0304h mov r11,7ff7c7611978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 19 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 19 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f2390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d1 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 19 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 3c ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f4640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f4 ff ff}
0385h mov rcx,7ff7c8c5b350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b3 c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 1a b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 15 ac 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 1a b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 7d 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 42 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 66 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 9b c9 c8 f7 7f 00 00 e8 bb 09 b7 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 9d c9 c8 f7 7f 00 00 e8 9d 09 b7 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 9f c9 c8 f7 7f 00 00 e8 7f 09 b7 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 a0 c9 c8 f7 7f 00 00 e8 61 09 b7 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb f0 19 61 c7 f7 7f 00 00 48 b8 f0 19 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f8 19 61 c7 f7 7f 00 00 48 b8 f8 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e5 d1 ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 1a 61 c7 f7 7f 00 00 48 b8 00 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bd d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 08 1a 61 c7 f7 7f 00 00 48 b8 08 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 0e 88 fc ff 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 5f 18 b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 19 61 c7 f7 7f 00 00 48 b8 b0 19 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b8 19 61 c7 f7 7f 00 00 48 b8 b8 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e6 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 a7 05 fc ff 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 c8 17 b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 19 61 c7 f7 7f 00 00 48 b8 c0 19 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c8 19 61 c7 f7 7f 00 00 48 b8 c8 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb d0 19 61 c7 f7 7f 00 00 48 b8 d0 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 6a 4a fc ff 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 fb 16 b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 19 61 c7 f7 7f 00 00 48 b8 d8 19 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb e0 19 61 c7 f7 7f 00 00 48 b8 e0 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7f cf ff ff c5 f9 10 70 08 48 8b cd 49 bb e8 19 61 c7 f7 7f 00 00 48 b8 e8 19 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ff 37 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 73 f0 ff ff 48 b9 20 b8 c5 c8 f7 7f 00 00 e8 3c 16 b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 2b 11 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 f9 15 b7 5e 48 8b f8 48 8b ce 33 d2 e8 4c 79 60 4e 48 8b d0 48 8b cf e8 69 3e 06 ff 48 8b cf e8 29 62 ae 5e cc}
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
0026h mov rcx,7ff7c8c99b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9b c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 09 b7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c99d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 9d c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 09 b7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c99f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9f c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 09 b7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9a0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a0 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 09 b7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76119f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76119f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 19 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76119f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76119f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 19 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d1 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d1 ff ff}
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
015dh call 7ff7c86bdc50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 88 fc ff}
0162h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 18 b7 5e}
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
019dh mov r11,7ff7c76119b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76119b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76119b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76119b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 19 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d0 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b5a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 05 fc ff}
01f9h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 17 b7 5e}
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
0237h mov r11,7ff7c76119c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c76119c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 19 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76119c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c76119c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 19 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76119d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c76119d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 19 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d0 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86ba010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4a fc ff}
02c6h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 16 b7 5e}
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
0304h mov r11,7ff7c76119d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c76119d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 19 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76119e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c76119e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 19 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f25a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f cf ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76119e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c76119e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 19 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 37 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f46d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f0 ff ff}
0385h mov rcx,7ff7c8c5b820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b8 c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 16 b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 11 ac 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 15 b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 79 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 3e 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 62 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 a3 c9 c8 f7 7f 00 00 e8 7b 05 b7 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 a5 c9 c8 f7 7f 00 00 e8 5d 05 b7 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 a7 c9 c8 f7 7f 00 00 e8 3f 05 b7 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 a8 c9 c8 f7 7f 00 00 e8 21 05 b7 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 50 1a 61 c7 f7 7f 00 00 48 b8 50 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 58 1a 61 c7 f7 7f 00 00 48 b8 58 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb 60 1a 61 c7 f7 7f 00 00 48 b8 60 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8d cf ff ff c5 f9 10 78 08 48 8b cf 49 bb 68 1a 61 c7 f7 7f 00 00 48 b8 68 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 65 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 4e 84 fc ff 48 b9 90 bc c5 c8 f7 7f 00 00 e8 1f 14 b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 1a 61 c7 f7 7f 00 00 48 b8 10 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 18 1a 61 c7 f7 7f 00 00 48 b8 18 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 ce ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 02 fc ff 48 b9 90 bc c5 c8 f7 7f 00 00 e8 88 13 b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 1a 61 c7 f7 7f 00 00 48 b8 20 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 28 1a 61 c7 f7 7f 00 00 48 b8 28 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 30 1a 61 c7 f7 7f 00 00 48 b8 30 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f4 cd ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 0a 49 fc ff 48 b9 90 bc c5 c8 f7 7f 00 00 e8 bb 12 b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 1a 61 c7 f7 7f 00 00 48 b8 38 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 40 1a 61 c7 f7 7f 00 00 48 b8 40 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 48 1a 61 c7 f7 7f 00 00 48 b8 48 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bf 33 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 9b ec ff ff 48 b9 90 bc c5 c8 f7 7f 00 00 e8 fc 11 b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 eb 0c ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 b9 11 b7 5e 48 8b f8 48 8b ce 33 d2 e8 0c 75 60 4e 48 8b d0 48 8b cf e8 29 3a 06 ff 48 8b cf e8 e9 5d ae 5e cc}
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
0026h mov rcx,7ff7c8c9a318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a3 c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 05 b7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9a510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a5 c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 05 b7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9a738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 a7 c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 05 b7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9a8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a8 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 05 b7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1a 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1a 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cf ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1a 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1a 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cf ff ff}
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
015dh call 7ff7c86bdcd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 84 fc ff}
0162h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 14 b7 5e}
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
019dh mov r11,7ff7c7611a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ce ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b5bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 02 fc ff}
01f9h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 13 b7 5e}
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
0237h mov r11,7ff7c7611a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1a 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1a 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 cd ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86ba2f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 49 fc ff}
02c6h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 12 b7 5e}
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
0304h mov r11,7ff7c7611a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1a 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1a 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f27b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1a 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 33 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f4740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ec ff ff}
0385h mov rcx,7ff7c8c5bc90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 bc c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 11 b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 0c ac 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 11 b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 75 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 3a 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 5d ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 ab c9 c8 f7 7f 00 00 e8 2b fd b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 ad c9 c8 f7 7f 00 00 e8 0d fd b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 af c9 c8 f7 7f 00 00 e8 ef fc b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 b0 c9 c8 f7 7f 00 00 e8 d1 fc b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb b0 1a 61 c7 f7 7f 00 00 48 b8 b0 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b8 1a 61 c7 f7 7f 00 00 48 b8 b8 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb c0 1a 61 c7 f7 7f 00 00 48 b8 c0 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4d c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb c8 1a 61 c7 f7 7f 00 00 48 b8 c8 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 80 fc ff 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 cf 0b b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 1a 61 c7 f7 7f 00 00 48 b8 70 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 78 1a 61 c7 f7 7f 00 00 48 b8 78 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 fb fb ff 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 38 0b b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 1a 61 c7 f7 7f 00 00 48 b8 80 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 88 1a 61 c7 f7 7f 00 00 48 b8 88 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 90 1a 61 c7 f7 7f 00 00 48 b8 90 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 9a 43 fc ff 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 6b 0a b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 1a 61 c7 f7 7f 00 00 48 b8 98 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb a0 1a 61 c7 f7 7f 00 00 48 b8 a0 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb a8 1a 61 c7 f7 7f 00 00 48 b8 a8 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6f 2b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 6b f8 ff ff 48 b9 00 c1 c5 c8 f7 7f 00 00 e8 ac 09 b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b 04 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 69 09 b7 5e 48 8b f8 48 8b ce 33 d2 e8 bc 6c 60 4e 48 8b d0 48 8b cf e8 d9 31 06 ff 48 8b cf e8 99 55 ae 5e cc}
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
0026h mov rcx,7ff7c8c9ab18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ab c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fd b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9ad10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 ad c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d fd b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9af38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 af c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef fc b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9b0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 b0 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 fc b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1a 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1a 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1a 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c9 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1a 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
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
015dh call 7ff7c86be150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 80 fc ff}
0162h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 0b b7 5e}
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
019dh mov r11,7ff7c7611a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1a 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1a 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b5d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fb fb ff}
01f9h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 0b b7 5e}
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
0237h mov r11,7ff7c7611a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1a 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1a 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1a 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86ba5d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 43 fc ff}
02c6h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 0a b7 5e}
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
0304h mov r11,7ff7c7611a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1a 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1a 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f29c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c7 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1a 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 2b ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f5b60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f8 ff ff}
0385h mov rcx,7ff7c8c5c100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 c1 c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 09 b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 04 ac 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 09 b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 6c 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 31 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 55 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 b3 c9 c8 f7 7f 00 00 e8 eb f8 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 b5 c9 c8 f7 7f 00 00 e8 cd f8 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 b7 c9 c8 f7 7f 00 00 e8 af f8 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 b8 c9 c8 f7 7f 00 00 e8 91 f8 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 10 1b 61 c7 f7 7f 00 00 48 b8 10 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 18 1b 61 c7 f7 7f 00 00 48 b8 18 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 45 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 1b 61 c7 f7 7f 00 00 48 b8 20 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1d c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 28 1b 61 c7 f7 7f 00 00 48 b8 28 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 be 7c fc ff 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 8f 07 b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 1a 61 c7 f7 7f 00 00 48 b8 d0 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d8 1a 61 c7 f7 7f 00 00 48 b8 d8 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 f8 fb ff 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 f8 06 b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 1a 61 c7 f7 7f 00 00 48 b8 e0 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e8 1a 61 c7 f7 7f 00 00 48 b8 e8 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb f0 1a 61 c7 f7 7f 00 00 48 b8 f0 1a 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 4a 46 fc ff 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 2b 06 b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 1a 61 c7 f7 7f 00 00 48 b8 f8 1a 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 00 1b 61 c7 f7 7f 00 00 48 b8 00 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb 08 1b 61 c7 f7 7f 00 00 48 b8 08 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2f 27 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 93 f4 ff ff 48 b9 70 c5 c5 c8 f7 7f 00 00 e8 6c 05 b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 5b 00 ac 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 29 05 b7 5e 48 8b f8 48 8b ce 33 d2 e8 7c 68 60 4e 48 8b d0 48 8b cf e8 99 2d 06 ff 48 8b cf e8 59 51 ae 5e cc}
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
0026h mov rcx,7ff7c8c9b318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 b3 c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb f8 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9b510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 b5 c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f8 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9b738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 b7 c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f8 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9b8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 b8 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f8 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1b 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1b 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c7 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1b 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c7 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1b 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
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
015dh call 7ff7c86be1d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 7c fc ff}
0162h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 07 b7 5e}
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
019dh mov r11,7ff7c7611ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1a 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1a 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c6 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b5e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f8 fb ff}
01f9h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 06 b7 5e}
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
0237h mov r11,7ff7c7611ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1a 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1a 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1a 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86bacc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 46 fc ff}
02c6h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 06 b7 5e}
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
0304h mov r11,7ff7c7611af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1a 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1b 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f2bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1b 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 27 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f5bc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 f4 ff ff}
0385h mov rcx,7ff7c8c5c570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 05 b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 00 ac 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 05 b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 68 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 2d 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 51 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 bb c9 c8 f7 7f 00 00 e8 ab f4 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 bd c9 c8 f7 7f 00 00 e8 8d f4 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 bf c9 c8 f7 7f 00 00 e8 6f f4 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 c0 c9 c8 f7 7f 00 00 e8 51 f4 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 70 1b 61 c7 f7 7f 00 00 48 b8 70 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 78 1b 61 c7 f7 7f 00 00 48 b8 78 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 c5 ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 1b 61 c7 f7 7f 00 00 48 b8 80 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 88 1b 61 c7 f7 7f 00 00 48 b8 88 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 fe 78 fc ff 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 4f 03 b7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 1b 61 c7 f7 7f 00 00 48 b8 30 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 38 1b 61 c7 f7 7f 00 00 48 b8 38 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 c4 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 d7 f9 fb ff 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 b8 02 b7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 1b 61 c7 f7 7f 00 00 48 b8 40 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 48 1b 61 c7 f7 7f 00 00 48 b8 48 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb 50 1b 61 c7 f7 7f 00 00 48 b8 50 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ea 44 fc ff 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 eb 01 b7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 1b 61 c7 f7 7f 00 00 48 b8 58 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 60 1b 61 c7 f7 7f 00 00 48 b8 60 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 68 1b 61 c7 f7 7f 00 00 48 b8 68 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ef 22 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 bb f0 ff ff 48 b9 e0 c9 c5 c8 f7 7f 00 00 e8 2c 01 b7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b fc ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 e9 00 b7 5e 48 8b f8 48 8b ce 33 d2 e8 3c 64 60 4e 48 8b d0 48 8b cf e8 59 29 06 ff 48 8b cf e8 19 4d ae 5e cc}
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
0026h mov rcx,7ff7c8c9bb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 bb c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab f4 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9bd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 bd c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f4 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9bf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 bf c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f4 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9c0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c0 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f4 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1b 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1b 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c5 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1b 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1b 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
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
015dh call 7ff7c86be250h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 78 fc ff}
0162h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 03 b7 5e}
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
019dh mov r11,7ff7c7611b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1b 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1b 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 c4 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b63c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f9 fb ff}
01f9h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 02 b7 5e}
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
0237h mov r11,7ff7c7611b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1b 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1b 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1b 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86bafa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 44 fc ff}
02c6h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 01 b7 5e}
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
0304h mov r11,7ff7c7611b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1b 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1b 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f2de0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1b 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 22 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f5c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f0 ff ff}
0385h mov rcx,7ff7c8c5c9e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 c9 c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 01 b7 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fc ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 00 b7 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 64 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 29 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 4d ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 c3 c9 c8 f7 7f 00 00 e8 6b f0 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 c5 c9 c8 f7 7f 00 00 e8 4d f0 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 c7 c9 c8 f7 7f 00 00 e8 2f f0 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 c8 c9 c8 f7 7f 00 00 e8 11 f0 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb d0 1b 61 c7 f7 7f 00 00 48 b8 d0 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d8 1b 61 c7 f7 7f 00 00 48 b8 d8 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 1b 61 c7 f7 7f 00 00 48 b8 e0 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cd c6 ff ff c5 f9 10 78 08 48 8b cf 49 bb e8 1b 61 c7 f7 7f 00 00 48 b8 e8 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 3e 75 fc ff 48 b9 60 2c c7 c8 f7 7f 00 00 e8 0f ff b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 1b 61 c7 f7 7f 00 00 48 b8 90 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 98 1b 61 c7 f7 7f 00 00 48 b8 98 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 e7 f6 fb ff 48 b9 60 2c c7 c8 f7 7f 00 00 e8 78 fe b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 1b 61 c7 f7 7f 00 00 48 b8 a0 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a8 1b 61 c7 f7 7f 00 00 48 b8 a8 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb b0 1b 61 c7 f7 7f 00 00 48 b8 b0 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 8a 43 fc ff 48 b9 60 2c c7 c8 f7 7f 00 00 e8 ab fd b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 1b 61 c7 f7 7f 00 00 48 b8 b8 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb c0 1b 61 c7 f7 7f 00 00 48 b8 c0 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb c8 1b 61 c7 f7 7f 00 00 48 b8 c8 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af 1e ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 e3 ec ff ff 48 b9 60 2c c7 c8 f7 7f 00 00 e8 ec fc b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 db f7 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 a9 fc b6 5e 48 8b f8 48 8b ce 33 d2 e8 fc 5f 60 4e 48 8b d0 48 8b cf e8 19 25 06 ff 48 8b cf e8 d9 48 ae 5e cc}
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
0026h mov rcx,7ff7c8c9c318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c3 c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f0 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9c510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 c5 c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f0 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9c738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 c7 c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f0 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9c8c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 c8 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f0 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1b 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1b 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1b 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c6 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1b 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c6 ff ff}
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
015dh call 7ff7c86be2d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 75 fc ff}
0162h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f ff b6 5e}
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
019dh mov r11,7ff7c7611b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1b 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1b 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c5 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b6510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f6 fb ff}
01f9h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 fe b6 5e}
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
0237h mov r11,7ff7c7611ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1b 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1b 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1b 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86bb280h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 43 fc ff}
02c6h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fd b6 5e}
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
0304h mov r11,7ff7c7611bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1b 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1b 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f3400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1b 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 1e ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f5c98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 ec ff ff}
0385h mov rcx,7ff7c8c72c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 2c c7 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec fc b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f7 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 fc b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 5f 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 25 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 48 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 cb c9 c8 f7 7f 00 00 e8 2b ec b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 10 cd c9 c8 f7 7f 00 00 e8 0d ec b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 38 cf c9 c8 f7 7f 00 00 e8 ef eb b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 c0 d0 c9 c8 f7 7f 00 00 e8 d1 eb b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 30 1c 61 c7 f7 7f 00 00 48 b8 30 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 38 1c 61 c7 f7 7f 00 00 48 b8 38 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 40 1c 61 c7 f7 7f 00 00 48 b8 40 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9d c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 48 1c 61 c7 f7 7f 00 00 48 b8 48 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 71 fc ff 48 b9 50 ce c5 c8 f7 7f 00 00 e8 cf fa b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 1b 61 c7 f7 7f 00 00 48 b8 f0 1b 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f8 1b 61 c7 f7 7f 00 00 48 b8 f8 1b 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 f7 f3 fb ff 48 b9 50 ce c5 c8 f7 7f 00 00 e8 38 fa b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 1c 61 c7 f7 7f 00 00 48 b8 00 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 08 1c 61 c7 f7 7f 00 00 48 b8 08 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb 10 1c 61 c7 f7 7f 00 00 48 b8 10 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 2a 42 fc ff 48 b9 50 ce c5 c8 f7 7f 00 00 e8 6b f9 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 1c 61 c7 f7 7f 00 00 48 b8 18 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 20 1c 61 c7 f7 7f 00 00 48 b8 20 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 28 1c 61 c7 f7 7f 00 00 48 b8 28 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6f 1a ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 0b e9 ff ff 48 b9 50 ce c5 c8 f7 7f 00 00 e8 ac f8 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b f3 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 69 f8 b6 5e 48 8b f8 48 8b ce 33 d2 e8 bc 5b 60 4e 48 8b d0 48 8b cf e8 d9 20 06 ff 48 8b cf e8 99 44 ae 5e cc}
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
0026h mov rcx,7ff7c8c9cb18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 cb c9 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ec b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8c9cd10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 cd c9 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ec b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8c9cf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cf c9 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef eb b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8c9d0c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 d0 c9 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 eb b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7611c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 61 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7611c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1c 61 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7611c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 61 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7611c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1c 61 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7611c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 61 c7 f7 7f 00 00}
00edh mov rax,7ff7c7611c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1c 61 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7611c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 61 c7 f7 7f 00 00}
0115h mov rax,7ff7c7611c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1c 61 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c4 ff ff}
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
015dh call 7ff7c86be350h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 71 fc ff}
0162h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fa b6 5e}
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
019dh mov r11,7ff7c7611bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 61 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7611bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1b 61 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7611bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 61 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7611bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1b 61 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86b6660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f3 fb ff}
01f9h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fa b6 5e}
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
0237h mov r11,7ff7c7611c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 61 c7 f7 7f 00 00}
0241h mov rax,7ff7c7611c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1c 61 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7611c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 61 c7 f7 7f 00 00}
025eh mov rax,7ff7c7611c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1c 61 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7611c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 61 c7 f7 7f 00 00}
0286h mov rax,7ff7c7611c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1c 61 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86bb560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 42 fc ff}
02c6h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f9 b6 5e}
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
0304h mov r11,7ff7c7611c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 61 c7 f7 7f 00 00}
030eh mov rax,7ff7c7611c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1c 61 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7611c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 61 c7 f7 7f 00 00}
032bh mov rax,7ff7c7611c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1c 61 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f3610h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7611c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 61 c7 f7 7f 00 00}
0353h mov rax,7ff7c7611c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1c 61 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 1a ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86f5d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b e9 ff ff}
0385h mov rcx,7ff7c8c5ce50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ce c5 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac f8 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f3 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f8 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 5b 60 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 20 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 44 ae 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 d8 c9 c8 f7 7f 00 00 e8 d9 e7 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 c8 da c9 c8 f7 7f 00 00 e8 bb e7 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 f0 dc c9 c8 f7 7f 00 00 e8 9d e7 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 78 de c9 c8 f7 7f 00 00 e8 7f e7 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 90 1c 61 c7 f7 7f 00 00 48 b8 90 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 98 1c 61 c7 f7 7f 00 00 48 b8 98 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 c2 ff ff c5 fd 10 70 08 48 8b cf 49 bb a0 1c 61 c7 f7 7f 00 00 48 b8 a0 1c 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 55 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb a8 1c 61 c7 f7 7f 00 00 48 b8 a8 1c 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 27 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 91 6d fc ff 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 62 f6 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 50 1c 61 c7 f7 7f 00 00 48 b8 50 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 58 1c 61 c7 f7 7f 00 00 48 b8 58 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 c1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c2 f0 fb ff 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 b3 f5 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 60 1c 61 c7 f7 7f 00 00 48 b8 60 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 68 1c 61 c7 f7 7f 00 00 48 b8 68 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 c0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 70 1c 61 c7 f7 7f 00 00 48 b8 70 1c 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 74 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 74 44 fc ff 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 c5 f4 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 78 1c 61 c7 f7 7f 00 00 48 b8 78 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 80 1c 61 c7 f7 7f 00 00 48 b8 80 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb 88 1c 61 c7 f7 7f 00 00 48 b8 88 1c 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ae 15 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 11 e6 ff ff 48 b9 d8 d8 c5 c8 f7 7f 00 00 e8 e2 f3 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b9 ee ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 87 f3 b6 5e 48 8b f8 48 8b ce 33 d2 e8 da 56 60 4e 48 8b d0 48 8b cf e8 f7 1b 06 ff 48 8b cf e8 b7 3f ae 5e cc}
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
0038h mov rcx,7ff7c8c9d8d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d8 c9 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e7 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8c9dac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 da c9 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e7 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8c9dcf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 dc c9 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d e7 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8c9de78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 de c9 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e7 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1c 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1c 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1c 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1c 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c2 ff ff}
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
018ah call 7ff7c86be3d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6d fc ff}
018fh mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f6 b6 5e}
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
01e2h mov r11,7ff7c7611c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1c 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1c 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b67b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f0 fb ff}
023eh mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f5 b6 5e}
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
0291h mov r11,7ff7c7611c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1c 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1c 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1c 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bbc50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 44 fc ff}
032ch mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 f4 b6 5e}
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
037fh mov r11,7ff7c7611c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1c 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1c 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f3820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bf ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1c 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 15 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f5ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 e6 ff ff}
040fh mov rcx,7ff7c8c5d8d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d8 c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f3 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ee ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 f3 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 56 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 1b 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 3f ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 50 ea c9 c8 f7 7f 00 00 e8 d9 de b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 48 ec c9 c8 f7 7f 00 00 e8 bb de b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 70 ee c9 c8 f7 7f 00 00 e8 9d de b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 f8 ef c9 c8 f7 7f 00 00 e8 7f de b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb f0 1c 61 c7 f7 7f 00 00 48 b8 f0 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f8 1c 61 c7 f7 7f 00 00 48 b8 f8 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 bb ff ff c5 fd 10 70 08 48 8b cf 49 bb 00 1d 61 c7 f7 7f 00 00 48 b8 00 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a5 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb 08 1d 61 c7 f7 7f 00 00 48 b8 08 1d 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 77 bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 11 65 fc ff 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 62 ed b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb b0 1c 61 c7 f7 7f 00 00 48 b8 b0 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b8 1c 61 c7 f7 7f 00 00 48 b8 b8 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a1 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 22 e9 fb ff 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 b3 ec b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb c0 1c 61 c7 f7 7f 00 00 48 b8 c0 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c8 1c 61 c7 f7 7f 00 00 48 b8 c8 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb d0 1c 61 c7 f7 7f 00 00 48 b8 d0 1c 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c4 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 c5 eb b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d8 1c 61 c7 f7 7f 00 00 48 b8 d8 1c 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb e0 1c 61 c7 f7 7f 00 00 48 b8 e0 1c 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb e8 1c 61 c7 f7 7f 00 00 48 b8 e8 1c 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ae 0c ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f1 f7 ff ff 48 b9 a8 dd c5 c8 f7 7f 00 00 e8 e2 ea b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b9 e5 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 87 ea b6 5e 48 8b f8 48 8b ce 33 d2 e8 da 4d 60 4e 48 8b d0 48 8b cf e8 f7 12 06 ff 48 8b cf e8 b7 36 ae 5e cc}
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
0038h mov rcx,7ff7c8c9ea50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ea c9 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 de b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8c9ec48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 ec c9 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb de b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8c9ee70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ee c9 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d de b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8c9eff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ef c9 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f de b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1c 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1c 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bb ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1d 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bb ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1d 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
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
018ah call 7ff7c86be450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 65 fc ff}
018fh mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ed b6 5e}
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
01e2h mov r11,7ff7c7611cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1c 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1c 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ba ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e9 fb ff}
023eh mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 ec b6 5e}
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
0291h mov r11,7ff7c7611cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1c 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1c 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b9 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1c 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b9 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bbf40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 eb b6 5e}
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
037fh mov r11,7ff7c7611cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1c 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1c 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f3a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b9 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1c 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 0c ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f79b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f7 ff ff}
040fh mov rcx,7ff7c8c5dda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 dd c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ea b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 e5 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 ea b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 4d 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 12 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 36 ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 50 f2 c9 c8 f7 7f 00 00 e8 e9 d9 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 48 f4 c9 c8 f7 7f 00 00 e8 cb d9 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 70 f6 c9 c8 f7 7f 00 00 e8 ad d9 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 f8 f7 c9 c8 f7 7f 00 00 e8 8f d9 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 50 1d 61 c7 f7 7f 00 00 48 b8 50 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 58 1d 61 c7 f7 7f 00 00 48 b8 58 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 1d 61 c7 f7 7f 00 00 48 b8 60 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 05 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 68 1d 61 c7 f7 7f 00 00 48 b8 68 1d 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 d7 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a1 60 fc ff 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 72 e8 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 10 1d 61 c7 f7 7f 00 00 48 b8 10 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 18 1d 61 c7 f7 7f 00 00 48 b8 18 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 92 e5 fb ff 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 c3 e7 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 20 1d 61 c7 f7 7f 00 00 48 b8 20 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 28 1d 61 c7 f7 7f 00 00 48 b8 28 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb 30 1d 61 c7 f7 7f 00 00 48 b8 30 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 24 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 40 fc ff 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 d5 e6 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 38 1d 61 c7 f7 7f 00 00 48 b8 38 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 40 1d 61 c7 f7 7f 00 00 48 b8 40 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 48 1d 61 c7 f7 7f 00 00 48 b8 48 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 be 07 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 f3 ff ff 48 b9 18 e2 c5 c8 f7 7f 00 00 e8 f2 e5 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 c9 e0 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 97 e5 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ea 48 60 4e 48 8b d0 48 8b cf e8 07 0e 06 ff 48 8b cf e8 c7 31 ae 5e cc}
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
0038h mov rcx,7ff7c8c9f250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 f2 c9 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d9 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8c9f448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f4 c9 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb d9 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8c9f670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 f6 c9 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad d9 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8c9f7f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f7 c9 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f d9 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1d 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1d 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b9 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1d 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1d 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b8 ff ff}
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
018ah call 7ff7c86be4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 60 fc ff}
018fh mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e8 b6 5e}
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
01e2h mov r11,7ff7c7611d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1d 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1d 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b8 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e5 fb ff}
023eh mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 e7 b6 5e}
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
0291h mov r11,7ff7c7611d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1d 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1d 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1d 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b7 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bc630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 40 fc ff}
032ch mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 e6 b6 5e}
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
037fh mov r11,7ff7c7611d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1d 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1d 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f3cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b6 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1d 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 07 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7a18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f3 ff ff}
040fh mov rcx,7ff7c8c5e218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e2 c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e5 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 e0 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 e5 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 48 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 0e 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 31 ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 50 fa c9 c8 f7 7f 00 00 e8 f9 d4 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 48 fc c9 c8 f7 7f 00 00 e8 db d4 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 70 fe c9 c8 f7 7f 00 00 e8 bd d4 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 20 00 cb c8 f7 7f 00 00 e8 9f d4 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb b0 1d 61 c7 f7 7f 00 00 48 b8 b0 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b8 1d 61 c7 f7 7f 00 00 48 b8 b8 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 1d 61 c7 f7 7f 00 00 48 b8 c0 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 65 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb c8 1d 61 c7 f7 7f 00 00 48 b8 c8 1d 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 37 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 31 5c fc ff 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 82 e3 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 70 1d 61 c7 f7 7f 00 00 48 b8 70 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 78 1d 61 c7 f7 7f 00 00 48 b8 78 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 02 e2 fb ff 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 d3 e2 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 80 1d 61 c7 f7 7f 00 00 48 b8 80 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 88 1d 61 c7 f7 7f 00 00 48 b8 88 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 90 1d 61 c7 f7 7f 00 00 48 b8 90 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 84 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 e5 e1 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 98 1d 61 c7 f7 7f 00 00 48 b8 98 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb a0 1d 61 c7 f7 7f 00 00 48 b8 a0 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c4 b3 ff ff c5 fd 10 70 08 48 8b cd 49 bb a8 1d 61 c7 f7 7f 00 00 48 b8 a8 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ce 02 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e1 ee ff ff 48 b9 88 e6 c5 c8 f7 7f 00 00 e8 02 e1 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 d9 db ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 a7 e0 b6 5e 48 8b f8 48 8b ce 33 d2 e8 fa 43 60 4e 48 8b d0 48 8b cf e8 17 09 06 ff 48 8b cf e8 d7 2c ae 5e cc}
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
0038h mov rcx,7ff7c8c9fa50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fa c9 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d4 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8c9fc48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 fc c9 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db d4 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8c9fe70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 fe c9 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d4 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cb0020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 00 cb c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f d4 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1d 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1d 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b6 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1d 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b6 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1d 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b6 ff ff}
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
018ah call 7ff7c86be550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5c fc ff}
018fh mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 e3 b6 5e}
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
01e2h mov r11,7ff7c7611d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1d 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1d 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b5 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6bd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e2 fb ff}
023eh mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 e2 b6 5e}
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
0291h mov r11,7ff7c7611d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1d 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1d 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b4 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1d 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b4 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bc920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 e1 b6 5e}
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
037fh mov r11,7ff7c7611d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1d 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1d 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f3f10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1d 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 02 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7a80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ee ff ff}
040fh mov rcx,7ff7c8c5e688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e6 c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e1 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 db ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 e0 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 43 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 09 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 2c ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 78 02 cb c8 f7 7f 00 00 e8 09 d0 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 70 04 cb c8 f7 7f 00 00 e8 eb cf b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 98 06 cb c8 f7 7f 00 00 e8 cd cf b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 20 08 cb c8 f7 7f 00 00 e8 af cf b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 10 1e 61 c7 f7 7f 00 00 48 b8 10 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 18 1e 61 c7 f7 7f 00 00 48 b8 18 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f3 b3 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 1e 61 c7 f7 7f 00 00 48 b8 20 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c5 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb 28 1e 61 c7 f7 7f 00 00 48 b8 28 1e 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 97 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c1 57 fc ff 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 92 de b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb d0 1d 61 c7 f7 7f 00 00 48 b8 d0 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d8 1d 61 c7 f7 7f 00 00 48 b8 d8 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c1 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 72 de fb ff 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 e3 dd b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb e0 1d 61 c7 f7 7f 00 00 48 b8 e0 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e8 1d 61 c7 f7 7f 00 00 48 b8 e8 1d 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb f0 1d 61 c7 f7 7f 00 00 48 b8 f0 1d 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e4 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 f5 dc b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f8 1d 61 c7 f7 7f 00 00 48 b8 f8 1d 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 00 1e 61 c7 f7 7f 00 00 48 b8 00 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb 08 1e 61 c7 f7 7f 00 00 48 b8 08 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 de fd fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 ea ff ff 48 b9 f8 ea c5 c8 f7 7f 00 00 e8 12 dc b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e9 d6 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 b7 db b6 5e 48 8b f8 48 8b ce 33 d2 e8 0a 3f 60 4e 48 8b d0 48 8b cf e8 27 04 06 ff 48 8b cf e8 e7 27 ae 5e cc}
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
0038h mov rcx,7ff7c8cb0278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 02 cb c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d0 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cb0470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 04 cb c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb cf b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cb0698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 06 cb c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd cf b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cb0820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 08 cb c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af cf b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1e 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1e 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b3 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1e 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b3 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1e 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b3 ff ff}
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
018ah call 7ff7c86be5d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 57 fc ff}
018fh mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 de b6 5e}
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
01e2h mov r11,7ff7c7611dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1d 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1d 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b2 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6d30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 de fb ff}
023eh mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 dd b6 5e}
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
0291h mov r11,7ff7c7611de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1d 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1d 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b2 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b1 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bcc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 dc b6 5e}
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
037fh mov r11,7ff7c7611df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1d 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1e 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f4160h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b1 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1e 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fd fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7ae8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ea ff ff}
040fh mov rcx,7ff7c8c5eaf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ea c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 dc b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 d6 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 db b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 3f 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 04 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 27 ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 78 0a cb c8 f7 7f 00 00 e8 19 cb b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 70 0c cb c8 f7 7f 00 00 e8 fb ca b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 98 0e cb c8 f7 7f 00 00 e8 dd ca b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 20 10 cb c8 f7 7f 00 00 e8 bf ca b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 70 1e 61 c7 f7 7f 00 00 48 b8 70 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 78 1e 61 c7 f7 7f 00 00 48 b8 78 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 80 1e 61 c7 f7 7f 00 00 48 b8 80 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 25 b5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 88 1e 61 c7 f7 7f 00 00 48 b8 88 1e 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 f7 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 51 53 fc ff 48 b9 68 ef c5 c8 f7 7f 00 00 e8 a2 d9 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 30 1e 61 c7 f7 7f 00 00 48 b8 30 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 38 1e 61 c7 f7 7f 00 00 48 b8 38 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e2 da fb ff 48 b9 68 ef c5 c8 f7 7f 00 00 e8 f3 d8 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 40 1e 61 c7 f7 7f 00 00 48 b8 40 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 48 1e 61 c7 f7 7f 00 00 48 b8 48 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 50 1e 61 c7 f7 7f 00 00 48 b8 50 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 44 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 68 ef c5 c8 f7 7f 00 00 e8 05 d8 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 58 1e 61 c7 f7 7f 00 00 48 b8 58 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 60 1e 61 c7 f7 7f 00 00 48 b8 60 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 68 1e 61 c7 f7 7f 00 00 48 b8 68 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ee f8 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 d1 e5 ff ff 48 b9 68 ef c5 c8 f7 7f 00 00 e8 22 d7 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f9 d1 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 c7 d6 b6 5e 48 8b f8 48 8b ce 33 d2 e8 1a 3a 60 4e 48 8b d0 48 8b cf e8 37 ff 05 ff 48 8b cf e8 f7 22 ae 5e cc}
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
0038h mov rcx,7ff7c8cb0a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0a cb c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 cb b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cb0c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0c cb c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ca b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cb0e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 0e cb c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd ca b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cb1020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 10 cb c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf ca b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1e 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1e 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1e 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b5 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1e 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
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
018ah call 7ff7c86be650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 53 fc ff}
018fh mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 d9 b6 5e}
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
01e2h mov r11,7ff7c7611e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1e 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1e 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 b4 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6e90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 da fb ff}
023eh mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 d8 b6 5e}
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
0291h mov r11,7ff7c7611e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1e 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1e 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b3 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1e 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 b3 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bd300h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 d8 b6 5e}
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
037fh mov r11,7ff7c7611e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1e 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1e 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f47b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b2 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1e 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f8 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 e5 ff ff}
040fh mov rcx,7ff7c8c5ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 d7 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 d1 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 d6 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 3a 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 ff 05 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 22 ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 78 12 cb c8 f7 7f 00 00 e8 29 c6 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 70 14 cb c8 f7 7f 00 00 e8 0b c6 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 98 16 cb c8 f7 7f 00 00 e8 ed c5 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 20 18 cb c8 f7 7f 00 00 e8 cf c5 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb d0 1e 61 c7 f7 7f 00 00 48 b8 d0 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d8 1e 61 c7 f7 7f 00 00 48 b8 d8 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb e0 1e 61 c7 f7 7f 00 00 48 b8 e0 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 85 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb e8 1e 61 c7 f7 7f 00 00 48 b8 e8 1e 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 57 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e1 4e fc ff 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 b2 d4 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 90 1e 61 c7 f7 7f 00 00 48 b8 90 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 98 1e 61 c7 f7 7f 00 00 48 b8 98 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 52 d7 fb ff 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 03 d4 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb a0 1e 61 c7 f7 7f 00 00 48 b8 a0 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a8 1e 61 c7 f7 7f 00 00 48 b8 a8 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb b0 1e 61 c7 f7 7f 00 00 48 b8 b0 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a4 b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 15 d3 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b8 1e 61 c7 f7 7f 00 00 48 b8 b8 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb c0 1e 61 c7 f7 7f 00 00 48 b8 c0 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e4 af ff ff c5 fd 10 70 08 48 8b cd 49 bb c8 1e 61 c7 f7 7f 00 00 48 b8 c8 1e 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 fe f3 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 49 e1 ff ff 48 b9 b8 3a c7 c8 f7 7f 00 00 e8 32 d2 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 09 cd ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 d7 d1 b6 5e 48 8b f8 48 8b ce 33 d2 e8 2a 35 60 4e 48 8b d0 48 8b cf e8 47 fa 05 ff 48 8b cf e8 07 1e ae 5e cc}
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
0038h mov rcx,7ff7c8cb1278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 12 cb c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 c6 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cb1470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 14 cb c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c6 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cb1698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 16 cb c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c5 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cb1820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 18 cb c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c5 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1e 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1e 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1e 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1e 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b2 ff ff}
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
018ah call 7ff7c86be6d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 4e fc ff}
018fh mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 d4 b6 5e}
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
01e2h mov r11,7ff7c7611e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1e 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1e 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b6ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d7 fb ff}
023eh mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 d4 b6 5e}
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
0291h mov r11,7ff7c7611ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1e 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1e 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1e 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bd5f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d3 b6 5e}
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
037fh mov r11,7ff7c7611eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1e 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1e 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f4a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 af ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1e 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f3 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e1 ff ff}
040fh mov rcx,7ff7c8c73ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 3a c7 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 d2 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 cd ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 d1 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 35 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 fa 05 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 1e ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 78 1a cb c8 f7 7f 00 00 e8 39 c1 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 70 1c cb c8 f7 7f 00 00 e8 1b c1 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 98 1e cb c8 f7 7f 00 00 e8 fd c0 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 20 20 cb c8 f7 7f 00 00 e8 df c0 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 30 1f 61 c7 f7 7f 00 00 48 b8 30 1f 61 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 38 1f 61 c7 f7 7f 00 00 48 b8 38 1f 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 13 b0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 1f 61 c7 f7 7f 00 00 48 b8 40 1f 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e5 af ff ff c5 7d 10 40 08 48 8b cf 49 bb 48 1f 61 c7 f7 7f 00 00 48 b8 48 1f 61 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 b7 af ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 71 4e fc ff 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 c2 cf b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb f0 1e 61 c7 f7 7f 00 00 48 b8 f0 1e 61 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f8 1e 61 c7 f7 7f 00 00 48 b8 f8 1e 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 ae ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c2 d7 fb ff 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 13 cf b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 00 1f 61 c7 f7 7f 00 00 48 b8 00 1f 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 08 1f 61 c7 f7 7f 00 00 48 b8 08 1f 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 ae ff ff c5 fd 10 70 08 48 8b cb 49 bb 10 1f 61 c7 f7 7f 00 00 48 b8 10 1f 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 04 ae ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3a fc ff 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 25 ce b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 18 1f 61 c7 f7 7f 00 00 48 b8 18 1f 61 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 20 1f 61 c7 f7 7f 00 00 48 b8 20 1f 61 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 ad ff ff c5 fd 10 70 08 48 8b cd 49 bb 28 1f 61 c7 f7 7f 00 00 48 b8 28 1f 61 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 0e ef fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 c1 dc ff ff 48 b9 d8 f3 c5 c8 f7 7f 00 00 e8 42 cd b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 19 c8 ab 5e 48 8b f0 48 b9 70 61 97 c7 f7 7f 00 00 e8 e7 cc b6 5e 48 8b f8 48 8b ce 33 d2 e8 3a 30 60 4e 48 8b d0 48 8b cf e8 57 f5 05 ff 48 8b cf e8 17 19 ae 5e cc}
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
0038h mov rcx,7ff7c8cb1a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 1a cb c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 c1 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cb1c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 1c cb c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c1 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cb1e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 1e cb c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c0 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cb2020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 20 cb c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df c0 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7611f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 61 c7 f7 7f 00 00}
00bah mov rax,7ff7c7611f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1f 61 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7611f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 61 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7611f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1f 61 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b0 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7611f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 61 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7611f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1f 61 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 af ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7611f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 61 c7 f7 7f 00 00}
012dh mov rax,7ff7c7611f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1f 61 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 af ff ff}
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
018ah call 7ff7c86beb50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4e fc ff}
018fh mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 cf b6 5e}
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
01e2h mov r11,7ff7c7611ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 61 c7 f7 7f 00 00}
01ech mov rax,7ff7c7611ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1e 61 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7611ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 61 c7 f7 7f 00 00}
0209h mov rax,7ff7c7611ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1e 61 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ae ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86b7550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d7 fb ff}
023eh mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 cf b6 5e}
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
0291h mov r11,7ff7c7611f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 61 c7 f7 7f 00 00}
029bh mov rax,7ff7c7611f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1f 61 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7611f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 61 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7611f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1f 61 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ae ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7611f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 61 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7611f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1f 61 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ae ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86bd8e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3a fc ff}
032ch mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 ce b6 5e}
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
037fh mov r11,7ff7c7611f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 61 c7 f7 7f 00 00}
0389h mov rax,7ff7c7611f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1f 61 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7611f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 61 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7611f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1f 61 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86f4c50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ad ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7611f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 61 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7611f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1f 61 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86e8e48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e ef fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86f7c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 dc ff ff}
040fh mov rcx,7ff7c8c5f3d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f3 c5 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 cd b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c8 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7976170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 97 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 cc b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 30 60 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7759538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f5 05 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 19 ae 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
