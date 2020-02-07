------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 dc d1 c8 f7 7f 00 00 e8 fc 0f af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f0 73 d4 c8 f7 7f 00 00 e8 e1 0f af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 d8 74 d4 c8 f7 7f 00 00 e8 c6 0f af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 88 75 d4 c8 f7 7f 00 00 e8 ab 0f af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 28 de d1 c8 f7 7f 00 00 e8 90 0f af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb c0 17 63 c7 f7 7f 00 00 48 b8 c0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 39 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb c8 17 63 c7 f7 7f 00 00 48 b8 c8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 11 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 a8 db d1 c8 f7 7f 00 00 e8 f9 1e af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb a8 17 63 c7 f7 7f 00 00 48 b8 a8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 a8 db d1 c8 f7 7f 00 00 e8 c0 1e af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb b0 17 63 c7 f7 7f 00 00 48 b8 b0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 88 93 ff ff eb 2d 48 8b c8 49 bb b8 17 63 c7 f7 7f 00 00 48 b8 b8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 63 93 ff ff eb 08 48 8b c8 e8 a1 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 6b 19 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 39 1e af 5e 48 8b f8 48 8b ce 33 d2 e8 8c 81 58 4e 48 8b d0 48 8b cf e8 b1 a5 00 ff 48 8b cf e8 69 6a a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1dcd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 dc d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 0f af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d473f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 73 d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 0f af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d474d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 74 d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 0f af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d47588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 75 d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 0f af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1de28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 de d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 0f af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76317c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76317c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 17 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e1a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 94 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76317c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76317c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 17 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e1a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 94 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 1e af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76317a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76317a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 17 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 1e af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76317b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76317b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 17 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e1a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 93 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76317b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76317b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e1a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 93 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c87745f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 f7 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 19 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 1e af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 81 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 a5 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 6a a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 a8 e1 d1 c8 f7 7f 00 00 e8 ec 0d af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 a8 7a d4 c8 f7 7f 00 00 e8 d1 0d af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 90 7b d4 c8 f7 7f 00 00 e8 b6 0d af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 40 7c d4 c8 f7 7f 00 00 e8 9b 0d af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 f8 e2 d1 c8 f7 7f 00 00 e8 80 0d af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb e8 17 63 c7 f7 7f 00 00 48 b8 e8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 59 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 17 63 c7 f7 7f 00 00 48 b8 f0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 31 92 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 e9 1c af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d0 17 63 c7 f7 7f 00 00 48 b8 d0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 b0 1c af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb d8 17 63 c7 f7 7f 00 00 48 b8 d8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a8 91 ff ff eb 2d 48 8b c8 49 bb e0 17 63 c7 f7 7f 00 00 48 b8 e0 17 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 91 ff ff eb 08 48 8b c8 e8 31 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 5b 17 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 29 1c af 5e 48 8b f8 48 8b ce 33 d2 e8 7c 7f 58 4e 48 8b d0 48 8b cf e8 a1 a3 00 ff 48 8b cf e8 59 68 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1e1a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e1 d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 0d af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d47aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 7a d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 0d af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d47b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 7b d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 0d af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d47c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 7c d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 0d af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1e2f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 e2 d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 0d af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76317e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76317e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 17 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 92 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76317f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76317f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 17 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 92 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 1c af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76317d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76317d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 17 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1c af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76317d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76317d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 17 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 91 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76317e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76317e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 17 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e1d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 91 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8774690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 17 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 1c af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 7f 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 a3 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 68 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 18 e6 d1 c8 f7 7f 00 00 e8 dc 0b af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 60 7d d4 c8 f7 7f 00 00 e8 c1 0b af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 48 7e d4 c8 f7 7f 00 00 e8 a6 0b af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f8 7e d4 c8 f7 7f 00 00 e8 8b 0b af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 68 e7 d1 c8 f7 7f 00 00 e8 70 0b af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 10 18 63 c7 f7 7f 00 00 48 b8 10 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 69 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 18 63 c7 f7 7f 00 00 48 b8 18 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 41 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 d9 1a af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb f8 17 63 c7 f7 7f 00 00 48 b8 f8 17 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 a0 1a af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 00 18 63 c7 f7 7f 00 00 48 b8 00 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b8 8f ff ff eb 2d 48 8b c8 49 bb 08 18 63 c7 f7 7f 00 00 48 b8 08 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 8f ff ff eb 08 48 8b c8 e8 79 f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 4b 15 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 19 1a af 5e 48 8b f8 48 8b ce 33 d2 e8 6c 7d 58 4e 48 8b d0 48 8b cf e8 91 a1 00 ff 48 8b cf e8 49 66 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1e618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e6 d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 0b af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d47d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 0b af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d47e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7e d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 0b af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d47ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 7e d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0b af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1e768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 e7 d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 0b af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 90 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 90 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 1a af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76317f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76317f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 1a af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 8f ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e1f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 8f ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c87746e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f4 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 15 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 1a af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 7d 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 a1 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 66 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 88 ea d1 c8 f7 7f 00 00 e8 cc 09 af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 18 80 d4 c8 f7 7f 00 00 e8 b1 09 af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 00 81 d4 c8 f7 7f 00 00 e8 96 09 af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 b0 81 d4 c8 f7 7f 00 00 e8 7b 09 af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 d8 eb d1 c8 f7 7f 00 00 e8 60 09 af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 38 18 63 c7 f7 7f 00 00 48 b8 38 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 79 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 40 18 63 c7 f7 7f 00 00 48 b8 40 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 c9 18 af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 20 18 63 c7 f7 7f 00 00 48 b8 20 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 90 18 af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 28 18 63 c7 f7 7f 00 00 48 b8 28 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c8 8d ff ff eb 2d 48 8b c8 49 bb 30 18 63 c7 f7 7f 00 00 48 b8 30 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a3 8d ff ff eb 08 48 8b c8 e8 c1 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 3b 13 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 09 18 af 5e 48 8b f8 48 8b ce 33 d2 e8 5c 7b 58 4e 48 8b d0 48 8b cf e8 81 9f 00 ff 48 8b cf e8 39 64 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1ea88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 ea d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 09 af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d48018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 80 d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 09 af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d48100h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 81 d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 09 af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d481b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 81 d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 09 af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1ebd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 eb d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 09 af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 8e ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 8e ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 18 af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 18 af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 8d ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 8d ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8774740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 f2 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 13 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 18 af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 7b 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 9f 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 64 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 ee d1 c8 f7 7f 00 00 e8 bc 07 af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 d0 82 d4 c8 f7 7f 00 00 e8 a1 07 af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 b8 83 d4 c8 f7 7f 00 00 e8 86 07 af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 68 84 d4 c8 f7 7f 00 00 e8 6b 07 af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 48 f0 d1 c8 f7 7f 00 00 e8 50 07 af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 60 18 63 c7 f7 7f 00 00 48 b8 60 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 68 18 63 c7 f7 7f 00 00 48 b8 68 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 b9 16 af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 48 18 63 c7 f7 7f 00 00 48 b8 48 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 80 16 af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 50 18 63 c7 f7 7f 00 00 48 b8 50 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 8b ff ff eb 2d 48 8b c8 49 bb 58 18 63 c7 f7 7f 00 00 48 b8 58 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 8b ff ff eb 08 48 8b c8 e8 09 f1 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 2b 11 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 f9 15 af 5e 48 8b f8 48 8b ce 33 d2 e8 4c 79 58 4e 48 8b d0 48 8b cf e8 71 9d 00 ff 48 8b cf e8 29 62 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1eef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 ee d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 07 af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d482d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 82 d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 07 af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d483b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 83 d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 07 af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d48468h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 84 d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 07 af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1f048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f0 d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 07 af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 8c ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 8c ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 16 af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 18 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 16 af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8b ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e238h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8b ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8774798h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 f1 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 11 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 15 af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 79 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 9d 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 62 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 68 f3 d1 c8 f7 7f 00 00 e8 9c 01 af 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 88 85 d4 c8 f7 7f 00 00 e8 81 01 af 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 70 86 d4 c8 f7 7f 00 00 e8 66 01 af 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 20 87 d4 c8 f7 7f 00 00 e8 4b 01 af 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 b8 f4 d1 c8 f7 7f 00 00 e8 30 01 af 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 88 18 63 c7 f7 7f 00 00 48 b8 88 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 86 ff ff c5 f9 10 70 08 48 8b cf 49 bb 90 18 63 c7 f7 7f 00 00 48 b8 90 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 99 10 af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 70 18 63 c7 f7 7f 00 00 48 b8 70 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 60 10 af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 78 18 63 c7 f7 7f 00 00 48 b8 78 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 85 ff ff eb 2d 48 8b c8 49 bb 80 18 63 c7 f7 7f 00 00 48 b8 80 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 85 ff ff eb 08 48 8b c8 e8 19 eb ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 0b 0b a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 d9 0f af 5e 48 8b f8 48 8b ce 33 d2 e8 2c 73 58 4e 48 8b d0 48 8b cf e8 51 97 00 ff 48 8b cf e8 09 5c a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1f368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 f3 d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 01 af 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d48588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 85 d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 01 af 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d48670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 86 d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 01 af 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d48720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 87 d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 01 af 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1f4b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 f4 d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 01 af 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7631888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7631888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 86 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7631890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7631890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 86 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 10 af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 18 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 10 af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7631878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c7631878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 85 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7631880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c7631880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e258h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 85 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c87747c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 eb ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 0b a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 0f af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 73 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 97 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 5c a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 08 56 d3 c8 f7 7f 00 00 e8 8c ff ae 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 40 88 d4 c8 f7 7f 00 00 e8 71 ff ae 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 28 89 d4 c8 f7 7f 00 00 e8 56 ff ae 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 d8 89 d4 c8 f7 7f 00 00 e8 3b ff ae 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 a0 a5 d3 c8 f7 7f 00 00 e8 20 ff ae 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb b0 18 63 c7 f7 7f 00 00 48 b8 b0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 09 85 ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 18 63 c7 f7 7f 00 00 48 b8 b8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 84 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 89 0e af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 98 18 63 c7 f7 7f 00 00 48 b8 98 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 50 0e af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb a0 18 63 c7 f7 7f 00 00 48 b8 a0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 58 84 ff ff eb 2d 48 8b c8 49 bb a8 18 63 c7 f7 7f 00 00 48 b8 a8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 84 ff ff eb 08 48 8b c8 e8 b1 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 fb 08 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 c9 0d af 5e 48 8b f8 48 8b ce 33 d2 e8 1c 71 58 4e 48 8b d0 48 8b cf e8 41 95 00 ff 48 8b cf e8 f9 59 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d35608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 56 d3 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c ff ae 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d48840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 88 d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 ff ae 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d48928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 89 d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 ff ae 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d489d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 89 d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ff ae 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d3a5a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a5 d3 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 ff ae 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76318b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e2e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 85 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76318b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76318b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e2e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 84 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 0e af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7631898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c7631898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 18 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 0e af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76318a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76318a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e2e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 84 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76318a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76318a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e2e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 84 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c8775770h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 08 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 0d af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 71 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 95 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 59 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 f7 d1 c8 f7 7f 00 00 e8 7c fd ae 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f8 8a d4 c8 f7 7f 00 00 e8 61 fd ae 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 e0 8b d4 c8 f7 7f 00 00 e8 46 fd ae 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 90 8c d4 c8 f7 7f 00 00 e8 2b fd ae 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 28 f9 d1 c8 f7 7f 00 00 e8 10 fd ae 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb d8 18 63 c7 f7 7f 00 00 48 b8 d8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 19 83 ff ff c5 f9 10 70 08 48 8b cf 49 bb e0 18 63 c7 f7 7f 00 00 48 b8 e0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 82 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 79 0c af 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb c0 18 63 c7 f7 7f 00 00 48 b8 c0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 40 0c af 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb c8 18 63 c7 f7 7f 00 00 48 b8 c8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 68 82 ff ff eb 2d 48 8b c8 49 bb d0 18 63 c7 f7 7f 00 00 48 b8 d0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 43 82 ff ff eb 08 48 8b c8 e8 f9 f6 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 eb 06 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 b9 0b af 5e 48 8b f8 48 8b ce 33 d2 e8 0c 6f 58 4e 48 8b d0 48 8b cf e8 31 93 00 ff 48 8b cf e8 e9 57 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8d1f7d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f7 d1 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c fd ae 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8d48af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 8a d4 c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 fd ae 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8d48be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8b d4 c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fd ae 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8d48c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8c d4 c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b fd ae 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8d1f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f9 d1 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 fd ae 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76318d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 63 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76318d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 18 63 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c876e308h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 83 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76318e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 63 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76318e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 18 63 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c876e308h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 82 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 0c af 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76318c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 63 c7 f7 7f 00 00}
0123h mov rax,7ff7c76318c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 18 63 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 0c af 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76318c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 63 c7 f7 7f 00 00}
015ah mov rax,7ff7c76318c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 18 63 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c876e308h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 82 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76318d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 63 c7 f7 7f 00 00}
017fh mov rax,7ff7c76318d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 18 63 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c876e308h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 82 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c87757c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f6 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 06 a4 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 0b af 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 6f 58 4e}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 93 00 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 57 a6 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 e0 02 d3 c8 f7 7f 00 00 e8 63 fb ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 e0 92 d4 c8 f7 7f 00 00 e8 48 fb ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 c8 93 d4 c8 f7 7f 00 00 e8 2d fb ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 78 94 d4 c8 f7 7f 00 00 e8 12 fb ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 30 04 d3 c8 f7 7f 00 00 e8 f7 fa ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 00 19 63 c7 f7 7f 00 00 48 b8 00 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 40 81 ff ff c5 fd 10 70 08 48 8b cf 49 bb 08 19 63 c7 f7 7f 00 00 48 b8 08 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 12 81 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 4e 0a af 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb e8 18 63 c7 f7 7f 00 00 48 b8 e8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 0f 0a af 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb f0 18 63 c7 f7 7f 00 00 48 b8 f0 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 77 80 ff ff eb 2d 48 8b c8 49 bb f8 18 63 c7 f7 7f 00 00 48 b8 f8 18 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 80 ff ff eb 08 48 8b c8 e8 58 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ae 04 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 7c 09 af 5e 48 8b f8 48 8b ce 33 d2 e8 cf 6c 58 4e 48 8b d0 48 8b cf e8 f4 90 00 ff 48 8b cf e8 ac 55 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d302e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 02 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 fb ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d492e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 92 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 fb ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d493c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 93 d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d fb ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d49478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 94 d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 fb ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d30430h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 04 d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 fa ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 81 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 81 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 0a af 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76318e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c76318e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 18 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 0a af 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76318f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c76318f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 18 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 80 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76318f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76318f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 18 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e348h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 80 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8775958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f6 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 04 a4 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 09 af 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 6c 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 90 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 55 a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 b0 07 d3 c8 f7 7f 00 00 e8 13 f9 ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 98 99 d4 c8 f7 7f 00 00 e8 f8 f8 ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 80 9a d4 c8 f7 7f 00 00 e8 dd f8 ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 30 9b d4 c8 f7 7f 00 00 e8 c2 f8 ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 00 09 d3 c8 f7 7f 00 00 e8 a7 f8 ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 28 19 63 c7 f7 7f 00 00 48 b8 28 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 90 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 19 63 c7 f7 7f 00 00 48 b8 30 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 62 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 80 06 d3 c8 f7 7f 00 00 e8 fe 07 af 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 10 19 63 c7 f7 7f 00 00 48 b8 10 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 80 06 d3 c8 f7 7f 00 00 e8 bf 07 af 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 18 19 63 c7 f7 7f 00 00 48 b8 18 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c7 81 ff ff eb 2d 48 8b c8 49 bb 20 19 63 c7 f7 7f 00 00 48 b8 20 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 81 ff ff eb 08 48 8b c8 e8 a8 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 5e 02 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 2c 07 af 5e 48 8b f8 48 8b ce 33 d2 e8 7f 6a 58 4e 48 8b d0 48 8b cf e8 a4 8e 00 ff 48 8b cf e8 5c 53 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d307b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 07 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 f9 ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d49998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 99 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 f8 ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d49a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 9a d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd f8 ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d49b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 9b d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f8 ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d30900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 09 d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 f8 ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e6e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 82 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e6e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 82 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 07 af 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 07 af 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 19 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e6e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 81 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 19 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e6e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 81 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c87759f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f4 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 02 a4 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 07 af 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 6a 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 8e 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 53 a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 20 0c d3 c8 f7 7f 00 00 e8 c3 f6 ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 50 9c d4 c8 f7 7f 00 00 e8 a8 f6 ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 38 9d d4 c8 f7 7f 00 00 e8 8d f6 ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 e8 9d d4 c8 f7 7f 00 00 e8 72 f6 ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 70 0d d3 c8 f7 7f 00 00 e8 57 f6 ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 50 19 63 c7 f7 7f 00 00 48 b8 50 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 60 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 19 63 c7 f7 7f 00 00 48 b8 58 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 32 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 ae 05 af 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 38 19 63 c7 f7 7f 00 00 48 b8 38 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 6f 05 af 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 40 19 63 c7 f7 7f 00 00 48 b8 40 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 7f ff ff eb 2d 48 8b c8 49 bb 48 19 63 c7 f7 7f 00 00 48 b8 48 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 7f ff ff eb 08 48 8b c8 e8 b0 f2 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0e 00 a4 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 dc 04 af 5e 48 8b f8 48 8b ce 33 d2 e8 2f 68 58 4e 48 8b d0 48 8b cf e8 54 8c 00 ff 48 8b cf e8 0c 51 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d30c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 0c d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 f6 ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d49c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9c d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 f6 ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d49d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9d d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d f6 ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d49de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9d d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 f6 ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d30d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 0d d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f6 ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 80 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 80 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 05 af 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 19 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 05 af 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 19 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 7f ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 19 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e708h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 7f ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8775a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 f2 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 00 a4 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 04 af 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 68 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 8c 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 51 a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 90 10 d3 c8 f7 7f 00 00 e8 73 f4 ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 08 9f d4 c8 f7 7f 00 00 e8 58 f4 ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 f0 9f d4 c8 f7 7f 00 00 e8 3d f4 ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 a0 a0 d4 c8 f7 7f 00 00 e8 22 f4 ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 e0 11 d3 c8 f7 7f 00 00 e8 07 f4 ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 78 19 63 c7 f7 7f 00 00 48 b8 78 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 30 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb 80 19 63 c7 f7 7f 00 00 48 b8 80 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 02 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 60 0f d3 c8 f7 7f 00 00 e8 5e 03 af 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 60 19 63 c7 f7 7f 00 00 48 b8 60 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 60 0f d3 c8 f7 7f 00 00 e8 1f 03 af 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 68 19 63 c7 f7 7f 00 00 48 b8 68 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 67 7d ff ff eb 2d 48 8b c8 49 bb 70 19 63 c7 f7 7f 00 00 48 b8 70 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 42 7d ff ff eb 08 48 8b c8 e8 b8 f0 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 be fd a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 8c 02 af 5e 48 8b f8 48 8b ce 33 d2 e8 df 65 58 4e 48 8b d0 48 8b cf e8 04 8a 00 ff 48 8b cf e8 bc 4e a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d31090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 10 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 f4 ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d49f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9f d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 f4 ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d49ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9f d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d f4 ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d4a0a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 a0 d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 f4 ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d311e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 11 d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f4 ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7e ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 7e ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 03 af 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 19 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 03 af 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 19 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 7d ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 19 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e728h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7d ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8775aa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 f0 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fd a3 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 02 af 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 65 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 8a 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 4e a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 00 15 d3 c8 f7 7f 00 00 e8 23 ee ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 c0 a1 d4 c8 f7 7f 00 00 e8 08 ee ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 a8 a2 d4 c8 f7 7f 00 00 e8 ed ed ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 58 a3 d4 c8 f7 7f 00 00 e8 d2 ed ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 50 16 d3 c8 f7 7f 00 00 e8 b7 ed ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb a0 19 63 c7 f7 7f 00 00 48 b8 a0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 00 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb a8 19 63 c7 f7 7f 00 00 48 b8 a8 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d2 77 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 0e fd ae 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 88 19 63 c7 f7 7f 00 00 48 b8 88 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 cf fc ae 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 90 19 63 c7 f7 7f 00 00 48 b8 90 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 37 77 ff ff eb 2d 48 8b c8 49 bb 98 19 63 c7 f7 7f 00 00 48 b8 98 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 77 ff ff eb 08 48 8b c8 e8 38 fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6e f7 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 3c fc ae 5e 48 8b f8 48 8b ce 33 d2 e8 8f 5f 58 4e 48 8b d0 48 8b cf e8 b4 83 00 ff 48 8b cf e8 6c 48 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d31500h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 15 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 ee ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d4a1c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 a1 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 ee ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d4a2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 a2 d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed ed ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d4a358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 a3 d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 ed ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d31650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 16 d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ed ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76319a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76319a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 78 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76319a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c76319a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 77 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e fd ae 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7631988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c7631988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 19 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fc ae 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7631990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c7631990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 19 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 77 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7631998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7631998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 19 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 77 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8776a78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 fa ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e f7 a3 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fc ae 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 5f 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 83 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 48 a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 70 19 d3 c8 f7 7f 00 00 e8 d3 eb ae 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 78 a4 d4 c8 f7 7f 00 00 e8 b8 eb ae 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 60 a5 d4 c8 f7 7f 00 00 e8 9d eb ae 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 10 a6 d4 c8 f7 7f 00 00 e8 82 eb ae 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 c0 1a d3 c8 f7 7f 00 00 e8 67 eb ae 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb c8 19 63 c7 f7 7f 00 00 48 b8 c8 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d0 75 ff ff c5 fd 10 70 08 48 8b cf 49 bb d0 19 63 c7 f7 7f 00 00 48 b8 d0 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a2 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 40 18 d3 c8 f7 7f 00 00 e8 be fa ae 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb b0 19 63 c7 f7 7f 00 00 48 b8 b0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 40 18 d3 c8 f7 7f 00 00 e8 7f fa ae 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb b8 19 63 c7 f7 7f 00 00 48 b8 b8 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 75 ff ff eb 2d 48 8b c8 49 bb c0 19 63 c7 f7 7f 00 00 48 b8 c0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e2 74 ff ff eb 08 48 8b c8 e8 40 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 1e f5 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 ec f9 ae 5e 48 8b f8 48 8b ce 33 d2 e8 3f 5d 58 4e 48 8b d0 48 8b cf e8 64 81 00 ff 48 8b cf e8 1c 46 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d31970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 19 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 eb ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d4a478h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 a4 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 eb ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d4a560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 a5 d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d eb ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d4a610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a6 d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 eb ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d31ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 1a d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 eb ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76319c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76319c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 75 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76319d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c76319d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 75 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be fa ae 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76319b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 63 c7 f7 7f 00 00}
0144h mov rax,7ff7c76319b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 63 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f fa ae 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76319b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 63 c7 f7 7f 00 00}
017bh mov rax,7ff7c76319b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 19 63 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c876e768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 75 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76319c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 63 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76319c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 19 63 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c876e768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 74 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c8776ad0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 f8 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e f5 a3 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f9 ae 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 5d 58 4e}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 81 00 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 46 a6 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 60 64 d3 c8 f7 7f 00 00 e8 83 e9 ae 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 30 a7 d4 c8 f7 7f 00 00 e8 68 e9 ae 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 18 a8 d4 c8 f7 7f 00 00 e8 4d e9 ae 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 c8 a8 d4 c8 f7 7f 00 00 e8 32 e9 ae 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 58 d2 d3 c8 f7 7f 00 00 e8 17 e9 ae 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb f0 19 63 c7 f7 7f 00 00 48 b8 f0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 10 74 ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 19 63 c7 f7 7f 00 00 48 b8 f8 19 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e2 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 30 63 d3 c8 f7 7f 00 00 e8 6d f8 ae 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d8 19 63 c7 f7 7f 00 00 48 b8 d8 19 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 30 63 d3 c8 f7 7f 00 00 e8 2e f8 ae 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb e0 19 63 c7 f7 7f 00 00 48 b8 e0 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 73 ff ff eb 2d 48 8b c8 49 bb e8 19 63 c7 f7 7f 00 00 48 b8 e8 19 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 73 ff ff eb 08 48 8b c8 e8 47 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cd f2 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 9b f7 ae 5e 48 8b f8 48 8b ce 33 d2 e8 ee 5a 58 4e 48 8b d0 48 8b cf e8 13 7f 00 ff 48 8b cf e8 cb 43 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d36460h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 64 d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 e9 ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d4a730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 a7 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 e9 ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d4a818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 a8 d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d e9 ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d4a8c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 a8 d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e9 ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d3d258h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d2 d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 e9 ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76319f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76319f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 19 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 74 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76319f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c76319f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 19 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 73 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d f8 ae 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c76319d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 63 c7 f7 7f 00 00}
0145h mov rax,7ff7c76319d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 19 63 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e f8 ae 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c76319e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 63 c7 f7 7f 00 00}
017ch mov rax,7ff7c76319e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 19 63 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c876e7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 73 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c76319e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 63 c7 f7 7f 00 00}
01a1h mov rax,7ff7c76319e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 19 63 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c876e7f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 73 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c8776b28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f6 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f2 a3 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f7 ae 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 5a 58 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 7f 00 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 43 a6 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 e0 1d d3 c8 f7 7f 00 00 e8 33 e7 ae 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 e8 a9 d4 c8 f7 7f 00 00 e8 18 e7 ae 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 d0 aa d4 c8 f7 7f 00 00 e8 fd e6 ae 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 80 ab d4 c8 f7 7f 00 00 e8 e2 e6 ae 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 30 1f d3 c8 f7 7f 00 00 e8 c7 e6 ae 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 18 1a 63 c7 f7 7f 00 00 48 b8 18 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e0 71 ff ff c5 fd 10 70 08 48 8b cf 49 bb 20 1a 63 c7 f7 7f 00 00 48 b8 20 1a 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b2 71 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 1d f6 ae 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 00 1a 63 c7 f7 7f 00 00 48 b8 00 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 de f5 ae 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 08 1a 63 c7 f7 7f 00 00 48 b8 08 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 71 ff ff eb 2d 48 8b c8 49 bb 10 1a 63 c7 f7 7f 00 00 48 b8 10 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f1 70 ff ff eb 08 48 8b c8 e8 4f f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 7d f0 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 4b f5 ae 5e 48 8b f8 48 8b ce 33 d2 e8 9e 58 58 4e 48 8b d0 48 8b cf e8 c3 7c 00 ff 48 8b cf e8 7b 41 a6 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8d31de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 1d d3 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 e7 ae 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8d4a9e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a9 d4 c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e7 ae 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8d4aad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 aa d4 c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd e6 ae 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8d4ab80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ab d4 c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 e6 ae 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8d31f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1f d3 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 e6 ae 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7631a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 63 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7631a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 63 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c876e818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 71 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7631a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 63 c7 f7 7f 00 00}
00dah mov rax,7ff7c7631a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1a 63 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c876e818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 71 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d f6 ae 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7631a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 63 c7 f7 7f 00 00}
0145h mov rax,7ff7c7631a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 63 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de f5 ae 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7631a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 63 c7 f7 7f 00 00}
017ch mov rax,7ff7c7631a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 63 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c876e818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 71 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7631a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 63 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7631a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 63 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c876e818h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 70 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c8776b80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f f4 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f0 a3 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f5 ae 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 58 58 4e}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 7c 00 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 41 a6 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 00 b2 d4 c8 f7 7f 00 00 e8 db e4 ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 f8 b3 d4 c8 f7 7f 00 00 e8 bd e4 ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 20 b6 d4 c8 f7 7f 00 00 e8 9f e4 ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 a8 b7 d4 c8 f7 7f 00 00 e8 81 e4 ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 68 1a 63 c7 f7 7f 00 00 48 b8 68 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 70 1a 63 c7 f7 7f 00 00 48 b8 70 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 1a 63 c7 f7 7f 00 00 48 b8 78 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb 80 1a 63 c7 f7 7f 00 00 48 b8 80 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ce 8b fc ff 48 b9 a8 db d1 c8 f7 7f 00 00 e8 7f f3 ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 1a 63 c7 f7 7f 00 00 48 b8 28 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 30 1a 63 c7 f7 7f 00 00 48 b8 30 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 a7 08 fc ff 48 b9 a8 db d1 c8 f7 7f 00 00 e8 e8 f2 ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 1a 63 c7 f7 7f 00 00 48 b8 38 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 40 1a 63 c7 f7 7f 00 00 48 b8 40 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 48 1a 63 c7 f7 7f 00 00 48 b8 48 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ca 4b fc ff 48 b9 a8 db d1 c8 f7 7f 00 00 e8 1b f2 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 1a 63 c7 f7 7f 00 00 48 b8 50 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 58 1a 63 c7 f7 7f 00 00 48 b8 58 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 60 1a 63 c7 f7 7f 00 00 48 b8 60 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e7 39 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 0b f2 ff ff 48 b9 a8 db d1 c8 f7 7f 00 00 e8 5c f1 ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 4b ec a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 19 f1 ae 5e 48 8b f8 48 8b ce 33 d2 e8 6c 54 58 4e 48 8b d0 48 8b cf e8 91 78 00 ff 48 8b cf e8 49 3d a6 5e cc}
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
0026h mov rcx,7ff7c8d4b200h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b2 d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db e4 ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4b3f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 b3 d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd e4 ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4b620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 b6 d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f e4 ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4b7a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 b7 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 e4 ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1a 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1a 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1a 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1a 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d3 ff ff}
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
015dh call 7ff7c87404f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 8b fc ff}
0162h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f3 ae 5e}
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
019dh mov r11,7ff7c7631a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1a 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 d3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 08 fc ff}
01f9h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 f2 ae 5e}
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
0237h mov r11,7ff7c7631a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1a 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1a 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d2 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1a 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d2 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873c650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 4b fc ff}
02c6h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b f2 ae 5e}
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
0304h mov r11,7ff7c7631a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1a 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1a 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8774cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d1 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1a 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 39 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8776d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f2 ff ff}
0385h mov rcx,7ff7c8d1dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c f1 ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b ec a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 f1 ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 54 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 78 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 3d a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 c3 d4 c8 f7 7f 00 00 e8 9b e0 ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 c5 d4 c8 f7 7f 00 00 e8 7d e0 ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 c7 d4 c8 f7 7f 00 00 e8 5f e0 ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 c9 d4 c8 f7 7f 00 00 e8 41 e0 ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb c8 1a 63 c7 f7 7f 00 00 48 b8 c8 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d0 1a 63 c7 f7 7f 00 00 48 b8 d0 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e5 d1 ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 1a 63 c7 f7 7f 00 00 48 b8 d8 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bd d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb e0 1a 63 c7 f7 7f 00 00 48 b8 e0 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 0e 88 fc ff 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 3f ef ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 1a 63 c7 f7 7f 00 00 48 b8 88 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 90 1a 63 c7 f7 7f 00 00 48 b8 90 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e6 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 05 fc ff 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 a8 ee ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 1a 63 c7 f7 7f 00 00 48 b8 98 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a0 1a 63 c7 f7 7f 00 00 48 b8 a0 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb a8 1a 63 c7 f7 7f 00 00 48 b8 a8 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 6a 4a fc ff 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 db ed ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 1a 63 c7 f7 7f 00 00 48 b8 b0 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b8 1a 63 c7 f7 7f 00 00 48 b8 b8 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7f cf ff ff c5 f9 10 70 08 48 8b cd 49 bb c0 1a 63 c7 f7 7f 00 00 48 b8 c0 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a7 35 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 63 ee ff ff 48 b9 78 e0 d1 c8 f7 7f 00 00 e8 1c ed ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 0b e8 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 d9 ec ae 5e 48 8b f8 48 8b ce 33 d2 e8 2c 50 58 4e 48 8b d0 48 8b cf e8 51 74 00 ff 48 8b cf e8 09 39 a6 5e cc}
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
0026h mov rcx,7ff7c8d4c380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c3 d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e0 ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4c578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 c5 d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e0 ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4c7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 c7 d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e0 ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4c928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c9 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e0 ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1a 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1a 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d1 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1a 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1a 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d1 ff ff}
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
015dh call 7ff7c8740570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 88 fc ff}
0162h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f ef ae 5e}
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
019dh mov r11,7ff7c7631a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1a 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1a 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d0 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c87383b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 05 fc ff}
01f9h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 ee ae 5e}
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
0237h mov r11,7ff7c7631a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1a 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1a 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1a 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d0 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873c930h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4a fc ff}
02c6h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db ed ae 5e}
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
0304h mov r11,7ff7c7631ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1a 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1a 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8774ec0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f cf ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1a 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 35 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8776de8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 ee ff ff}
0385h mov rcx,7ff7c8d1e078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ed ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b e8 a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ec ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 50 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 74 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 39 a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 cb d4 c8 f7 7f 00 00 e8 5b dc ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 cd d4 c8 f7 7f 00 00 e8 3d dc ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 cf d4 c8 f7 7f 00 00 e8 1f dc ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 d1 d4 c8 f7 7f 00 00 e8 01 dc ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 28 1b 63 c7 f7 7f 00 00 48 b8 28 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 30 1b 63 c7 f7 7f 00 00 48 b8 30 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb 38 1b 63 c7 f7 7f 00 00 48 b8 38 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8d cf ff ff c5 f9 10 78 08 48 8b cf 49 bb 40 1b 63 c7 f7 7f 00 00 48 b8 40 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 65 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 4e 88 fc ff 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 ff ea ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 1a 63 c7 f7 7f 00 00 48 b8 e8 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f0 1a 63 c7 f7 7f 00 00 48 b8 f0 1a 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 ce ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 02 fc ff 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 68 ea ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 1a 63 c7 f7 7f 00 00 48 b8 f8 1a 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 00 1b 63 c7 f7 7f 00 00 48 b8 00 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 08 1b 63 c7 f7 7f 00 00 48 b8 08 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f4 cd ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 0a 49 fc ff 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 9b e9 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 1b 63 c7 f7 7f 00 00 48 b8 10 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 18 1b 63 c7 f7 7f 00 00 48 b8 18 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 20 1b 63 c7 f7 7f 00 00 48 b8 20 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 67 31 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 8b ea ff ff 48 b9 e8 e4 d1 c8 f7 7f 00 00 e8 dc e8 ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 cb e3 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 99 e8 ae 5e 48 8b f8 48 8b ce 33 d2 e8 ec 4b 58 4e 48 8b d0 48 8b cf e8 11 70 00 ff 48 8b cf e8 c9 34 a6 5e cc}
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
0026h mov rcx,7ff7c8d4cb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 cb d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b dc ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4cd78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cd d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d dc ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4cfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 cf d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f dc ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4d128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d1 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 dc ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1b 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1b 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cf ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1b 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1b 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cf ff ff}
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
015dh call 7ff7c87409f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 88 fc ff}
0162h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff ea ae 5e}
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
019dh mov r11,7ff7c7631ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1a 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1a 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ce ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 02 fc ff}
01f9h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 ea ae 5e}
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
0237h mov r11,7ff7c7631af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1a 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1b 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1b 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 cd ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873cc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 49 fc ff}
02c6h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e9 ae 5e}
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
0304h mov r11,7ff7c7631b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1b 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1b 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c87750d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1b 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 31 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8776e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ea ff ff}
0385h mov rcx,7ff7c8d1e4e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 e4 d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc e8 ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb e3 a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e8 ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 4b 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 70 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 34 a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 d3 d4 c8 f7 7f 00 00 e8 0b d4 ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 d5 d4 c8 f7 7f 00 00 e8 ed d3 ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 d7 d4 c8 f7 7f 00 00 e8 cf d3 ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 d9 d4 c8 f7 7f 00 00 e8 b1 d3 ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 88 1b 63 c7 f7 7f 00 00 48 b8 88 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 90 1b 63 c7 f7 7f 00 00 48 b8 90 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 98 1b 63 c7 f7 7f 00 00 48 b8 98 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4d c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb a0 1b 63 c7 f7 7f 00 00 48 b8 a0 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 80 fc ff 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 af e2 ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 1b 63 c7 f7 7f 00 00 48 b8 48 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 50 1b 63 c7 f7 7f 00 00 48 b8 50 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 fb fb ff 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 18 e2 ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 1b 63 c7 f7 7f 00 00 48 b8 58 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 60 1b 63 c7 f7 7f 00 00 48 b8 60 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 68 1b 63 c7 f7 7f 00 00 48 b8 68 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 9a 43 fc ff 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 4b e1 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 1b 63 c7 f7 7f 00 00 48 b8 70 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 78 1b 63 c7 f7 7f 00 00 48 b8 78 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 80 1b 63 c7 f7 7f 00 00 48 b8 80 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 29 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 b3 f8 ff ff 48 b9 58 e9 d1 c8 f7 7f 00 00 e8 8c e0 ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 7b db a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 49 e0 ae 5e 48 8b f8 48 8b ce 33 d2 e8 9c 43 58 4e 48 8b d0 48 8b cf e8 c1 67 00 ff 48 8b cf e8 79 2c a6 5e cc}
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
0026h mov rcx,7ff7c8d4d380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d3 d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d4 ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4d578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d5 d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4d7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 d7 d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d3 ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4d928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 d9 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 d3 ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1b 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1b 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1b 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c9 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1b 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
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
015dh call 7ff7c8740a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 80 fc ff}
0162h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af e2 ae 5e}
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
019dh mov r11,7ff7c7631b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1b 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1b 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fb fb ff}
01f9h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 e2 ae 5e}
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
0237h mov r11,7ff7c7631b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1b 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1b 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1b 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873cef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 43 fc ff}
02c6h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e1 ae 5e}
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
0304h mov r11,7ff7c7631b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1b 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1b 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c87752e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c7 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1b 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 29 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c87784c8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 f8 ff ff}
0385h mov rcx,7ff7c8d1e958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e9 d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c e0 ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b db a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 e0 ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 43 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 67 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2c a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 db d4 c8 f7 7f 00 00 e8 cb cf ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 dd d4 c8 f7 7f 00 00 e8 ad cf ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 df d4 c8 f7 7f 00 00 e8 8f cf ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 e1 d4 c8 f7 7f 00 00 e8 71 cf ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb e8 1b 63 c7 f7 7f 00 00 48 b8 e8 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f0 1b 63 c7 f7 7f 00 00 48 b8 f0 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 45 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 1b 63 c7 f7 7f 00 00 48 b8 f8 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1d c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 00 1c 63 c7 f7 7f 00 00 48 b8 00 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 be 7c fc ff 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 6f de ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 1b 63 c7 f7 7f 00 00 48 b8 a8 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b0 1b 63 c7 f7 7f 00 00 48 b8 b0 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 d7 fc fb ff 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 d8 dd ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 1b 63 c7 f7 7f 00 00 48 b8 b8 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c0 1b 63 c7 f7 7f 00 00 48 b8 c0 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb c8 1b 63 c7 f7 7f 00 00 48 b8 c8 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 4a 46 fc ff 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 0b dd ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 1b 63 c7 f7 7f 00 00 48 b8 d0 1b 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d8 1b 63 c7 f7 7f 00 00 48 b8 d8 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb e0 1b 63 c7 f7 7f 00 00 48 b8 e0 1b 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d7 24 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 db f4 ff ff 48 b9 c8 ed d1 c8 f7 7f 00 00 e8 4c dc ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 3b d7 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 09 dc ae 5e 48 8b f8 48 8b ce 33 d2 e8 5c 3f 58 4e 48 8b d0 48 8b cf e8 81 63 00 ff 48 8b cf e8 39 28 a6 5e cc}
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
0026h mov rcx,7ff7c8d4db80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 db d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb cf ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4dd78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 dd d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cf ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4dfa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 df d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f cf ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4e128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e1 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 cf ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1b 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1b 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c7 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1b 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c7 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1c 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
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
015dh call 7ff7c8740af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 7c fc ff}
0162h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f de ae 5e}
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
019dh mov r11,7ff7c7631ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1b 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1b 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c6 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fc fb ff}
01f9h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 dd ae 5e}
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
0237h mov r11,7ff7c7631bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1b 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1b 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1b 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873d5e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 46 fc ff}
02c6h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b dd ae 5e}
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
0304h mov r11,7ff7c7631bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1b 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1b 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c87754f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1b 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 24 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8778530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db f4 ff ff}
0385h mov rcx,7ff7c8d1edc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ed d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c dc ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d7 a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 dc ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 3f 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 63 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 28 a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 e3 d4 c8 f7 7f 00 00 e8 8b cb ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 e5 d4 c8 f7 7f 00 00 e8 6d cb ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 e7 d4 c8 f7 7f 00 00 e8 4f cb ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 e9 d4 c8 f7 7f 00 00 e8 31 cb ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 48 1c 63 c7 f7 7f 00 00 48 b8 48 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 50 1c 63 c7 f7 7f 00 00 48 b8 50 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 1c 63 c7 f7 7f 00 00 48 b8 58 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 fd c8 ff ff c5 f9 10 78 08 48 8b cf 49 bb 60 1c 63 c7 f7 7f 00 00 48 b8 60 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d5 c8 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 fe 78 fc ff 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 2f da ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 1c 63 c7 f7 7f 00 00 48 b8 08 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 10 1c 63 c7 f7 7f 00 00 48 b8 10 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 26 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 e7 f9 fb ff 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 98 d9 ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 1c 63 c7 f7 7f 00 00 48 b8 18 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 20 1c 63 c7 f7 7f 00 00 48 b8 20 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8c c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb 28 1c 63 c7 f7 7f 00 00 48 b8 28 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ea 44 fc ff 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 cb d8 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 1c 63 c7 f7 7f 00 00 48 b8 30 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 38 1c 63 c7 f7 7f 00 00 48 b8 38 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bf c6 ff ff c5 f9 10 70 08 48 8b cd 49 bb 40 1c 63 c7 f7 7f 00 00 48 b8 40 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 20 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 03 f1 ff ff 48 b9 38 f2 d1 c8 f7 7f 00 00 e8 0c d8 ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 fb d2 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 c9 d7 ae 5e 48 8b f8 48 8b ce 33 d2 e8 1c 3b 58 4e 48 8b d0 48 8b cf e8 41 5f 00 ff 48 8b cf e8 f9 23 a6 5e cc}
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
0026h mov rcx,7ff7c8d4e380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e3 d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b cb ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4e578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e5 d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d cb ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4e7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 e7 d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cb ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4e928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e9 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 cb ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1c 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1c 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1c 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd c8 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1c 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 c8 ff ff}
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
015dh call 7ff7c8740b70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 78 fc ff}
0162h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f da ae 5e}
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
019dh mov r11,7ff7c7631c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1c 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1c 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f9 fb ff}
01f9h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 d9 ae 5e}
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
0237h mov r11,7ff7c7631c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1c 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1c 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1c 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873d8c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 44 fc ff}
02c6h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb d8 ae 5e}
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
0304h mov r11,7ff7c7631c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1c 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1c 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8775b10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c6 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1c 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 20 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8778598h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f1 ff ff}
0385h mov rcx,7ff7c8d1f238h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f2 d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c d8 ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb d2 a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d7 ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 3b 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 5f 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 23 a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 eb d4 c8 f7 7f 00 00 e8 4b c7 ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 ed d4 c8 f7 7f 00 00 e8 2d c7 ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 ef d4 c8 f7 7f 00 00 e8 0f c7 ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 f1 d4 c8 f7 7f 00 00 e8 f1 c6 ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb a8 1c 63 c7 f7 7f 00 00 48 b8 a8 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b0 1c 63 c7 f7 7f 00 00 48 b8 b0 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 1c 63 c7 f7 7f 00 00 48 b8 b8 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cd c6 ff ff c5 f9 10 78 08 48 8b cf 49 bb c0 1c 63 c7 f7 7f 00 00 48 b8 c0 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 3e 75 fc ff 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 ef d5 ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 1c 63 c7 f7 7f 00 00 48 b8 68 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 70 1c 63 c7 f7 7f 00 00 48 b8 70 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 f7 f6 fb ff 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 58 d5 ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 1c 63 c7 f7 7f 00 00 48 b8 78 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 80 1c 63 c7 f7 7f 00 00 48 b8 80 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb 88 1c 63 c7 f7 7f 00 00 48 b8 88 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 8a 43 fc ff 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 8b d4 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 1c 63 c7 f7 7f 00 00 48 b8 90 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 98 1c 63 c7 f7 7f 00 00 48 b8 98 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb a0 1c 63 c7 f7 7f 00 00 48 b8 a0 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 57 1c ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 2b ed ff ff 48 b9 d8 54 d3 c8 f7 7f 00 00 e8 cc d3 ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 bb ce a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 89 d3 ae 5e 48 8b f8 48 8b ce 33 d2 e8 dc 36 58 4e 48 8b d0 48 8b cf e8 01 5b 00 ff 48 8b cf e8 b9 1f a6 5e cc}
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
0026h mov rcx,7ff7c8d4eb80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 eb d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c7 ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4ed78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 ed d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c7 ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4efa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 ef d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c7 ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4f128h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f1 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 c6 ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1c 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1c 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1c 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c6 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1c 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c6 ff ff}
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
015dh call 7ff7c8740bf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 75 fc ff}
0162h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d5 ae 5e}
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
019dh mov r11,7ff7c7631c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1c 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1c 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c5 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f6 fb ff}
01f9h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 d5 ae 5e}
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
0237h mov r11,7ff7c7631c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1c 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1c 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1c 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873dba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 43 fc ff}
02c6h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b d4 ae 5e}
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
0304h mov r11,7ff7c7631c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1c 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1c 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8775d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1c 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 1c ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8778600h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b ed ff ff}
0385h mov rcx,7ff7c8d354d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 54 d3 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc d3 ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ce a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d3 ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 36 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 5b 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 1f a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 80 f3 d4 c8 f7 7f 00 00 e8 0b c3 ae 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 78 f5 d4 c8 f7 7f 00 00 e8 ed c2 ae 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 a0 f7 d4 c8 f7 7f 00 00 e8 cf c2 ae 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 28 f9 d4 c8 f7 7f 00 00 e8 b1 c2 ae 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 08 1d 63 c7 f7 7f 00 00 48 b8 08 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 10 1d 63 c7 f7 7f 00 00 48 b8 10 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 1d 63 c7 f7 7f 00 00 48 b8 18 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9d c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 20 1d 63 c7 f7 7f 00 00 48 b8 20 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 71 fc ff 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 af d1 ae 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 1c 63 c7 f7 7f 00 00 48 b8 c8 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d0 1c 63 c7 f7 7f 00 00 48 b8 d0 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 07 f4 fb ff 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 18 d1 ae 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 1c 63 c7 f7 7f 00 00 48 b8 d8 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e0 1c 63 c7 f7 7f 00 00 48 b8 e0 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb e8 1c 63 c7 f7 7f 00 00 48 b8 e8 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 2a 42 fc ff 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 4b d0 ae 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 1c 63 c7 f7 7f 00 00 48 b8 f0 1c 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f8 1c 63 c7 f7 7f 00 00 48 b8 f8 1c 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 00 1d 63 c7 f7 7f 00 00 48 b8 00 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 17 18 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 53 e9 ff ff 48 b9 a8 f6 d1 c8 f7 7f 00 00 e8 8c cf ae 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 7b ca a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 49 cf ae 5e 48 8b f8 48 8b ce 33 d2 e8 9c 32 58 4e 48 8b d0 48 8b cf e8 c1 56 00 ff 48 8b cf e8 79 1b a6 5e cc}
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
0026h mov rcx,7ff7c8d4f380h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 f3 d4 c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c3 ae 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8d4f578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f5 d4 c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c2 ae 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8d4f7a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 f7 d4 c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf c2 ae 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8d4f928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 f9 d4 c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c2 ae 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7631d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 63 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7631d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1d 63 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7631d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 63 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7631d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1d 63 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7631d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 63 c7 f7 7f 00 00}
00edh mov rax,7ff7c7631d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1d 63 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7631d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 63 c7 f7 7f 00 00}
0115h mov rax,7ff7c7631d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1d 63 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c4 ff ff}
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
015dh call 7ff7c8740c70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 71 fc ff}
0162h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d1 ae 5e}
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
019dh mov r11,7ff7c7631cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 63 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7631cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1c 63 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7631cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 63 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7631cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1c 63 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c8738f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 f4 fb ff}
01f9h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 d1 ae 5e}
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
0237h mov r11,7ff7c7631cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 63 c7 f7 7f 00 00}
0241h mov rax,7ff7c7631cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1c 63 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7631ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 63 c7 f7 7f 00 00}
025eh mov rax,7ff7c7631ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1c 63 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7631ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 63 c7 f7 7f 00 00}
0286h mov rax,7ff7c7631ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1c 63 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c873de80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 42 fc ff}
02c6h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b d0 ae 5e}
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
0304h mov r11,7ff7c7631cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 63 c7 f7 7f 00 00}
030eh mov rax,7ff7c7631cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1c 63 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7631cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 63 c7 f7 7f 00 00}
032bh mov rax,7ff7c7631cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1c 63 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c8775f30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7631d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 63 c7 f7 7f 00 00}
0353h mov rax,7ff7c7631d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1d 63 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 18 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c8778668h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 e9 ff ff}
0385h mov rcx,7ff7c8d1f6a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f6 d1 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c cf ae 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b ca a3 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 cf ae 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 32 58 4e}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 56 00 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 1b a6 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 b8 01 d7 c8 f7 7f 00 00 e8 b9 be ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 b0 03 d7 c8 f7 7f 00 00 e8 9b be ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 d8 05 d7 c8 f7 7f 00 00 e8 7d be ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 60 07 d7 c8 f7 7f 00 00 e8 5f be ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 68 1d 63 c7 f7 7f 00 00 48 b8 68 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 70 1d 63 c7 f7 7f 00 00 48 b8 70 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 c2 ff ff c5 fd 10 70 08 48 8b cf 49 bb 78 1d 63 c7 f7 7f 00 00 48 b8 78 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 55 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb 80 1d 63 c7 f7 7f 00 00 48 b8 80 1d 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 27 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 91 6d fc ff 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 42 cd ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 1d 63 c7 f7 7f 00 00 48 b8 28 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 30 1d 63 c7 f7 7f 00 00 48 b8 30 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 c1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d2 f0 fb ff 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 93 cc ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 1d 63 c7 f7 7f 00 00 48 b8 38 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 40 1d 63 c7 f7 7f 00 00 48 b8 40 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 c0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 48 1d 63 c7 f7 7f 00 00 48 b8 48 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 74 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 74 44 fc ff 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 a5 cb ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 1d 63 c7 f7 7f 00 00 48 b8 50 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 58 1d 63 c7 f7 7f 00 00 48 b8 58 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb 60 1d 63 c7 f7 7f 00 00 48 b8 60 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 56 13 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 e6 ff ff 48 b9 b0 01 d3 c8 f7 7f 00 00 e8 c2 ca ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 99 c5 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 67 ca ae 5e 48 8b f8 48 8b ce 33 d2 e8 ba 2d 58 4e 48 8b d0 48 8b cf e8 df 51 00 ff 48 8b cf e8 97 16 a6 5e cc}
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
0038h mov rcx,7ff7c8d701b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 01 d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 be ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d703b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 03 d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b be ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d705d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d be ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d70760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 07 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f be ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1d 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1d 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1d 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1d 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c2 ff ff}
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
018ah call 7ff7c8740cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6d fc ff}
018fh mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 cd ae 5e}
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
01e2h mov r11,7ff7c7631d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1d 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1d 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c87390e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 f0 fb ff}
023eh mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 cc ae 5e}
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
0291h mov r11,7ff7c7631d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1d 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1d 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1d 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873e570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 44 fc ff}
032ch mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 cb ae 5e}
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
037fh mov r11,7ff7c7631d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1d 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1d 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8776140h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bf ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1d 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 13 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c8778838h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e6 ff ff}
040fh mov rcx,7ff7c8d301b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 01 d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 ca ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 c5 a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 ca ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 2d 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 51 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 16 a6 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 13 d7 c8 f7 7f 00 00 e8 b9 b5 ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 15 d7 c8 f7 7f 00 00 e8 9b b5 ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 17 d7 c8 f7 7f 00 00 e8 7d b5 ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 18 d7 c8 f7 7f 00 00 e8 5f b5 ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb c8 1d 63 c7 f7 7f 00 00 48 b8 c8 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb d0 1d 63 c7 f7 7f 00 00 48 b8 d0 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 bb ff ff c5 fd 10 70 08 48 8b cf 49 bb d8 1d 63 c7 f7 7f 00 00 48 b8 d8 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a5 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb e0 1d 63 c7 f7 7f 00 00 48 b8 e0 1d 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 77 bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 11 65 fc ff 48 b9 80 06 d3 c8 f7 7f 00 00 e8 42 c4 ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 1d 63 c7 f7 7f 00 00 48 b8 88 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 90 1d 63 c7 f7 7f 00 00 48 b8 90 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a1 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 32 e9 fb ff 48 b9 80 06 d3 c8 f7 7f 00 00 e8 93 c3 ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 1d 63 c7 f7 7f 00 00 48 b8 98 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb a0 1d 63 c7 f7 7f 00 00 48 b8 a0 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb a8 1d 63 c7 f7 7f 00 00 48 b8 a8 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c4 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 42 fc ff 48 b9 80 06 d3 c8 f7 7f 00 00 e8 a5 c2 ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 1d 63 c7 f7 7f 00 00 48 b8 b0 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b8 1d 63 c7 f7 7f 00 00 48 b8 b8 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb c0 1d 63 c7 f7 7f 00 00 48 b8 c0 1d 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 56 0a ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 39 f8 ff ff 48 b9 80 06 d3 c8 f7 7f 00 00 e8 c2 c1 ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 99 bc a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 67 c1 ae 5e 48 8b f8 48 8b ce 33 d2 e8 ba 24 58 4e 48 8b d0 48 8b cf e8 df 48 00 ff 48 8b cf e8 97 0d a6 5e cc}
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
0038h mov rcx,7ff7c8d71338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 13 d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b5 ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d71530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 15 d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b b5 ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d71758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 17 d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d b5 ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d718e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 18 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f b5 ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1d 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1d 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bb ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1d 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bb ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1d 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
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
018ah call 7ff7c8740d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 65 fc ff}
018fh mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 c4 ae 5e}
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
01e2h mov r11,7ff7c7631d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1d 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1d 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ba ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c8739240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 e9 fb ff}
023eh mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 c3 ae 5e}
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
0291h mov r11,7ff7c7631d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1d 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1d 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b9 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1d 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b9 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873ec60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 42 fc ff}
032ch mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c2 ae 5e}
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
037fh mov r11,7ff7c7631db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1d 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1d 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8776390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b9 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1d 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 0a ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 f8 ff ff}
040fh mov rcx,7ff7c8d30680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 06 d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 c1 ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 bc a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c1 ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 24 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 48 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 0d a6 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 1b d7 c8 f7 7f 00 00 e8 c9 b0 ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 1d d7 c8 f7 7f 00 00 e8 ab b0 ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 1f d7 c8 f7 7f 00 00 e8 8d b0 ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 20 d7 c8 f7 7f 00 00 e8 6f b0 ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 28 1e 63 c7 f7 7f 00 00 48 b8 28 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 30 1e 63 c7 f7 7f 00 00 48 b8 30 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 1e 63 c7 f7 7f 00 00 48 b8 38 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 05 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 40 1e 63 c7 f7 7f 00 00 48 b8 40 1e 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 d7 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a1 60 fc ff 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 52 bf ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 1d 63 c7 f7 7f 00 00 48 b8 e8 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb f0 1d 63 c7 f7 7f 00 00 48 b8 f0 1d 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 a2 e5 fb ff 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 a3 be ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 1d 63 c7 f7 7f 00 00 48 b8 f8 1d 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 00 1e 63 c7 f7 7f 00 00 48 b8 00 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb 08 1e 63 c7 f7 7f 00 00 48 b8 08 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 24 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 40 fc ff 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 b5 bd ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 1e 63 c7 f7 7f 00 00 48 b8 10 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 18 1e 63 c7 f7 7f 00 00 48 b8 18 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 20 1e 63 c7 f7 7f 00 00 48 b8 20 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 66 05 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 b1 f3 ff ff 48 b9 f0 0a d3 c8 f7 7f 00 00 e8 d2 bc ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 a9 b7 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 77 bc ae 5e 48 8b f8 48 8b ce 33 d2 e8 ca 1f 58 4e 48 8b d0 48 8b cf e8 ef 43 00 ff 48 8b cf e8 a7 08 a6 5e cc}
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
0038h mov rcx,7ff7c8d71b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 1b d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 b0 ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d71d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 1d d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab b0 ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d71f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 1f d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b0 ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d720e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 20 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f b0 ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1e 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1e 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b9 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1e 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1e 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b8 ff ff}
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
018ah call 7ff7c8740df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 60 fc ff}
018fh mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 bf ae 5e}
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
01e2h mov r11,7ff7c7631de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1d 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b8 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c87393a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 e5 fb ff}
023eh mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 be ae 5e}
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
0291h mov r11,7ff7c7631df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1d 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1e 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1e 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b7 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873ef50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 40 fc ff}
032ch mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 bd ae 5e}
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
037fh mov r11,7ff7c7631e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1e 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1e 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c87765e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b6 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1e 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 05 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 f3 ff ff}
040fh mov rcx,7ff7c8d30af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0a d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 bc ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 b7 a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 1f 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 43 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 08 a6 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 23 d7 c8 f7 7f 00 00 e8 d9 ab ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 25 d7 c8 f7 7f 00 00 e8 bb ab ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 27 d7 c8 f7 7f 00 00 e8 9d ab ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 28 d7 c8 f7 7f 00 00 e8 7f ab ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 88 1e 63 c7 f7 7f 00 00 48 b8 88 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 90 1e 63 c7 f7 7f 00 00 48 b8 90 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 1e 63 c7 f7 7f 00 00 48 b8 98 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 65 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb a0 1e 63 c7 f7 7f 00 00 48 b8 a0 1e 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 37 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 31 5c fc ff 48 b9 60 0f d3 c8 f7 7f 00 00 e8 62 ba ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 1e 63 c7 f7 7f 00 00 48 b8 48 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 50 1e 63 c7 f7 7f 00 00 48 b8 50 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 12 e2 fb ff 48 b9 60 0f d3 c8 f7 7f 00 00 e8 b3 b9 ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 1e 63 c7 f7 7f 00 00 48 b8 58 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 60 1e 63 c7 f7 7f 00 00 48 b8 60 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 68 1e 63 c7 f7 7f 00 00 48 b8 68 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 84 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 60 0f d3 c8 f7 7f 00 00 e8 c5 b8 ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 1e 63 c7 f7 7f 00 00 48 b8 70 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 78 1e 63 c7 f7 7f 00 00 48 b8 78 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c4 b3 ff ff c5 fd 10 70 08 48 8b cd 49 bb 80 1e 63 c7 f7 7f 00 00 48 b8 80 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 76 00 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 29 ef ff ff 48 b9 60 0f d3 c8 f7 7f 00 00 e8 e2 b7 ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b9 b2 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 87 b7 ae 5e 48 8b f8 48 8b ce 33 d2 e8 da 1a 58 4e 48 8b d0 48 8b cf e8 ff 3e 00 ff 48 8b cf e8 b7 03 a6 5e cc}
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
0038h mov rcx,7ff7c8d72338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 23 d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ab ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d72530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 25 d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb ab ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d72758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 27 d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d ab ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d728e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 28 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f ab ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1e 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1e 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b6 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1e 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b6 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1e 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b6 ff ff}
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
018ah call 7ff7c8740e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5c fc ff}
018fh mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 ba ae 5e}
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
01e2h mov r11,7ff7c7631e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1e 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1e 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b5 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c8739500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 e2 fb ff}
023eh mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b9 ae 5e}
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
0291h mov r11,7ff7c7631e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1e 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1e 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b4 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1e 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b4 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873f240h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b8 ae 5e}
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
037fh mov r11,7ff7c7631e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1e 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1e 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8776830h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1e 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 00 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a3e8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ef ff ff}
040fh mov rcx,7ff7c8d30f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0f d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b7 ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 b2 a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 b7 ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 1a 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 3e 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 03 a6 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 2b d7 c8 f7 7f 00 00 e8 e9 a6 ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 2d d7 c8 f7 7f 00 00 e8 cb a6 ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 2f d7 c8 f7 7f 00 00 e8 ad a6 ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 30 d7 c8 f7 7f 00 00 e8 8f a6 ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb e8 1e 63 c7 f7 7f 00 00 48 b8 e8 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb f0 1e 63 c7 f7 7f 00 00 48 b8 f0 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f3 b7 ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 1e 63 c7 f7 7f 00 00 48 b8 f8 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c5 b7 ff ff c5 7d 10 40 08 48 8b cf 49 bb 00 1f 63 c7 f7 7f 00 00 48 b8 00 1f 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 97 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c1 57 fc ff 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 72 b5 ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 1e 63 c7 f7 7f 00 00 48 b8 a8 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb b0 1e 63 c7 f7 7f 00 00 48 b8 b0 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c1 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 82 de fb ff 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 c3 b4 ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 1e 63 c7 f7 7f 00 00 48 b8 b8 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb c0 1e 63 c7 f7 7f 00 00 48 b8 c0 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 b6 ff ff c5 fd 10 70 08 48 8b cb 49 bb c8 1e 63 c7 f7 7f 00 00 48 b8 c8 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e4 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 d5 b3 ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 1e 63 c7 f7 7f 00 00 48 b8 d0 1e 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d8 1e 63 c7 f7 7f 00 00 48 b8 d8 1e 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 b5 ff ff c5 fd 10 70 08 48 8b cd 49 bb e0 1e 63 c7 f7 7f 00 00 48 b8 e0 1e 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 86 fb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 a1 ea ff ff 48 b9 d0 13 d3 c8 f7 7f 00 00 e8 f2 b2 ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 c9 ad a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 97 b2 ae 5e 48 8b f8 48 8b ce 33 d2 e8 ea 15 58 4e 48 8b d0 48 8b cf e8 0f 3a 00 ff 48 8b cf e8 c7 fe a5 5e cc}
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
0038h mov rcx,7ff7c8d72b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 2b d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 a6 ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d72d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 2d d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb a6 ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d72f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 2f d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad a6 ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d730e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 30 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f a6 ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1e 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1e 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b7 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1e 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b7 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1f 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b7 ff ff}
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
018ah call 7ff7c8740ef0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 57 fc ff}
018fh mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b5 ae 5e}
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
01e2h mov r11,7ff7c7631ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1e 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1e 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b6 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c8739660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 de fb ff}
023eh mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 b4 ae 5e}
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
0291h mov r11,7ff7c7631eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1e 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1e 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b6 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1e 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b5 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873f530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 b3 ae 5e}
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
037fh mov r11,7ff7c7631ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1e 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1e 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8776e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b5 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1e 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 fb fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ea ff ff}
040fh mov rcx,7ff7c8d313d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 13 d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b2 ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ad a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b2 ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 15 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 3a 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 fe a5 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 33 d7 c8 f7 7f 00 00 e8 f9 a1 ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 35 d7 c8 f7 7f 00 00 e8 db a1 ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 37 d7 c8 f7 7f 00 00 e8 bd a1 ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 38 d7 c8 f7 7f 00 00 e8 9f a1 ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 48 1f 63 c7 f7 7f 00 00 48 b8 48 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 50 1f 63 c7 f7 7f 00 00 48 b8 50 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 1f 63 c7 f7 7f 00 00 48 b8 58 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 25 b5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 60 1f 63 c7 f7 7f 00 00 48 b8 60 1f 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 f7 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 51 53 fc ff 48 b9 40 18 d3 c8 f7 7f 00 00 e8 82 b0 ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 1f 63 c7 f7 7f 00 00 48 b8 08 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 10 1f 63 c7 f7 7f 00 00 48 b8 10 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 f2 da fb ff 48 b9 40 18 d3 c8 f7 7f 00 00 e8 d3 af ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 1f 63 c7 f7 7f 00 00 48 b8 18 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 20 1f 63 c7 f7 7f 00 00 48 b8 20 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 28 1f 63 c7 f7 7f 00 00 48 b8 28 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 44 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 40 18 d3 c8 f7 7f 00 00 e8 e5 ae ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 1f 63 c7 f7 7f 00 00 48 b8 30 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 38 1f 63 c7 f7 7f 00 00 48 b8 38 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 40 1f 63 c7 f7 7f 00 00 48 b8 40 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 96 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 19 e6 ff ff 48 b9 40 18 d3 c8 f7 7f 00 00 e8 02 ae ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 d9 a8 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 a7 ad ae 5e 48 8b f8 48 8b ce 33 d2 e8 fa 10 58 4e 48 8b d0 48 8b cf e8 1f 35 00 ff 48 8b cf e8 d7 f9 a5 5e cc}
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
0038h mov rcx,7ff7c8d73338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 33 d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 a1 ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d73530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 35 d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db a1 ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d73758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 37 d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd a1 ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d738e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 38 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f a1 ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1f 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1f 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1f 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1f 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1f 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b5 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1f 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1f 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
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
018ah call 7ff7c8740f70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 53 fc ff}
018fh mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 b0 ae 5e}
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
01e2h mov r11,7ff7c7631f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1f 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1f 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 b4 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c87397c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 da fb ff}
023eh mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 af ae 5e}
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
0291h mov r11,7ff7c7631f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1f 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1f 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b3 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1f 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 b3 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873fc20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 ae ae 5e}
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
037fh mov r11,7ff7c7631f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1f 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1f 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c87770d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b2 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1f 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a4b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 e6 ff ff}
040fh mov rcx,7ff7c8d31840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 18 d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 ae ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 a8 a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 ad ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 10 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 35 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f9 a5 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 3b d7 c8 f7 7f 00 00 e8 09 9d ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 3d d7 c8 f7 7f 00 00 e8 eb 9c ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 3f d7 c8 f7 7f 00 00 e8 cd 9c ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 40 d7 c8 f7 7f 00 00 e8 af 9c ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb a8 1f 63 c7 f7 7f 00 00 48 b8 a8 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb b0 1f 63 c7 f7 7f 00 00 48 b8 b0 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 1f 63 c7 f7 7f 00 00 48 b8 b8 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 85 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb c0 1f 63 c7 f7 7f 00 00 48 b8 c0 1f 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 57 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e1 52 fc ff 48 b9 30 63 d3 c8 f7 7f 00 00 e8 92 ab ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 1f 63 c7 f7 7f 00 00 48 b8 68 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 70 1f 63 c7 f7 7f 00 00 48 b8 70 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 62 db fb ff 48 b9 30 63 d3 c8 f7 7f 00 00 e8 e3 aa ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 1f 63 c7 f7 7f 00 00 48 b8 78 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 80 1f 63 c7 f7 7f 00 00 48 b8 80 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 88 1f 63 c7 f7 7f 00 00 48 b8 88 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a4 b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 30 63 d3 c8 f7 7f 00 00 e8 f5 a9 ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 1f 63 c7 f7 7f 00 00 48 b8 90 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 98 1f 63 c7 f7 7f 00 00 48 b8 98 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e4 af ff ff c5 fd 10 70 08 48 8b cd 49 bb a0 1f 63 c7 f7 7f 00 00 48 b8 a0 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a6 f1 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 91 e1 ff ff 48 b9 30 63 d3 c8 f7 7f 00 00 e8 12 a9 ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e9 a3 a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 b7 a8 ae 5e 48 8b f8 48 8b ce 33 d2 e8 0a 0c 58 4e 48 8b d0 48 8b cf e8 2f 30 00 ff 48 8b cf e8 e7 f4 a5 5e cc}
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
0038h mov rcx,7ff7c8d73b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 3b d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 9d ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d73d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 3d d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 9c ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d73f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3f d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 9c ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d740e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 40 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 9c ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7631fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1f 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7631fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1f 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7631fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1f 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7631fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1f 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7631fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1f 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7631fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1f 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7631fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1f 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7631fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1f 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b2 ff ff}
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
018ah call 7ff7c87413f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 52 fc ff}
018fh mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 ab ae 5e}
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
01e2h mov r11,7ff7c7631f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1f 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1f 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1f 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1f 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c8739d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 db fb ff}
023eh mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 aa ae 5e}
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
0291h mov r11,7ff7c7631f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1f 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1f 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1f 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1f 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1f 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1f 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c873ff10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 a9 ae 5e}
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
037fh mov r11,7ff7c7631f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1f 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1f 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1f 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1f 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8777320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 af ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7631fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1f 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7631fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1f 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f1 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a520h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 e1 ff ff}
040fh mov rcx,7ff7c8d36330h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 63 d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 a9 ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 a3 a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a8 ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 0c 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 30 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f4 a5 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 38 43 d7 c8 f7 7f 00 00 e8 19 98 ae 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 30 45 d7 c8 f7 7f 00 00 e8 fb 97 ae 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 58 47 d7 c8 f7 7f 00 00 e8 dd 97 ae 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 e0 48 d7 c8 f7 7f 00 00 e8 bf 97 ae 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 08 20 63 c7 f7 7f 00 00 48 b8 08 20 63 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 10 20 63 c7 f7 7f 00 00 48 b8 10 20 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 13 b0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 20 63 c7 f7 7f 00 00 48 b8 18 20 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e5 af ff ff c5 7d 10 40 08 48 8b cf 49 bb 20 20 63 c7 f7 7f 00 00 48 b8 20 20 63 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 b7 af ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 71 4e fc ff 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 a2 a6 ae 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 1f 63 c7 f7 7f 00 00 48 b8 c8 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb d0 1f 63 c7 f7 7f 00 00 48 b8 d0 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 ae ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 d2 d7 fb ff 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 f3 a5 ae 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 1f 63 c7 f7 7f 00 00 48 b8 d8 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb e0 1f 63 c7 f7 7f 00 00 48 b8 e0 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 ae ff ff c5 fd 10 70 08 48 8b cb 49 bb e8 1f 63 c7 f7 7f 00 00 48 b8 e8 1f 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 04 ae ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3a fc ff 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 05 a5 ae 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 1f 63 c7 f7 7f 00 00 48 b8 f0 1f 63 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f8 1f 63 c7 f7 7f 00 00 48 b8 f8 1f 63 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 ad ff ff c5 fd 10 70 08 48 8b cd 49 bb 00 20 63 c7 f7 7f 00 00 48 b8 00 20 63 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 b6 ec fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 09 dd ff ff 48 b9 b0 1c d3 c8 f7 7f 00 00 e8 22 a4 ae 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f9 9e a3 5e 48 8b f0 48 b9 00 eb ad c7 f7 7f 00 00 e8 c7 a3 ae 5e 48 8b f8 48 8b ce 33 d2 e8 1a 07 58 4e 48 8b d0 48 8b cf e8 3f 2b 00 ff 48 8b cf e8 f7 ef a5 5e cc}
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
0038h mov rcx,7ff7c8d74338h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 43 d7 c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 98 ae 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8d74530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 45 d7 c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 97 ae 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8d74758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 47 d7 c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd 97 ae 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8d748e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 48 d7 c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 97 ae 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7632008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 20 63 c7 f7 7f 00 00}
00bah mov rax,7ff7c7632008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 20 63 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7632010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 20 63 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7632010h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 20 63 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b0 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7632018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 20 63 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7632018h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 20 63 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 af ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7632020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 20 63 c7 f7 7f 00 00}
012dh mov rax,7ff7c7632020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 20 63 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 af ff ff}
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
018ah call 7ff7c8741470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4e fc ff}
018fh mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 a6 ae 5e}
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
01e2h mov r11,7ff7c7631fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1f 63 c7 f7 7f 00 00}
01ech mov rax,7ff7c7631fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1f 63 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7631fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1f 63 c7 f7 7f 00 00}
0209h mov rax,7ff7c7631fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1f 63 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ae ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c8739e80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 d7 fb ff}
023eh mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a5 ae 5e}
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
0291h mov r11,7ff7c7631fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1f 63 c7 f7 7f 00 00}
029bh mov rax,7ff7c7631fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1f 63 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7631fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1f 63 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7631fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1f 63 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ae ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7631fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1f 63 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7631fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1f 63 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ae ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c8740200h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3a fc ff}
032ch mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 a5 ae 5e}
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
037fh mov r11,7ff7c7631ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1f 63 c7 f7 7f 00 00}
0389h mov rax,7ff7c7631ff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1f 63 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7631ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1f 63 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7631ff8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1f 63 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c8777570h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ad ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7632000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 20 63 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7632000h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 20 63 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c876b510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ec fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c877a588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 dd ff ff}
040fh mov rcx,7ff7c8d31cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1c d3 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 a4 ae 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 9e a3 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c7adeb00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 eb ad c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 a3 ae 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 07 58 4e}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c777f440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 2b 00 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 ef a5 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
