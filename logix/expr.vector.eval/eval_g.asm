------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a8 d2 14 c8 f7 7f 00 00 e8 4c 55 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 b8 6b 18 c8 f7 7f 00 00 e8 31 55 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 a0 6c 18 c8 f7 7f 00 00 e8 16 55 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 50 6d 18 c8 f7 7f 00 00 e8 fb 54 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 f8 d3 14 c8 f7 7f 00 00 e8 e0 54 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 00 12 63 c7 f7 7f 00 00 48 b8 00 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 99 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb 08 12 63 c7 f7 7f 00 00 48 b8 08 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 71 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 78 d1 14 c8 f7 7f 00 00 e8 49 64 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e8 11 63 c7 f7 7f 00 00 48 b8 e8 11 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 78 d1 14 c8 f7 7f 00 00 e8 10 64 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb f0 11 63 c7 f7 7f 00 00 48 b8 f0 11 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 93 ff ff eb 2d 48 8b c8 49 bb f8 11 63 c7 f7 7f 00 00 48 b8 f8 11 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3 93 ff ff eb 08 48 8b c8 e8 49 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 bb 5e 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 89 63 1f 5f 48 8b f8 48 8b ce 33 d2 e8 dc c6 c8 4e 48 8b d0 48 8b cf e8 29 90 70 ff 48 8b cf e8 b9 af 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814d2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d2 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 55 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8186bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 6b 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 55 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8186ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 6c 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 55 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8186d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 6d 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 54 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814d3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d3 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 54 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 94 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631208h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 94 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 64 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76311e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 11 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76311e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 11 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 64 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76311f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 11 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76311f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 11 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 93 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76311f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 11 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76311f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 11 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069cb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 93 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f7 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 5e 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 63 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c6 c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 90 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 af 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 78 d7 14 c8 f7 7f 00 00 e8 2c 4f 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 70 72 18 c8 f7 7f 00 00 e8 11 4f 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 58 73 18 c8 f7 7f 00 00 e8 f6 4e 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 08 74 18 c8 f7 7f 00 00 e8 db 4e 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 c8 d8 14 c8 f7 7f 00 00 e8 c0 4e 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 28 12 63 c7 f7 7f 00 00 48 b8 28 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 12 63 c7 f7 7f 00 00 48 b8 30 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 48 d6 14 c8 f7 7f 00 00 e8 29 5e 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 10 12 63 c7 f7 7f 00 00 48 b8 10 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 48 d6 14 c8 f7 7f 00 00 e8 f0 5d 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 18 12 63 c7 f7 7f 00 00 48 b8 18 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f8 8d ff ff eb 2d 48 8b c8 49 bb 20 12 63 c7 f7 7f 00 00 48 b8 20 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 8d ff ff eb 08 48 8b c8 e8 51 fa ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 9b 58 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 69 5d 1f 5f 48 8b f8 48 8b ce 33 d2 e8 bc c0 c8 4e 48 8b d0 48 8b cf e8 09 8a 70 ff 48 8b cf e8 99 a9 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814d778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d7 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 4f 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8187270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 72 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 4f 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8187358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 73 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 4e 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8187408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 74 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 4e 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814d8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d8 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 4e 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 8e ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8e ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 5e 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631210h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 5d 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8d ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631220h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069ce8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 8d ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 fa ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 58 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 5d 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc c0 c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 8a 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 a9 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 e8 db 14 c8 f7 7f 00 00 e8 1c 4d 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 28 75 18 c8 f7 7f 00 00 e8 01 4d 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 10 76 18 c8 f7 7f 00 00 e8 e6 4c 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 c0 76 18 c8 f7 7f 00 00 e8 cb 4c 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 38 dd 14 c8 f7 7f 00 00 e8 b0 4c 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 50 12 63 c7 f7 7f 00 00 48 b8 50 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b9 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 12 63 c7 f7 7f 00 00 48 b8 58 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 91 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 b8 da 14 c8 f7 7f 00 00 e8 19 5c 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 38 12 63 c7 f7 7f 00 00 48 b8 38 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 b8 da 14 c8 f7 7f 00 00 e8 e0 5b 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 40 12 63 c7 f7 7f 00 00 48 b8 40 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 08 8c ff ff eb 2d 48 8b c8 49 bb 48 12 63 c7 f7 7f 00 00 48 b8 48 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e3 8b ff ff eb 08 48 8b c8 e8 99 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 8b 56 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 59 5b 1f 5f 48 8b f8 48 8b ce 33 d2 e8 ac be c8 4e 48 8b d0 48 8b cf e8 f9 87 70 ff 48 8b cf e8 89 a7 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814dbe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 db 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 4d 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8187528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 75 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 4d 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8187610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 76 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 4c 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c81876c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 76 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 4c 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814dd38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 dd 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 4c 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8c ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8c ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 5c 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 5b 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 8c ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069d08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 8b ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c80709c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 56 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 5b 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac be c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 87 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 a7 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 58 e0 14 c8 f7 7f 00 00 e8 0c 4b 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 e0 77 18 c8 f7 7f 00 00 e8 f1 4a 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 c8 78 18 c8 f7 7f 00 00 e8 d6 4a 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 78 79 18 c8 f7 7f 00 00 e8 bb 4a 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 a8 e1 14 c8 f7 7f 00 00 e8 a0 4a 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 78 12 63 c7 f7 7f 00 00 48 b8 78 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c9 8a ff ff c5 f9 10 70 08 48 8b cf 49 bb 80 12 63 c7 f7 7f 00 00 48 b8 80 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a1 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 28 df 14 c8 f7 7f 00 00 e8 09 5a 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 60 12 63 c7 f7 7f 00 00 48 b8 60 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 28 df 14 c8 f7 7f 00 00 e8 d0 59 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 68 12 63 c7 f7 7f 00 00 48 b8 68 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 18 8a ff ff eb 2d 48 8b c8 49 bb 70 12 63 c7 f7 7f 00 00 48 b8 70 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f3 89 ff ff eb 08 48 8b c8 e8 e1 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 7b 54 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 49 59 1f 5f 48 8b f8 48 8b ce 33 d2 e8 9c bc c8 4e 48 8b d0 48 8b cf e8 e9 85 70 ff 48 8b cf e8 79 a5 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814e058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e0 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 4b 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c81877e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 77 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 4a 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c81878c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 78 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 4a 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8187978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 79 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 4a 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814e1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e1 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4a 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631278h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 8a ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631280h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 8a ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5a 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631260h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 59 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 8a ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631270h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069d28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 89 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 54 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 59 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c bc c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 85 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 a5 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c8 e4 14 c8 f7 7f 00 00 e8 fc 48 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 98 7a 18 c8 f7 7f 00 00 e8 e1 48 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 80 7b 18 c8 f7 7f 00 00 e8 c6 48 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 30 7c 18 c8 f7 7f 00 00 e8 ab 48 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 18 e6 14 c8 f7 7f 00 00 e8 90 48 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb a0 12 63 c7 f7 7f 00 00 48 b8 a0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 19 8b ff ff c5 f9 10 70 08 48 8b cf 49 bb a8 12 63 c7 f7 7f 00 00 48 b8 a8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 98 e3 14 c8 f7 7f 00 00 e8 f9 57 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 88 12 63 c7 f7 7f 00 00 48 b8 88 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 98 e3 14 c8 f7 7f 00 00 e8 c0 57 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 90 12 63 c7 f7 7f 00 00 48 b8 90 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 68 8a ff ff eb 2d 48 8b c8 49 bb 98 12 63 c7 f7 7f 00 00 48 b8 98 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 43 8a ff ff eb 08 48 8b c8 e8 29 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 6b 52 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 39 57 1f 5f 48 8b f8 48 8b ce 33 d2 e8 8c ba c8 4e 48 8b d0 48 8b cf e8 d9 83 70 ff 48 8b cf e8 69 a3 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814e4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e4 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 48 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8187a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 7a 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 48 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8187b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 7b 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 48 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8187c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7c 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 48 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814e618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e6 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 48 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76312a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76312a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 8b ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76312a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76312a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 8a ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 57 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631288h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 57 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631290h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 8a ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 8a ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f5 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 52 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 57 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ba c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 83 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 a3 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 38 e9 14 c8 f7 7f 00 00 e8 ec 46 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 50 7d 18 c8 f7 7f 00 00 e8 d1 46 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 38 7e 18 c8 f7 7f 00 00 e8 b6 46 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 e8 7e 18 c8 f7 7f 00 00 e8 9b 46 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 88 ea 14 c8 f7 7f 00 00 e8 80 46 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb c8 12 63 c7 f7 7f 00 00 48 b8 c8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 29 89 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 12 63 c7 f7 7f 00 00 48 b8 d0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 89 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 08 e8 14 c8 f7 7f 00 00 e8 e9 55 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b0 12 63 c7 f7 7f 00 00 48 b8 b0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 08 e8 14 c8 f7 7f 00 00 e8 b0 55 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb b8 12 63 c7 f7 7f 00 00 48 b8 b8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 78 88 ff ff eb 2d 48 8b c8 49 bb c0 12 63 c7 f7 7f 00 00 48 b8 c0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 88 ff ff eb 08 48 8b c8 e8 71 f3 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 5b 50 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 29 55 1f 5f 48 8b f8 48 8b ce 33 d2 e8 7c b8 c8 4e 48 8b d0 48 8b cf e8 c9 81 70 ff 48 8b cf e8 59 a1 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814e938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 e9 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 46 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8187d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7d 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 46 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8187e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 7e 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 46 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8187ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 7e 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 46 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814ea88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ea 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 46 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76312c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76312c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 89 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76312d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76312d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 89 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 55 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76312b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76312b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 55 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76312b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76312b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 88 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76312c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76312c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c8069fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 88 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 f3 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 50 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 55 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c b8 c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 81 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 a1 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 b0 4b 16 c8 f7 7f 00 00 e8 dc 44 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 08 80 18 c8 f7 7f 00 00 e8 c1 44 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 f0 80 18 c8 f7 7f 00 00 e8 a6 44 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 a0 81 18 c8 f7 7f 00 00 e8 8b 44 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 50 9d 16 c8 f7 7f 00 00 e8 70 44 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb f0 12 63 c7 f7 7f 00 00 48 b8 f0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 87 ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 12 63 c7 f7 7f 00 00 48 b8 f8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 87 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 80 4a 16 c8 f7 7f 00 00 e8 d9 53 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d8 12 63 c7 f7 7f 00 00 48 b8 d8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 80 4a 16 c8 f7 7f 00 00 e8 a0 53 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb e0 12 63 c7 f7 7f 00 00 48 b8 e0 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f8 86 ff ff eb 2d 48 8b c8 49 bb e8 12 63 c7 f7 7f 00 00 48 b8 e8 12 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 86 ff ff eb 08 48 8b c8 e8 b9 f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 4b 4e 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 19 53 1f 5f 48 8b f8 48 8b ce 33 d2 e8 6c b6 c8 4e 48 8b d0 48 8b cf e8 b9 7f 70 ff 48 8b cf e8 49 9f 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8164bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4b 16 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 44 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8188008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 80 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 44 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c81880f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 80 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 44 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c81881a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 81 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 44 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8169d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9d 16 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 44 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76312f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 12 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76312f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 12 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c806a038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 87 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76312f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 12 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76312f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 12 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c806a038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 87 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 53 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76312d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 12 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76312d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 12 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 53 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76312e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 12 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76312e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 12 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c806a038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 86 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76312e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 12 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76312e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 12 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c806a038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 86 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f1 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 4e 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 53 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c b6 c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 7f 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 9f 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a8 ed 14 c8 f7 7f 00 00 e8 cc 42 1f 5f 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 c0 82 18 c8 f7 7f 00 00 e8 b1 42 1f 5f 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 a8 83 18 c8 f7 7f 00 00 e8 96 42 1f 5f 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 58 84 18 c8 f7 7f 00 00 e8 7b 42 1f 5f 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 f8 ee 14 c8 f7 7f 00 00 e8 60 42 1f 5f 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 18 13 63 c7 f7 7f 00 00 48 b8 18 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b9 85 ff ff c5 f9 10 70 08 48 8b cf 49 bb 20 13 63 c7 f7 7f 00 00 48 b8 20 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 91 85 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 78 ec 14 c8 f7 7f 00 00 e8 c9 51 1f 5f c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 00 13 63 c7 f7 7f 00 00 48 b8 00 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 78 ec 14 c8 f7 7f 00 00 e8 90 51 1f 5f c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 08 13 63 c7 f7 7f 00 00 48 b8 08 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 08 85 ff ff eb 2d 48 8b c8 49 bb 10 13 63 c7 f7 7f 00 00 48 b8 10 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e3 84 ff ff eb 08 48 8b c8 e8 01 f0 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 3b 4c 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 09 51 1f 5f 48 8b f8 48 8b ce 33 d2 e8 5c b4 c8 4e 48 8b d0 48 8b cf e8 a9 7d 70 ff 48 8b cf e8 39 9d 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c814eda8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 ed 14 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 42 1f 5f}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c81882c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 82 18 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 42 1f 5f}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c81883a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 83 18 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 42 1f 5f}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8188458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 84 18 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 42 1f 5f}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c814eef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ee 14 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 42 1f 5f}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 13 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 13 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 85 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 13 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 13 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 85 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 51 1f 5f}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 13 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 13 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 51 1f 5f}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 13 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631308h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 13 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 85 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 13 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 13 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c806a058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 84 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8070b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f0 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 4c 14 5f}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 51 1f 5f}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b4 c8 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 7d 70 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 9d 16 5f}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 30 f8 14 c8 f7 7f 00 00 e8 b3 40 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 a8 8a 18 c8 f7 7f 00 00 e8 98 40 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 90 8b 18 c8 f7 7f 00 00 e8 7d 40 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 40 8c 18 c8 f7 7f 00 00 e8 62 40 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 80 f9 14 c8 f7 7f 00 00 e8 47 40 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 40 13 63 c7 f7 7f 00 00 48 b8 40 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b0 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 48 13 63 c7 f7 7f 00 00 48 b8 48 13 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 82 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 00 f7 14 c8 f7 7f 00 00 e8 9e 4f 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 28 13 63 c7 f7 7f 00 00 48 b8 28 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 00 f7 14 c8 f7 7f 00 00 e8 5f 4f 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 30 13 63 c7 f7 7f 00 00 48 b8 30 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e7 83 ff ff eb 2d 48 8b c8 49 bb 38 13 63 c7 f7 7f 00 00 48 b8 38 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c2 83 ff ff eb 08 48 8b c8 e8 60 ef ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fe 49 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 cc 4e 1f 5f 48 8b f8 48 8b ce 33 d2 e8 1f b2 c8 4e 48 8b d0 48 8b cf e8 6c 7b 70 ff 48 8b cf e8 fc 9a 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c814f830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 f8 14 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 40 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8188aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 8a 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 40 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8188b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8b 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 40 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8188c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 8c 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 40 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c814f980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f9 14 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 40 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 13 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631340h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 13 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 84 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 13 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 13 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 84 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 4f 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631328h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 4f 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 83 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 13 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 13 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a168h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 83 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8070d10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ef ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 49 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 4e 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b2 c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7b 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 9a 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 00 fd 14 c8 f7 7f 00 00 e8 63 3a 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 60 91 18 c8 f7 7f 00 00 e8 48 3a 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 48 92 18 c8 f7 7f 00 00 e8 2d 3a 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 f8 92 18 c8 f7 7f 00 00 e8 12 3a 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 50 fe 14 c8 f7 7f 00 00 e8 f7 39 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 68 13 63 c7 f7 7f 00 00 48 b8 68 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 90 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 13 63 c7 f7 7f 00 00 48 b8 70 13 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 62 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 4e 49 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 50 13 63 c7 f7 7f 00 00 48 b8 50 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 0f 49 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 58 13 63 c7 f7 7f 00 00 48 b8 58 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c7 7d ff ff eb 2d 48 8b c8 49 bb 60 13 63 c7 f7 7f 00 00 48 b8 60 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 7d ff ff eb 08 48 8b c8 e8 80 fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ae 43 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 7c 48 1f 5f 48 8b f8 48 8b ce 33 d2 e8 cf ab c8 4e 48 8b d0 48 8b cf e8 1c 75 70 ff 48 8b cf e8 ac 94 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c814fd00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fd 14 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 3a 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8189160h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 91 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 3a 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8189248h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 92 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 3a 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c81892f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 92 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 3a 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c814fe50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 fe 14 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 39 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 13 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 13 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 7e ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 13 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 13 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 7e ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 49 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631350h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 49 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 7d ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 13 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 13 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a198h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 7d ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8071e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 fa ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 43 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 48 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf ab c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 75 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 94 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 c8 01 16 c8 f7 7f 00 00 e8 13 38 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 18 94 18 c8 f7 7f 00 00 e8 f8 37 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 00 95 18 c8 f7 7f 00 00 e8 dd 37 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 b0 95 18 c8 f7 7f 00 00 e8 c2 37 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 18 03 16 c8 f7 7f 00 00 e8 a7 37 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 90 13 63 c7 f7 7f 00 00 48 b8 90 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 60 7c ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 13 63 c7 f7 7f 00 00 48 b8 98 13 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 32 7c ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 98 00 16 c8 f7 7f 00 00 e8 fe 46 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 78 13 63 c7 f7 7f 00 00 48 b8 78 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 98 00 16 c8 f7 7f 00 00 e8 bf 46 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 80 13 63 c7 f7 7f 00 00 48 b8 80 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 7b ff ff eb 2d 48 8b c8 49 bb 88 13 63 c7 f7 7f 00 00 48 b8 88 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 7b ff ff eb 08 48 8b c8 e8 88 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 5e 41 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 2c 46 1f 5f 48 8b f8 48 8b ce 33 d2 e8 7f a9 c8 4e 48 8b d0 48 8b cf e8 cc 72 70 ff 48 8b cf e8 5c 92 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c81601c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 01 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 38 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8189418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 94 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 37 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8189500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 95 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 37 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c81895b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 95 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 37 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8160318h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 03 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 37 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 13 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 13 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 7c ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 13 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 13 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7c ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 46 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631378h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 46 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7b ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 13 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 13 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a1b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 7b ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8071ed8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f8 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 41 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 46 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f a9 c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 72 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 92 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 38 06 16 c8 f7 7f 00 00 e8 c3 35 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 d0 96 18 c8 f7 7f 00 00 e8 a8 35 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 b8 97 18 c8 f7 7f 00 00 e8 8d 35 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 68 98 18 c8 f7 7f 00 00 e8 72 35 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 88 07 16 c8 f7 7f 00 00 e8 57 35 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb b8 13 63 c7 f7 7f 00 00 48 b8 b8 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 30 7a ff ff c5 fd 10 70 08 48 8b cf 49 bb c0 13 63 c7 f7 7f 00 00 48 b8 c0 13 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 02 7a ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 08 05 16 c8 f7 7f 00 00 e8 ae 44 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a0 13 63 c7 f7 7f 00 00 48 b8 a0 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 08 05 16 c8 f7 7f 00 00 e8 6f 44 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb a8 13 63 c7 f7 7f 00 00 48 b8 a8 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 67 79 ff ff eb 2d 48 8b c8 49 bb b0 13 63 c7 f7 7f 00 00 48 b8 b0 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 42 79 ff ff eb 08 48 8b c8 e8 90 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0e 3f 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 dc 43 1f 5f 48 8b f8 48 8b ce 33 d2 e8 2f a7 c8 4e 48 8b d0 48 8b cf e8 7c 70 70 ff 48 8b cf e8 0c 90 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8160638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 06 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 35 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c81896d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 96 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 35 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c81897b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 97 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 35 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8189868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 98 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 35 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8160788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 07 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 35 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76313b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 13 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76313b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 13 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7a ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76313c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 13 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c76313c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 13 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 7a ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 44 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76313a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c76313a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 44 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76313a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c76313a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 79 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76313b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 13 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76313b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 13 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 79 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8071f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f6 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 3f 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 43 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f a7 c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 70 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 90 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a8 0a 16 c8 f7 7f 00 00 e8 73 33 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 88 99 18 c8 f7 7f 00 00 e8 58 33 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 70 9a 18 c8 f7 7f 00 00 e8 3d 33 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 20 9b 18 c8 f7 7f 00 00 e8 22 33 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 f8 0b 16 c8 f7 7f 00 00 e8 07 33 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb e0 13 63 c7 f7 7f 00 00 48 b8 e0 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 00 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb e8 13 63 c7 f7 7f 00 00 48 b8 e8 13 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d2 77 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 78 09 16 c8 f7 7f 00 00 e8 5e 42 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb c8 13 63 c7 f7 7f 00 00 48 b8 c8 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 78 09 16 c8 f7 7f 00 00 e8 1f 42 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb d0 13 63 c7 f7 7f 00 00 48 b8 d0 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 37 77 ff ff eb 2d 48 8b c8 49 bb d8 13 63 c7 f7 7f 00 00 48 b8 d8 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 77 ff ff eb 08 48 8b c8 e8 98 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 be 3c 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 8c 41 1f 5f 48 8b f8 48 8b ce 33 d2 e8 df a4 c8 4e 48 8b d0 48 8b cf e8 2c 6e 70 ff 48 8b cf e8 bc 8d 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8160aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0a 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 33 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8189988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 99 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 33 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8189a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 9a 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 33 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8189b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9b 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 33 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8160bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 0b 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 33 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76313e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 13 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76313e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 13 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 78 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76313e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 13 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c76313e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 13 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 77 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 42 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76313c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c76313c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 42 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c76313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 77 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76313d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 13 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76313d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 13 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 77 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8071f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f4 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 3c 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 41 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df a4 c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 6e 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 8d 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 18 0f 16 c8 f7 7f 00 00 e8 23 31 1f 5f 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 40 9c 18 c8 f7 7f 00 00 e8 08 31 1f 5f 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 28 9d 18 c8 f7 7f 00 00 e8 ed 30 1f 5f 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 d8 9d 18 c8 f7 7f 00 00 e8 d2 30 1f 5f 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 68 10 16 c8 f7 7f 00 00 e8 b7 30 1f 5f 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 08 14 63 c7 f7 7f 00 00 48 b8 08 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d0 75 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 14 63 c7 f7 7f 00 00 48 b8 10 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a2 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 0e 40 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f0 13 63 c7 f7 7f 00 00 48 b8 f0 13 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 cf 3f 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb f8 13 63 c7 f7 7f 00 00 48 b8 f8 13 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 75 ff ff eb 2d 48 8b c8 49 bb 00 14 63 c7 f7 7f 00 00 48 b8 00 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e2 74 ff ff eb 08 48 8b c8 e8 a0 f2 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6e 3a 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 3c 3f 1f 5f 48 8b f8 48 8b ce 33 d2 e8 8f a2 c8 4e 48 8b d0 48 8b cf e8 dc 6b 70 ff 48 8b cf e8 6c 8b 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8160f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0f 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 31 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8189c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 9c 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 31 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8189d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 9d 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 30 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8189dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9d 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 30 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8161068h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 10 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 30 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 14 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 14 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 75 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 14 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 14 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 75 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 40 1f 5f}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76313f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 13 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c76313f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 13 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 3f 1f 5f}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76313f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 13 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c76313f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 13 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 75 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 14 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 14 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c806a218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 74 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8071fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 f2 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 3a 14 5f}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 3f 1f 5f}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a2 c8 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 6b 70 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 8b 16 5f}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 08 5a 16 c8 f7 7f 00 00 e8 d3 2e 1f 5f 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 f8 9e 18 c8 f7 7f 00 00 e8 b8 2e 1f 5f 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 e0 9f 18 c8 f7 7f 00 00 e8 9d 2e 1f 5f 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 90 a0 18 c8 f7 7f 00 00 e8 82 2e 1f 5f 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 08 ca 16 c8 f7 7f 00 00 e8 67 2e 1f 5f 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 30 14 63 c7 f7 7f 00 00 48 b8 30 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 10 74 ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 14 63 c7 f7 7f 00 00 48 b8 38 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e2 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d8 58 16 c8 f7 7f 00 00 e8 bd 3d 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 18 14 63 c7 f7 7f 00 00 48 b8 18 14 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 d8 58 16 c8 f7 7f 00 00 e8 7e 3d 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 20 14 63 c7 f7 7f 00 00 48 b8 20 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 73 ff ff eb 2d 48 8b c8 49 bb 28 14 63 c7 f7 7f 00 00 48 b8 28 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 73 ff ff eb 08 48 8b c8 e8 a7 f0 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 1d 38 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 eb 3c 1f 5f 48 8b f8 48 8b ce 33 d2 e8 3e a0 c8 4e 48 8b d0 48 8b cf e8 8b 69 70 ff 48 8b cf e8 1b 89 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8165a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 5a 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 2e 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8189ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 9e 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2e 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8189fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9f 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 2e 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c818a090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a0 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 2e 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c816ca08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ca 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 2e 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 14 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 14 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a2a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 74 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 14 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631438h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 14 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a2a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 73 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 3d 1f 5f}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7631418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 14 63 c7 f7 7f 00 00}
0145h mov rax,7ff7c7631418h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 14 63 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 3d 1f 5f}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7631420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 14 63 c7 f7 7f 00 00}
017ch mov rax,7ff7c7631420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 14 63 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c806a2a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 73 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7631428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 14 63 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7631428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 14 63 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c806a2a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 73 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c8072038h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f0 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 38 14 5f}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 3c 1f 5f}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e a0 c8 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 69 70 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 89 16 5f}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 88 13 16 c8 f7 7f 00 00 e8 83 2c 1f 5f 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 b0 a1 18 c8 f7 7f 00 00 e8 68 2c 1f 5f 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 98 a2 18 c8 f7 7f 00 00 e8 4d 2c 1f 5f 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 48 a3 18 c8 f7 7f 00 00 e8 32 2c 1f 5f 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 d8 14 16 c8 f7 7f 00 00 e8 17 2c 1f 5f 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 58 14 63 c7 f7 7f 00 00 48 b8 58 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e0 71 ff ff c5 fd 10 70 08 48 8b cf 49 bb 60 14 63 c7 f7 7f 00 00 48 b8 60 14 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b2 71 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 58 12 16 c8 f7 7f 00 00 e8 6d 3b 1f 5f c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 40 14 63 c7 f7 7f 00 00 48 b8 40 14 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 58 12 16 c8 f7 7f 00 00 e8 2e 3b 1f 5f c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 48 14 63 c7 f7 7f 00 00 48 b8 48 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 71 ff ff eb 2d 48 8b c8 49 bb 50 14 63 c7 f7 7f 00 00 48 b8 50 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 70 ff ff eb 08 48 8b c8 e8 af ee ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cd 35 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 9b 3a 1f 5f 48 8b f8 48 8b ce 33 d2 e8 ee 9d c8 4e 48 8b d0 48 8b cf e8 3b 67 70 ff 48 8b cf e8 cb 86 16 5f cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8161388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 13 16 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 2c 1f 5f}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c818a1b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a1 18 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 2c 1f 5f}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c818a298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a2 18 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 2c 1f 5f}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c818a348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 a3 18 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 2c 1f 5f}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c81614d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 14 16 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 2c 1f 5f}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 14 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631458h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 14 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 71 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 14 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 14 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 71 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 3b 1f 5f}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7631440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 14 63 c7 f7 7f 00 00}
0145h mov rax,7ff7c7631440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 14 63 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 3b 1f 5f}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7631448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 14 63 c7 f7 7f 00 00}
017ch mov rax,7ff7c7631448h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 14 63 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 71 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7631450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 14 63 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7631450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 14 63 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c806a2c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 70 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c8072090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ee ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 35 14 5f}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 3a 1f 5f}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 9d c8 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 67 70 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 86 16 5f}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 c8 a9 18 c8 f7 7f 00 00 e8 2b 26 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 c0 ab 18 c8 f7 7f 00 00 e8 0d 26 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 e8 ad 18 c8 f7 7f 00 00 e8 ef 25 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 70 af 18 c8 f7 7f 00 00 e8 d1 25 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb a8 14 63 c7 f7 7f 00 00 48 b8 a8 14 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b0 14 63 c7 f7 7f 00 00 48 b8 b0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 d0 ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 14 63 c7 f7 7f 00 00 48 b8 b8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed cf ff ff c5 f9 10 78 08 48 8b cf 49 bb c0 14 63 c7 f7 7f 00 00 48 b8 c0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 6e 44 fc ff 48 b9 78 d1 14 c8 f7 7f 00 00 e8 cf 34 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 14 63 c7 f7 7f 00 00 48 b8 68 14 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 70 14 63 c7 f7 7f 00 00 48 b8 70 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 cf ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 67 44 e7 ff 48 b9 78 d1 14 c8 f7 7f 00 00 e8 38 34 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 14 63 c7 f7 7f 00 00 48 b8 78 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 80 14 63 c7 f7 7f 00 00 48 b8 80 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 88 14 63 c7 f7 7f 00 00 48 b8 88 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 ce ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 fa db fb ff 48 b9 78 d1 14 c8 f7 7f 00 00 e8 6b 33 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 14 63 c7 f7 7f 00 00 48 b8 90 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 98 14 63 c7 f7 7f 00 00 48 b8 98 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af cd ff ff c5 f9 10 70 08 48 8b cd 49 bb a0 14 63 c7 f7 7f 00 00 48 b8 a0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f 2f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 9b f8 ff ff 48 b9 78 d1 14 c8 f7 7f 00 00 e8 ac 32 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b 2d 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 69 32 1f 5f 48 8b f8 48 8b ce 33 d2 e8 bc 95 c8 4e 48 8b d0 48 8b cf e8 09 5f 70 ff 48 8b cf e8 99 7e 16 5f cc}
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
0026h mov rcx,7ff7c818a9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a9 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 26 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818abc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 ab 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 26 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818ade8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 ad 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 25 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818af70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 af 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 25 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 14 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76314a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 14 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76314b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 14 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76314b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 14 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d0 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 14 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c76314b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 14 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76314c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 14 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c76314c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 14 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 cf ff ff}
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
015dh call 7ff7c8037c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 44 fc ff}
0162h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 34 1f 5f}
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
019dh mov r11,7ff7c7631468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 14 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 14 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 14 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631470h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 14 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 cf ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee7cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 44 e7 ff}
01f9h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 34 1f 5f}
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
0237h mov r11,7ff7c7631478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 14 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 14 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 14 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 14 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 14 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631488h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 14 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 ce ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c8031530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa db fb ff}
02c6h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 33 1f 5f}
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
0304h mov r11,7ff7c7631490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 14 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 14 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 14 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 14 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8070760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76314a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 14 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c76314a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 14 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 2f ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f8 ff ff}
0385h mov rcx,7ff7c814d178h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d1 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 32 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 2d 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 32 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 95 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5f 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 7e 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 bb 18 c8 f7 7f 00 00 e8 eb 21 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 bd 18 c8 f7 7f 00 00 e8 cd 21 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 bf 18 c8 f7 7f 00 00 e8 af 21 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 c0 18 c8 f7 7f 00 00 e8 91 21 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 08 15 63 c7 f7 7f 00 00 48 b8 08 15 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 10 15 63 c7 f7 7f 00 00 48 b8 10 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 d1 ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 15 63 c7 f7 7f 00 00 48 b8 18 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cd d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 20 15 63 c7 f7 7f 00 00 48 b8 20 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ae 40 fc ff 48 b9 48 d6 14 c8 f7 7f 00 00 e8 8f 30 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 14 63 c7 f7 7f 00 00 48 b8 c8 14 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d0 14 63 c7 f7 7f 00 00 48 b8 d0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 77 45 e7 ff 48 b9 48 d6 14 c8 f7 7f 00 00 e8 f8 2f 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 14 63 c7 f7 7f 00 00 48 b8 d8 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e0 14 63 c7 f7 7f 00 00 48 b8 e0 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb e8 14 63 c7 f7 7f 00 00 48 b8 e8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 aa de fb ff 48 b9 48 d6 14 c8 f7 7f 00 00 e8 2b 2f 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 14 63 c7 f7 7f 00 00 48 b8 f0 14 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f8 14 63 c7 f7 7f 00 00 48 b8 f8 14 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f cf ff ff c5 f9 10 70 08 48 8b cd 49 bb 00 15 63 c7 f7 7f 00 00 48 b8 00 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f 2b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 f4 ff ff 48 b9 48 d6 14 c8 f7 7f 00 00 e8 6c 2e 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 5b 29 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 29 2e 1f 5f 48 8b f8 48 8b ce 33 d2 e8 7c 91 c8 4e 48 8b d0 48 8b cf e8 c9 5a 70 ff 48 8b cf e8 59 7a 16 5f cc}
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
0026h mov rcx,7ff7c818bb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 bb 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 21 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818bd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 bd 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 21 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818bf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 bf 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 21 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818c0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c0 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 21 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 15 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 15 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 15 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631510h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 15 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 d1 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 15 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 15 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d1 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 15 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631520h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 15 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 d1 ff ff}
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
015dh call 7ff7c8037cc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 40 fc ff}
0162h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 30 1f 5f}
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
019dh mov r11,7ff7c76314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 14 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76314c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 14 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76314d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 14 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76314d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 14 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 d0 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee8220h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 45 e7 ff}
01f9h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 2f 1f 5f}
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
0237h mov r11,7ff7c76314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 14 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c76314d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 14 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76314e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 14 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c76314e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 14 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c d0 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 14 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c76314e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 14 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 d0 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c8031c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa de fb ff}
02c6h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 2f 1f 5f}
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
0304h mov r11,7ff7c76314f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 14 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c76314f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 14 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76314f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 14 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c76314f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 14 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8070d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cf ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 15 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 15 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 2b ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073328h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 f4 ff ff}
0385h mov rcx,7ff7c814d648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d6 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 2e 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 29 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 2e 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 91 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 5a 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 7a 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 c3 18 c8 f7 7f 00 00 e8 ab 1d 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 c5 18 c8 f7 7f 00 00 e8 8d 1d 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 c7 18 c8 f7 7f 00 00 e8 6f 1d 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 c8 18 c8 f7 7f 00 00 e8 51 1d 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 68 15 63 c7 f7 7f 00 00 48 b8 68 15 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 70 15 63 c7 f7 7f 00 00 48 b8 70 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 15 63 c7 f7 7f 00 00 48 b8 78 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9d cf ff ff c5 f9 10 78 08 48 8b cf 49 bb 80 15 63 c7 f7 7f 00 00 48 b8 80 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ee 3c fc ff 48 b9 b8 da 14 c8 f7 7f 00 00 e8 4f 2c 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 15 63 c7 f7 7f 00 00 48 b8 28 15 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 30 15 63 c7 f7 7f 00 00 48 b8 30 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 ce ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 87 42 e7 ff 48 b9 b8 da 14 c8 f7 7f 00 00 e8 b8 2b 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 15 63 c7 f7 7f 00 00 48 b8 38 15 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 40 15 63 c7 f7 7f 00 00 48 b8 40 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 48 15 63 c7 f7 7f 00 00 48 b8 48 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 ce ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 5a e1 fb ff 48 b9 b8 da 14 c8 f7 7f 00 00 e8 eb 2a 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 15 63 c7 f7 7f 00 00 48 b8 50 15 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 58 15 63 c7 f7 7f 00 00 48 b8 58 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 60 15 63 c7 f7 7f 00 00 48 b8 60 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cf 26 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 1b f1 ff ff 48 b9 b8 da 14 c8 f7 7f 00 00 e8 2c 2a 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b 25 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 e9 29 1f 5f 48 8b f8 48 8b ce 33 d2 e8 3c 8d c8 4e 48 8b d0 48 8b cf e8 89 56 70 ff 48 8b cf e8 19 76 16 5f cc}
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
0026h mov rcx,7ff7c818c348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c3 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 1d 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818c540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 c5 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 1d 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818c768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c7 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 1d 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818c8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 c8 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 1d 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 15 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631568h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 15 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 15 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 15 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 cf ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 15 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 15 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 15 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 15 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 cf ff ff}
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
015dh call 7ff7c8037d40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 3c fc ff}
0162h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 2c 1f 5f}
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
019dh mov r11,7ff7c7631528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 15 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 15 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 15 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 15 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 ce ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee8370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 42 e7 ff}
01f9h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 2b 1f 5f}
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
0237h mov r11,7ff7c7631538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 15 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 15 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 15 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 15 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 15 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631548h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 15 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ce ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c8032310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a e1 fb ff}
02c6h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 2a 1f 5f}
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
0304h mov r11,7ff7c7631550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 15 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 15 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 15 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 15 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8070f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 15 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 15 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 26 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f1 ff ff}
0385h mov rcx,7ff7c814dab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 da 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 2a 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 25 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 29 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 8d c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 56 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 76 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 cb 18 c8 f7 7f 00 00 e8 6b 19 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 cd 18 c8 f7 7f 00 00 e8 4d 19 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 cf 18 c8 f7 7f 00 00 e8 2f 19 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 d0 18 c8 f7 7f 00 00 e8 11 19 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb c8 15 63 c7 f7 7f 00 00 48 b8 c8 15 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d0 15 63 c7 f7 7f 00 00 48 b8 d0 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 cd ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 15 63 c7 f7 7f 00 00 48 b8 d8 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6d cd ff ff c5 f9 10 78 08 48 8b cf 49 bb e0 15 63 c7 f7 7f 00 00 48 b8 e0 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 45 cd ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 2e 39 fc ff 48 b9 28 df 14 c8 f7 7f 00 00 e8 0f 28 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 15 63 c7 f7 7f 00 00 48 b8 88 15 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 90 15 63 c7 f7 7f 00 00 48 b8 90 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 96 cc ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 97 43 e7 ff 48 b9 28 df 14 c8 f7 7f 00 00 e8 78 27 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 15 63 c7 f7 7f 00 00 48 b8 98 15 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a0 15 63 c7 f7 7f 00 00 48 b8 a0 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fc cb ff ff c5 f9 10 70 08 48 8b cb 49 bb a8 15 63 c7 f7 7f 00 00 48 b8 a8 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d4 cb ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 0a e4 fb ff 48 b9 28 df 14 c8 f7 7f 00 00 e8 ab 26 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 15 63 c7 f7 7f 00 00 48 b8 b0 15 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b8 15 63 c7 f7 7f 00 00 48 b8 b8 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2f cb ff ff c5 f9 10 70 08 48 8b cd 49 bb c0 15 63 c7 f7 7f 00 00 48 b8 c0 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f 22 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 43 ed ff ff 48 b9 28 df 14 c8 f7 7f 00 00 e8 ec 25 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 db 20 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 a9 25 1f 5f 48 8b f8 48 8b ce 33 d2 e8 fc 88 c8 4e 48 8b d0 48 8b cf e8 49 52 70 ff 48 8b cf e8 d9 71 16 5f cc}
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
0026h mov rcx,7ff7c818cb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 cb 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 19 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818cd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 cd 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 19 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818cf68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 cf 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 19 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818d0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d0 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 19 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76315c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 15 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76315c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 15 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76315d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 15 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76315d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 15 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 cd ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76315d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 15 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c76315d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 15 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d cd ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76315e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c76315e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 15 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 cd ff ff}
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
015dh call 7ff7c8037dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 39 fc ff}
0162h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 28 1f 5f}
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
019dh mov r11,7ff7c7631588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 15 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 15 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 15 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 15 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 cc ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee88c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 43 e7 ff}
01f9h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 27 1f 5f}
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
0237h mov r11,7ff7c7631598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 15 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631598h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 15 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76315a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 15 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c76315a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 15 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc cb ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76315a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 15 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c76315a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 15 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 cb ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c8032a00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a e4 fb ff}
02c6h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 26 1f 5f}
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
0304h mov r11,7ff7c76315b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 15 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c76315b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 15 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76315b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 15 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c76315b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 15 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c80711a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f cb ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76315c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 15 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c76315c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 15 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 22 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c80733f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 ed ff ff}
0385h mov rcx,7ff7c814df28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 df 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 25 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 20 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 25 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 88 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 52 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 71 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 d3 18 c8 f7 7f 00 00 e8 2b 15 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 d5 18 c8 f7 7f 00 00 e8 0d 15 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 d7 18 c8 f7 7f 00 00 e8 ef 14 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 d8 18 c8 f7 7f 00 00 e8 d1 14 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 28 16 63 c7 f7 7f 00 00 48 b8 28 16 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 30 16 63 c7 f7 7f 00 00 48 b8 30 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 65 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 38 16 63 c7 f7 7f 00 00 48 b8 38 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3d cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 40 16 63 c7 f7 7f 00 00 48 b8 40 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 6e 35 fc ff 48 b9 98 e3 14 c8 f7 7f 00 00 e8 cf 23 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 15 63 c7 f7 7f 00 00 48 b8 e8 15 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f0 15 63 c7 f7 7f 00 00 48 b8 f0 15 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 66 ca ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 a7 40 e7 ff 48 b9 98 e3 14 c8 f7 7f 00 00 e8 38 23 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 15 63 c7 f7 7f 00 00 48 b8 f8 15 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 00 16 63 c7 f7 7f 00 00 48 b8 00 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cc c9 ff ff c5 f9 10 70 08 48 8b cb 49 bb 08 16 63 c7 f7 7f 00 00 48 b8 08 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a4 c9 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ba e6 fb ff 48 b9 98 e3 14 c8 f7 7f 00 00 e8 6b 22 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 16 63 c7 f7 7f 00 00 48 b8 10 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 18 16 63 c7 f7 7f 00 00 48 b8 18 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ff c8 ff ff c5 f9 10 70 08 48 8b cd 49 bb 20 16 63 c7 f7 7f 00 00 48 b8 20 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f 1e ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 6b e9 ff ff 48 b9 98 e3 14 c8 f7 7f 00 00 e8 ac 21 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b 1c 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 69 21 1f 5f 48 8b f8 48 8b ce 33 d2 e8 bc 84 c8 4e 48 8b d0 48 8b cf e8 09 4e 70 ff 48 8b cf e8 99 6d 16 5f cc}
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
0026h mov rcx,7ff7c818d348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d3 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 15 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818d540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 d5 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 15 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818d768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d7 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 14 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818d8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d8 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 14 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 16 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 16 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cb ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 16 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d cb ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 16 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 cb ff ff}
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
015dh call 7ff7c8037e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 35 fc ff}
0162h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 23 1f 5f}
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
019dh mov r11,7ff7c76315e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76315e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 15 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76315f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76315f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 15 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 ca ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee8a10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 40 e7 ff}
01f9h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 23 1f 5f}
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
0237h mov r11,7ff7c76315f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c76315f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 15 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 16 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c9 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 16 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 c9 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c80330f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba e6 fb ff}
02c6h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 22 1f 5f}
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
0304h mov r11,7ff7c7631610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 16 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 16 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c80713b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff c8 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 16 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 1e ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b e9 ff ff}
0385h mov rcx,7ff7c814e398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e3 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 21 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 1c 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 21 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 84 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 4e 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 6d 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 db 18 c8 f7 7f 00 00 e8 eb 10 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 dd 18 c8 f7 7f 00 00 e8 cd 10 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 df 18 c8 f7 7f 00 00 e8 af 10 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 e0 18 c8 f7 7f 00 00 e8 91 10 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 88 16 63 c7 f7 7f 00 00 48 b8 88 16 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 90 16 63 c7 f7 7f 00 00 48 b8 90 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 35 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 98 16 63 c7 f7 7f 00 00 48 b8 98 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0d c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb a0 16 63 c7 f7 7f 00 00 48 b8 a0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e5 c8 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ae 31 fc ff 48 b9 08 e8 14 c8 f7 7f 00 00 e8 8f 1f 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 16 63 c7 f7 7f 00 00 48 b8 48 16 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 50 16 63 c7 f7 7f 00 00 48 b8 50 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 36 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 41 e7 ff 48 b9 08 e8 14 c8 f7 7f 00 00 e8 f8 1e 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 16 63 c7 f7 7f 00 00 48 b8 58 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 60 16 63 c7 f7 7f 00 00 48 b8 60 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9c c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 68 16 63 c7 f7 7f 00 00 48 b8 68 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 74 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 6a e9 fb ff 48 b9 08 e8 14 c8 f7 7f 00 00 e8 2b 1e 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 16 63 c7 f7 7f 00 00 48 b8 70 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 78 16 63 c7 f7 7f 00 00 48 b8 78 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cf c6 ff ff c5 f9 10 70 08 48 8b cd 49 bb 80 16 63 c7 f7 7f 00 00 48 b8 80 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f 1a ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 93 e5 ff ff 48 b9 08 e8 14 c8 f7 7f 00 00 e8 6c 1d 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 5b 18 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 29 1d 1f 5f 48 8b f8 48 8b ce 33 d2 e8 7c 80 c8 4e 48 8b d0 48 8b cf e8 c9 49 70 ff 48 8b cf e8 59 69 16 5f cc}
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
0026h mov rcx,7ff7c818db48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 db 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 10 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818dd40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 dd 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 10 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818df68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 df 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 10 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818e0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e0 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 10 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 16 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 16 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 16 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d c9 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76316a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c76316a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 16 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 c8 ff ff}
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
015dh call 7ff7c8037ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 31 fc ff}
0162h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 1f 1f 5f}
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
019dh mov r11,7ff7c7631648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 16 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 16 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee8f60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 41 e7 ff}
01f9h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 1e 1f 5f}
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
0237h mov r11,7ff7c7631658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 16 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 16 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 16 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c80337e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a e9 fb ff}
02c6h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 1e 1f 5f}
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
0304h mov r11,7ff7c7631670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 16 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 16 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c80715c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c6 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 16 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 1a ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c80734c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 e5 ff ff}
0385h mov rcx,7ff7c814e808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e8 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 1d 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 18 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 1d 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 80 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 49 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 69 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 e3 18 c8 f7 7f 00 00 e8 ab 0c 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 e5 18 c8 f7 7f 00 00 e8 8d 0c 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 e7 18 c8 f7 7f 00 00 e8 6f 0c 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 e8 18 c8 f7 7f 00 00 e8 51 0c 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb e8 16 63 c7 f7 7f 00 00 48 b8 e8 16 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f0 16 63 c7 f7 7f 00 00 48 b8 f0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 05 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 16 63 c7 f7 7f 00 00 48 b8 f8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dd c6 ff ff c5 f9 10 78 08 48 8b cf 49 bb 00 17 63 c7 f7 7f 00 00 48 b8 00 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ee 2d fc ff 48 b9 80 4a 16 c8 f7 7f 00 00 e8 4f 1b 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 16 63 c7 f7 7f 00 00 48 b8 a8 16 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b0 16 63 c7 f7 7f 00 00 48 b8 b0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 3e e7 ff 48 b9 80 4a 16 c8 f7 7f 00 00 e8 b8 1a 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 16 63 c7 f7 7f 00 00 48 b8 b8 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c0 16 63 c7 f7 7f 00 00 48 b8 c0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6c c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb c8 16 63 c7 f7 7f 00 00 48 b8 c8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 1a ec fb ff 48 b9 80 4a 16 c8 f7 7f 00 00 e8 eb 19 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 16 63 c7 f7 7f 00 00 48 b8 d0 16 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d8 16 63 c7 f7 7f 00 00 48 b8 d8 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9f c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb e0 16 63 c7 f7 7f 00 00 48 b8 e0 16 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cf 15 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 bb e1 ff ff 48 b9 80 4a 16 c8 f7 7f 00 00 e8 2c 19 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b 14 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 e9 18 1f 5f 48 8b f8 48 8b ce 33 d2 e8 3c 7c c8 4e 48 8b d0 48 8b cf e8 89 45 70 ff 48 8b cf e8 19 65 16 5f cc}
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
0026h mov rcx,7ff7c818e348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 e3 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 0c 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818e540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 e5 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 0c 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818e768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e7 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 0c 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818e8f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e8 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 0c 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76316e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76316e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 16 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76316f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76316f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 16 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 c7 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76316f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c76316f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 16 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c6 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 17 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 c6 ff ff}
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
015dh call 7ff7c8037f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 2d fc ff}
0162h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 1b 1f 5f}
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
019dh mov r11,7ff7c76316a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76316a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 16 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76316b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76316b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 16 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 c6 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee90b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 3e e7 ff}
01f9h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 1a 1f 5f}
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
0237h mov r11,7ff7c76316b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c76316b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 16 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76316c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c76316c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 16 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76316c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c76316c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 16 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c8033ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ec fb ff}
02c6h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 19 1f 5f}
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
0304h mov r11,7ff7c76316d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c76316d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 16 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76316d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c76316d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 16 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c80717d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76316e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c76316e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 16 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 15 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb e1 ff ff}
0385h mov rcx,7ff7c8164a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 4a 16 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 19 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 14 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 18 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 7c c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 45 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 65 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 48 eb 18 c8 f7 7f 00 00 e8 6b 08 1f 5f 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 40 ed 18 c8 f7 7f 00 00 e8 4d 08 1f 5f 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 68 ef 18 c8 f7 7f 00 00 e8 2f 08 1f 5f 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 f0 f0 18 c8 f7 7f 00 00 e8 11 08 1f 5f 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 48 17 63 c7 f7 7f 00 00 48 b8 48 17 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 50 17 63 c7 f7 7f 00 00 48 b8 50 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d5 c4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 17 63 c7 f7 7f 00 00 48 b8 58 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ad c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 60 17 63 c7 f7 7f 00 00 48 b8 60 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 85 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 2e 2a fc ff 48 b9 78 ec 14 c8 f7 7f 00 00 e8 0f 17 1f 5f c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 17 63 c7 f7 7f 00 00 48 b8 08 17 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 10 17 63 c7 f7 7f 00 00 48 b8 10 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d6 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 d7 3f e7 ff 48 b9 78 ec 14 c8 f7 7f 00 00 e8 78 16 1f 5f c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 17 63 c7 f7 7f 00 00 48 b8 18 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 20 17 63 c7 f7 7f 00 00 48 b8 20 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 3c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb 28 17 63 c7 f7 7f 00 00 48 b8 28 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 14 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ca ee fb ff 48 b9 78 ec 14 c8 f7 7f 00 00 e8 ab 15 1f 5f c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 17 63 c7 f7 7f 00 00 48 b8 30 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 38 17 63 c7 f7 7f 00 00 48 b8 38 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 6f c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 40 17 63 c7 f7 7f 00 00 48 b8 40 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f 11 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 e3 dd ff ff 48 b9 78 ec 14 c8 f7 7f 00 00 e8 ec 14 1f 5f c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 db 0f 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 a9 14 1f 5f 48 8b f8 48 8b ce 33 d2 e8 fc 77 c8 4e 48 8b d0 48 8b cf e8 49 41 70 ff 48 8b cf e8 d9 60 16 5f cc}
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
0026h mov rcx,7ff7c818eb48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 eb 18 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 08 1f 5f}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c818ed40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 ed 18 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 08 1f 5f}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c818ef68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 ef 18 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 08 1f 5f}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c818f0f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f0 18 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 08 1f 5f}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 17 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 17 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 c4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 17 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 17 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c4 ff ff}
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
015dh call 7ff7c8037fc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 2a fc ff}
0162h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 17 1f 5f}
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
019dh mov r11,7ff7c7631708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 17 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 17 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 c3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c7ee9600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 3f e7 ff}
01f9h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 16 1f 5f}
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
0237h mov r11,7ff7c7631718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 17 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 17 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 17 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c80345c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca ee fb ff}
02c6h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 15 1f 5f}
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
0304h mov r11,7ff7c7631730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 17 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 17 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c80719e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 17 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 11 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8073598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 dd ff ff}
0385h mov rcx,7ff7c814ec78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ec 14 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 14 1f 5f}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0f 14 5f}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 14 1f 5f}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 77 c8 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 41 70 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 60 16 5f}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 00 f9 18 c8 f7 7f 00 00 e8 09 00 1f 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 f8 fa 18 c8 f7 7f 00 00 e8 eb ff 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 20 fd 18 c8 f7 7f 00 00 e8 cd ff 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 a8 fe 18 c8 f7 7f 00 00 e8 af ff 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb a8 17 63 c7 f7 7f 00 00 48 b8 a8 17 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b0 17 63 c7 f7 7f 00 00 48 b8 b0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 be ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 17 63 c7 f7 7f 00 00 48 b8 b8 17 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 55 be ff ff c5 7d 10 40 08 48 8b cf 49 bb c0 17 63 c7 f7 7f 00 00 48 b8 c0 17 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 27 be ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 31 22 fc ff 48 b9 00 f7 14 c8 f7 7f 00 00 e8 92 0e 1f 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 17 63 c7 f7 7f 00 00 48 b8 68 17 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 70 17 63 c7 f7 7f 00 00 48 b8 70 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 bd ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 92 38 e7 ff 48 b9 00 f7 14 c8 f7 7f 00 00 e8 e3 0d 1f 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 17 63 c7 f7 7f 00 00 48 b8 78 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 80 17 63 c7 f7 7f 00 00 48 b8 80 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 bc ff ff c5 fd 10 70 08 48 8b cb 49 bb 88 17 63 c7 f7 7f 00 00 48 b8 88 17 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 74 bc ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 04 ed fb ff 48 b9 00 f7 14 c8 f7 7f 00 00 e8 f5 0c 1f 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 17 63 c7 f7 7f 00 00 48 b8 90 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 98 17 63 c7 f7 7f 00 00 48 b8 98 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 bb ff ff c5 fd 10 70 08 48 8b cd 49 bb a0 17 63 c7 f7 7f 00 00 48 b8 a0 17 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 be 08 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e1 f8 ff ff 48 b9 00 f7 14 c8 f7 7f 00 00 e8 12 0c 1f 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e9 06 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 b7 0b 1f 5f 48 8b f8 48 8b ce 33 d2 e8 0a 6f c8 4e 48 8b d0 48 8b cf e8 57 38 70 ff 48 8b cf e8 e7 57 16 5f cc}
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
0038h mov rcx,7ff7c818f900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 18 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 00 1f 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c818faf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 fa 18 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb ff 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c818fd20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fd 18 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd ff 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c818fea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 fe 18 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af ff 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76317a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c76317a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 17 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c76317b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c76317b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 17 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 be ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c76317b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c76317b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 be ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c76317c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c76317c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 17 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 be ff ff}
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
018ah call 7ff7c8038040h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 22 fc ff}
018fh mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 0e 1f 5f}
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
01e2h mov r11,7ff7c7631768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 17 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 17 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 bd ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7ee9750h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 38 e7 ff}
023eh mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 0d 1f 5f}
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
0291h mov r11,7ff7c7631778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 17 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 17 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 bc ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 17 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 bc ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8034cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ed fb ff}
032ch mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 0c 1f 5f}
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
037fh mov r11,7ff7c7631790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 17 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 17 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8071bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bb ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c76317a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c76317a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 17 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 08 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f8 ff ff}
040fh mov rcx,7ff7c814f700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f7 14 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0c 1f 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 06 14 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 0b 1f 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 6f c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 38 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 57 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 0a 19 c8 f7 7f 00 00 e8 19 fb 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 0c 19 c8 f7 7f 00 00 e8 fb fa 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 0e 19 c8 f7 7f 00 00 e8 dd fa 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 10 19 c8 f7 7f 00 00 e8 bf fa 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 08 18 63 c7 f7 7f 00 00 48 b8 08 18 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 10 18 63 c7 f7 7f 00 00 48 b8 10 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e3 bf ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 18 63 c7 f7 7f 00 00 48 b8 18 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b5 bf ff ff c5 7d 10 40 08 48 8b cf 49 bb 20 18 63 c7 f7 7f 00 00 48 b8 20 18 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 87 bf ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c1 21 fc ff 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 a2 09 1f 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 17 63 c7 f7 7f 00 00 48 b8 c8 17 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d0 17 63 c7 f7 7f 00 00 48 b8 d0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b1 be ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 02 39 e7 ff 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 f3 08 1f 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 17 63 c7 f7 7f 00 00 48 b8 d8 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e0 17 63 c7 f7 7f 00 00 48 b8 e0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 02 be ff ff c5 fd 10 70 08 48 8b cb 49 bb e8 17 63 c7 f7 7f 00 00 48 b8 e8 17 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d4 bd ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f3 fb ff 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 05 08 1f 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 17 63 c7 f7 7f 00 00 48 b8 f0 17 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f8 17 63 c7 f7 7f 00 00 48 b8 f8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 14 bd ff ff c5 fd 10 70 08 48 8b cd 49 bb 00 18 63 c7 f7 7f 00 00 48 b8 00 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ce 03 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 89 f4 ff ff 48 b9 d0 fb 14 c8 f7 7f 00 00 e8 22 07 1f 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f9 01 14 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 c7 06 1f 5f 48 8b f8 48 8b ce 33 d2 e8 1a 6a c8 4e 48 8b d0 48 8b cf e8 67 33 70 ff 48 8b cf e8 f7 52 16 5f cc}
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
0038h mov rcx,7ff7c8190aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 0a 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 fb 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8190ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 0c 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fa 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8190ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0e 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd fa 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8191050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 10 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf fa 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 18 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 18 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 bf ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 bf ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 bf ff ff}
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
018ah call 7ff7c80384c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 21 fc ff}
018fh mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 09 1f 5f}
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
01e2h mov r11,7ff7c76317c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c76317c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 17 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c76317d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c76317d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 17 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 be ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7ee9cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 39 e7 ff}
023eh mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 08 1f 5f}
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
0291h mov r11,7ff7c76317d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c76317d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 17 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c76317e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c76317e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 17 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 be ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c76317e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c76317e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 17 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 bd ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c80357b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f3 fb ff}
032ch mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 08 1f 5f}
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
037fh mov r11,7ff7c76317f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c76317f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 17 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c76317f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c76317f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8072240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 bd ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 18 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 03 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075a08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f4 ff ff}
040fh mov rcx,7ff7c814fbd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fb 14 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 07 1f 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 01 14 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 06 1f 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 6a c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 33 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 52 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 12 19 c8 f7 7f 00 00 e8 29 f6 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 14 19 c8 f7 7f 00 00 e8 0b f6 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 16 19 c8 f7 7f 00 00 e8 ed f5 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 18 19 c8 f7 7f 00 00 e8 cf f5 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 68 18 63 c7 f7 7f 00 00 48 b8 68 18 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 70 18 63 c7 f7 7f 00 00 48 b8 70 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 43 bd ff ff c5 fd 10 70 08 48 8b cf 49 bb 78 18 63 c7 f7 7f 00 00 48 b8 78 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 15 bd ff ff c5 7d 10 40 08 48 8b cf 49 bb 80 18 63 c7 f7 7f 00 00 48 b8 80 18 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 e7 bc ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 51 1d fc ff 48 b9 98 00 16 c8 f7 7f 00 00 e8 b2 04 1f 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 18 63 c7 f7 7f 00 00 48 b8 28 18 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 30 18 63 c7 f7 7f 00 00 48 b8 30 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 11 bc ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 72 39 e7 ff 48 b9 98 00 16 c8 f7 7f 00 00 e8 03 04 1f 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 18 63 c7 f7 7f 00 00 48 b8 38 18 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 40 18 63 c7 f7 7f 00 00 48 b8 40 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 62 bb ff ff c5 fd 10 70 08 48 8b cb 49 bb 48 18 63 c7 f7 7f 00 00 48 b8 48 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 34 bb ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f1 fb ff 48 b9 98 00 16 c8 f7 7f 00 00 e8 15 03 1f 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 18 63 c7 f7 7f 00 00 48 b8 50 18 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 58 18 63 c7 f7 7f 00 00 48 b8 58 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 74 ba ff ff c5 fd 10 70 08 48 8b cd 49 bb 60 18 63 c7 f7 7f 00 00 48 b8 60 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 de fe fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 01 f0 ff ff 48 b9 98 00 16 c8 f7 7f 00 00 e8 32 02 1f 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 09 fd 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 d7 01 1f 5f 48 8b f8 48 8b ce 33 d2 e8 2a 65 c8 4e 48 8b d0 48 8b cf e8 77 2e 70 ff 48 8b cf e8 07 4e 16 5f cc}
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
0038h mov rcx,7ff7c81912a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 12 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f6 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c81914a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 14 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f6 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c81916c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 16 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed f5 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8191850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 18 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f5 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 18 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 18 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 bd ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 18 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 bd ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 18 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 bc ff ff}
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
018ah call 7ff7c8038540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 1d fc ff}
018fh mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 04 1f 5f}
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
01e2h mov r11,7ff7c7631828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 18 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 18 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 bc ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eea210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 39 e7 ff}
023eh mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 04 1f 5f}
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
0291h mov r11,7ff7c7631838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 18 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 18 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bb ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 18 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 bb ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8035aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f1 fb ff}
032ch mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 03 1f 5f}
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
037fh mov r11,7ff7c7631850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 18 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 18 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8072490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 ba ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de fe fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f0 ff ff}
040fh mov rcx,7ff7c8160098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 00 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 02 1f 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 fd 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 01 1f 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 65 c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2e 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 4e 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 1a 19 c8 f7 7f 00 00 e8 39 f1 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 1c 19 c8 f7 7f 00 00 e8 1b f1 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 1e 19 c8 f7 7f 00 00 e8 fd f0 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 20 19 c8 f7 7f 00 00 e8 df f0 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb c8 18 63 c7 f7 7f 00 00 48 b8 c8 18 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d0 18 63 c7 f7 7f 00 00 48 b8 d0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a3 ba ff ff c5 fd 10 70 08 48 8b cf 49 bb d8 18 63 c7 f7 7f 00 00 48 b8 d8 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 75 ba ff ff c5 7d 10 40 08 48 8b cf 49 bb e0 18 63 c7 f7 7f 00 00 48 b8 e0 18 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 47 ba ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e1 18 fc ff 48 b9 08 05 16 c8 f7 7f 00 00 e8 c2 ff 1e 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 18 63 c7 f7 7f 00 00 48 b8 88 18 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 90 18 63 c7 f7 7f 00 00 48 b8 90 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 71 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e2 35 e7 ff 48 b9 08 05 16 c8 f7 7f 00 00 e8 13 ff 1e 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 18 63 c7 f7 7f 00 00 48 b8 98 18 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a0 18 63 c7 f7 7f 00 00 48 b8 a0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c2 b8 ff ff c5 fd 10 70 08 48 8b cb 49 bb a8 18 63 c7 f7 7f 00 00 48 b8 a8 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 94 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f3 fb ff 48 b9 08 05 16 c8 f7 7f 00 00 e8 25 fe 1e 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 18 63 c7 f7 7f 00 00 48 b8 b0 18 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b8 18 63 c7 f7 7f 00 00 48 b8 b8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d4 b7 ff ff c5 fd 10 70 08 48 8b cd 49 bb c0 18 63 c7 f7 7f 00 00 48 b8 c0 18 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 ee f9 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 79 eb ff ff 48 b9 08 05 16 c8 f7 7f 00 00 e8 42 fd 1e 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 19 f8 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 e7 fc 1e 5f 48 8b f8 48 8b ce 33 d2 e8 3a 60 c8 4e 48 8b d0 48 8b cf e8 87 29 70 ff 48 8b cf e8 17 49 16 5f cc}
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
0038h mov rcx,7ff7c8191aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 1a 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f1 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8191ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 1c 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f1 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8191ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 1e 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f0 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8192050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 20 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f0 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76318c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c76318c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 18 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c76318d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c76318d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 18 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ba ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c76318d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c76318d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 18 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 ba ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c76318e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c76318e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 18 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 ba ff ff}
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
018ah call 7ff7c80385c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 18 fc ff}
018fh mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ff 1e 5f}
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
01e2h mov r11,7ff7c7631888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 18 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 18 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 b9 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eea370h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 35 e7 ff}
023eh mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ff 1e 5f}
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
0291h mov r11,7ff7c7631898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 18 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c76318a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c76318a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 18 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 b8 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c76318a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c76318a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 18 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b8 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8036190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f3 fb ff}
032ch mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 fe 1e 5f}
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
037fh mov r11,7ff7c76318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c76318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 18 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c76318b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c76318b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 18 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c80726e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 b7 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c76318c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c76318c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 18 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee f9 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075ad8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 eb ff ff}
040fh mov rcx,7ff7c8160508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 05 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 fd 1e 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f8 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 fc 1e 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 60 c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 29 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 49 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 22 19 c8 f7 7f 00 00 e8 49 ec 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 24 19 c8 f7 7f 00 00 e8 2b ec 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 26 19 c8 f7 7f 00 00 e8 0d ec 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 28 19 c8 f7 7f 00 00 e8 ef eb 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 28 19 63 c7 f7 7f 00 00 48 b8 28 19 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 30 19 63 c7 f7 7f 00 00 48 b8 30 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 03 b8 ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 19 63 c7 f7 7f 00 00 48 b8 38 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d5 b7 ff ff c5 7d 10 40 08 48 8b cf 49 bb 40 19 63 c7 f7 7f 00 00 48 b8 40 19 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 a7 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 71 14 fc ff 48 b9 78 09 16 c8 f7 7f 00 00 e8 d2 fa 1e 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 18 63 c7 f7 7f 00 00 48 b8 e8 18 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f0 18 63 c7 f7 7f 00 00 48 b8 f0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d1 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 52 32 e7 ff 48 b9 78 09 16 c8 f7 7f 00 00 e8 23 fa 1e 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 18 63 c7 f7 7f 00 00 48 b8 f8 18 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 00 19 63 c7 f7 7f 00 00 48 b8 00 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 22 b6 ff ff c5 fd 10 70 08 48 8b cb 49 bb 08 19 63 c7 f7 7f 00 00 48 b8 08 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f4 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f1 fb ff 48 b9 78 09 16 c8 f7 7f 00 00 e8 35 f9 1e 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 19 63 c7 f7 7f 00 00 48 b8 10 19 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 18 19 63 c7 f7 7f 00 00 48 b8 18 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 b5 ff ff c5 fd 10 70 08 48 8b cd 49 bb 20 19 63 c7 f7 7f 00 00 48 b8 20 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 fe f4 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f1 e6 ff ff 48 b9 78 09 16 c8 f7 7f 00 00 e8 52 f8 1e 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 29 f3 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 f7 f7 1e 5f 48 8b f8 48 8b ce 33 d2 e8 4a 5b c8 4e 48 8b d0 48 8b cf e8 97 24 70 ff 48 8b cf e8 27 44 16 5f cc}
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
0038h mov rcx,7ff7c81922a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 22 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 ec 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c81924a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 24 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ec 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c81926c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 26 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d ec 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8192850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 28 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef eb 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 19 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 b8 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 19 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b7 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 19 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 b7 ff ff}
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
018ah call 7ff7c8038640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 14 fc ff}
018fh mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 fa 1e 5f}
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
01e2h mov r11,7ff7c76318e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c76318e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 18 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c76318f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c76318f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 18 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 b6 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eea4d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 32 e7 ff}
023eh mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 fa 1e 5f}
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
0291h mov r11,7ff7c76318f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c76318f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 18 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 19 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 b6 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 19 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 b5 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8036480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f1 fb ff}
032ch mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 f9 1e 5f}
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
037fh mov r11,7ff7c7631910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 19 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8072930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 b5 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 19 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe f4 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075b40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 e6 ff ff}
040fh mov rcx,7ff7c8160978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 09 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 f8 1e 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 f3 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f7 1e 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 5b c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 24 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 44 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 2a 19 c8 f7 7f 00 00 e8 59 e7 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 2c 19 c8 f7 7f 00 00 e8 3b e7 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 2e 19 c8 f7 7f 00 00 e8 1d e7 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 30 19 c8 f7 7f 00 00 e8 ff e6 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 88 19 63 c7 f7 7f 00 00 48 b8 88 19 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 90 19 63 c7 f7 7f 00 00 48 b8 90 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 63 b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 19 63 c7 f7 7f 00 00 48 b8 98 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 35 b5 ff ff c5 7d 10 40 08 48 8b cf 49 bb a0 19 63 c7 f7 7f 00 00 48 b8 a0 19 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 07 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 01 10 fc ff 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 e2 f5 1e 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 19 63 c7 f7 7f 00 00 48 b8 48 19 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 50 19 63 c7 f7 7f 00 00 48 b8 50 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 31 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c2 32 e7 ff 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 33 f5 1e 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 19 63 c7 f7 7f 00 00 48 b8 58 19 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 60 19 63 c7 f7 7f 00 00 48 b8 60 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 82 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 68 19 63 c7 f7 7f 00 00 48 b8 68 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 54 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f3 fb ff 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 45 f4 1e 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 19 63 c7 f7 7f 00 00 48 b8 70 19 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 78 19 63 c7 f7 7f 00 00 48 b8 78 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 94 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 80 19 63 c7 f7 7f 00 00 48 b8 80 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 0e f0 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 e2 ff ff 48 b9 e8 0d 16 c8 f7 7f 00 00 e8 62 f3 1e 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 39 ee 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 07 f3 1e 5f 48 8b f8 48 8b ce 33 d2 e8 5a 56 c8 4e 48 8b d0 48 8b cf e8 a7 1f 70 ff 48 8b cf e8 37 3f 16 5f cc}
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
0038h mov rcx,7ff7c8192aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 2a 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e7 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8192ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 2c 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b e7 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8192ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 2e 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d e7 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8193050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 30 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff e6 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 19 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 19 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 b5 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 19 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 b5 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c76319a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c76319a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 19 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 b5 ff ff}
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
018ah call 7ff7c80386c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 10 fc ff}
018fh mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 f5 1e 5f}
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
01e2h mov r11,7ff7c7631948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 19 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 19 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 b4 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eeaa30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 32 e7 ff}
023eh mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 f5 1e 5f}
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
0291h mov r11,7ff7c7631958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 19 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 19 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 b3 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 19 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 b3 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8036b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f3 fb ff}
032ch mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 f4 1e 5f}
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
037fh mov r11,7ff7c7631970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 19 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 19 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8072b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 94 b2 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 19 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e f0 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075ba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e2 ff ff}
040fh mov rcx,7ff7c8160de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0d 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 f3 1e 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 ee 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f3 1e 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 56 c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 1f 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 3f 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 32 19 c8 f7 7f 00 00 e8 69 e2 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 34 19 c8 f7 7f 00 00 e8 4b e2 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 36 19 c8 f7 7f 00 00 e8 2d e2 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 38 19 c8 f7 7f 00 00 e8 0f e2 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb e8 19 63 c7 f7 7f 00 00 48 b8 e8 19 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f0 19 63 c7 f7 7f 00 00 48 b8 f0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3 b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 19 63 c7 f7 7f 00 00 48 b8 f8 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 95 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb 00 1a 63 c7 f7 7f 00 00 48 b8 00 1a 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 67 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 91 0b fc ff 48 b9 d8 58 16 c8 f7 7f 00 00 e8 f2 f0 1e 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 19 63 c7 f7 7f 00 00 48 b8 a8 19 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b0 19 63 c7 f7 7f 00 00 48 b8 b0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 91 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 32 2f e7 ff 48 b9 d8 58 16 c8 f7 7f 00 00 e8 43 f0 1e 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 19 63 c7 f7 7f 00 00 48 b8 b8 19 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c0 19 63 c7 f7 7f 00 00 48 b8 c0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb c8 19 63 c7 f7 7f 00 00 48 b8 c8 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b4 b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 14 f1 fb ff 48 b9 d8 58 16 c8 f7 7f 00 00 e8 55 ef 1e 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 19 63 c7 f7 7f 00 00 48 b8 d0 19 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d8 19 63 c7 f7 7f 00 00 48 b8 d8 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f4 af ff ff c5 fd 10 70 08 48 8b cd 49 bb e0 19 63 c7 f7 7f 00 00 48 b8 e0 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 1e eb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e1 dd ff ff 48 b9 d8 58 16 c8 f7 7f 00 00 e8 72 ee 1e 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 49 e9 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 17 ee 1e 5f 48 8b f8 48 8b ce 33 d2 e8 6a 51 c8 4e 48 8b d0 48 8b cf e8 b7 1a 70 ff 48 8b cf e8 47 3a 16 5f cc}
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
0038h mov rcx,7ff7c81932a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 32 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e2 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c81934a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 34 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e2 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c81936c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 36 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d e2 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8193850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 38 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f e2 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c76319e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c76319e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 19 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c76319f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c76319f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 19 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 b2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c76319f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c76319f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 19 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 b2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 b2 ff ff}
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
018ah call 7ff7c8038740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 0b fc ff}
018fh mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 f0 1e 5f}
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
01e2h mov r11,7ff7c76319a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c76319a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 19 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c76319b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c76319b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 b1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eeab90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 2f e7 ff}
023eh mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 f0 1e 5f}
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
0291h mov r11,7ff7c76319b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c76319b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 19 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c76319c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c76319c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 19 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c76319c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c76319c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 19 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 b0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8036e60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 14 f1 fb ff}
032ch mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 ef 1e 5f}
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
037fh mov r11,7ff7c76319d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c76319d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 19 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c76319d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c76319d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 19 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8072dd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 af ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c76319e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c76319e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 19 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e eb fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8075c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 dd ff ff}
040fh mov rcx,7ff7c81658d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 58 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 ee 1e 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e9 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 ee 1e 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 51 c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 1a 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 3a 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 a8 3a 19 c8 f7 7f 00 00 e8 69 d9 1e 5f 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 a0 3c 19 c8 f7 7f 00 00 e8 4b d9 1e 5f 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 c8 3e 19 c8 f7 7f 00 00 e8 2d d9 1e 5f 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 50 40 19 c8 f7 7f 00 00 e8 0f d9 1e 5f 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 48 1a 63 c7 f7 7f 00 00 48 b8 48 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 50 1a 63 c7 f7 7f 00 00 48 b8 50 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 13 ac ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 1a 63 c7 f7 7f 00 00 48 b8 58 1a 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e5 ab ff ff c5 7d 10 40 08 48 8b cf 49 bb 60 1a 63 c7 f7 7f 00 00 48 b8 60 1a 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 b7 ab ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 11 03 fc ff 48 b9 58 12 16 c8 f7 7f 00 00 e8 f2 e7 1e 5f c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 1a 63 c7 f7 7f 00 00 48 b8 08 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 10 1a 63 c7 f7 7f 00 00 48 b8 10 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 aa ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 92 27 e7 ff 48 b9 58 12 16 c8 f7 7f 00 00 e8 43 e7 1e 5f c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 1a 63 c7 f7 7f 00 00 48 b8 18 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 20 1a 63 c7 f7 7f 00 00 48 b8 20 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 aa ff ff c5 fd 10 70 08 48 8b cb 49 bb 28 1a 63 c7 f7 7f 00 00 48 b8 28 1a 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 04 aa ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 04 ef fb ff 48 b9 58 12 16 c8 f7 7f 00 00 e8 55 e6 1e 5f c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 1a 63 c7 f7 7f 00 00 48 b8 30 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 38 1a 63 c7 f7 7f 00 00 48 b8 38 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 a9 ff ff c5 fd 10 70 08 48 8b cd 49 bb 40 1a 63 c7 f7 7f 00 00 48 b8 40 1a 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 1e e2 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f1 f7 ff ff 48 b9 58 12 16 c8 f7 7f 00 00 e8 72 e5 1e 5f c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 49 e0 13 5f 48 8b f0 48 b9 70 61 99 c7 f7 7f 00 00 e8 17 e5 1e 5f 48 8b f8 48 8b ce 33 d2 e8 6a 48 c8 4e 48 8b d0 48 8b cf e8 b7 11 70 ff 48 8b cf e8 47 31 16 5f cc}
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
0038h mov rcx,7ff7c8193aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3a 19 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 d9 1e 5f}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8193ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 3c 19 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d9 1e 5f}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8193ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 3e 19 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d d9 1e 5f}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8194050h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 40 19 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d9 1e 5f}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1a 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1a 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 ac ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1a 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ab ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1a 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ab ff ff}
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
018ah call 7ff7c80387c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 03 fc ff}
018fh mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 e7 1e 5f}
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
01e2h mov r11,7ff7c7631a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 aa ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c7eeacf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 27 e7 ff}
023eh mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 e7 1e 5f}
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
0291h mov r11,7ff7c7631a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1a 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 aa ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 aa ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8037550h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ef fb ff}
032ch mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 e6 1e 5f}
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
037fh mov r11,7ff7c7631a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1a 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1a 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8073020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 a9 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1a 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c8066928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e e2 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8077f20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f7 ff ff}
040fh mov rcx,7ff7c8161258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 12 16 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 e5 1e 5f}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e0 13 5f}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7996170h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 61 99 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e5 1e 5f}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 48 c8 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c7779968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 11 70 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 31 16 5f}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
