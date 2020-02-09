------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[8u]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 48 4d c9 c8 f7 7f 00 00 e8 cc c1 b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 c8 e3 cb c8 f7 7f 00 00 e8 b1 c1 b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 b0 e4 cb c8 f7 7f 00 00 e8 96 c1 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 60 e5 cb c8 f7 7f 00 00 e8 7b c1 b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 98 4e c9 c8 f7 7f 00 00 e8 60 c1 b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb f8 15 62 c7 f7 7f 00 00 48 b8 f8 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 59 94 ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 16 62 c7 f7 7f 00 00 48 b8 00 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 31 94 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 18 4c c9 c8 f7 7f 00 00 e8 c9 d0 b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e0 15 62 c7 f7 7f 00 00 48 b8 e0 15 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 18 4c c9 c8 f7 7f 00 00 e8 90 d0 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb e8 15 62 c7 f7 7f 00 00 48 b8 e8 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a8 93 ff ff eb 2d 48 8b c8 49 bb f0 15 62 c7 f7 7f 00 00 48 b8 f0 15 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 93 ff ff eb 08 48 8b c8 e8 b9 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 3b cb ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 09 d0 b6 5e 48 8b f8 48 8b ce 33 d2 e8 5c 33 7f 4d 48 8b d0 48 8b cf e8 31 fb 06 ff 48 8b cf e8 39 1c ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c94d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 4d c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc c1 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbe3c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e3 cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c1 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbe4b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 e4 cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 c1 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbe560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 e5 cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b c1 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c94e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 4e c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 c1 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76215f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 15 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76215f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 15 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f2ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 94 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7621600h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f2ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 94 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d0 b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76215e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 15 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c76215e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 15 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 d0 b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76215e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 15 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c76215e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 15 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f2ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 93 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76215f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 15 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c76215f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 15 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f2ff8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 93 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f9538h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b cb ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 d0 b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 33 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 fb 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 1c ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[8i]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 18 52 c9 c8 f7 7f 00 00 e8 bc bf b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 80 ea cb c8 f7 7f 00 00 e8 a1 bf b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 68 eb cb c8 f7 7f 00 00 e8 86 bf b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 18 ec cb c8 f7 7f 00 00 e8 6b bf b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 68 53 c9 c8 f7 7f 00 00 e8 50 bf b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 20 16 62 c7 f7 7f 00 00 48 b8 20 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 79 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb 28 16 62 c7 f7 7f 00 00 48 b8 28 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 92 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 b9 ce b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 08 16 62 c7 f7 7f 00 00 48 b8 08 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 80 ce b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 10 16 62 c7 f7 7f 00 00 48 b8 10 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c8 91 ff ff eb 2d 48 8b c8 49 bb 18 16 62 c7 f7 7f 00 00 48 b8 18 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a3 91 ff ff eb 08 48 8b c8 e8 49 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 2b c9 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 f9 cd b6 5e 48 8b f8 48 8b ce 33 d2 e8 4c 31 7f 4d 48 8b d0 48 8b cf e8 21 f9 06 ff 48 8b cf e8 29 1a ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c95218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 52 c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc bf b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbea80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 ea cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 bf b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbeb68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 eb cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bf b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbec18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 ec cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b bf b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c95368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 53 c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 bf b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7621620h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 92 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7621628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 92 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 ce b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7621608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c7621608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 ce b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7621610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c7621610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 91 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7621618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c7621618h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3028h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 91 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f95d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 f7 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b c9 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 cd b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 31 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f9 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 1a ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[16u]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 88 56 c9 c8 f7 7f 00 00 e8 ac bd b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 38 ed cb c8 f7 7f 00 00 e8 91 bd b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 20 ee cb c8 f7 7f 00 00 e8 76 bd b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 d0 ee cb c8 f7 7f 00 00 e8 5b bd b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 d8 57 c9 c8 f7 7f 00 00 e8 40 bd b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 48 16 62 c7 f7 7f 00 00 48 b8 48 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 89 90 ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 16 62 c7 f7 7f 00 00 48 b8 50 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 90 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 58 55 c9 c8 f7 7f 00 00 e8 a9 cc b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 30 16 62 c7 f7 7f 00 00 48 b8 30 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 58 55 c9 c8 f7 7f 00 00 e8 70 cc b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 38 16 62 c7 f7 7f 00 00 48 b8 38 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d8 8f ff ff eb 2d 48 8b c8 49 bb 40 16 62 c7 f7 7f 00 00 48 b8 40 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 8f ff ff eb 08 48 8b c8 e8 91 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 1b c7 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 e9 cb b6 5e 48 8b f8 48 8b ce 33 d2 e8 3c 2f 7f 4d 48 8b d0 48 8b cf e8 11 f7 06 ff 48 8b cf e8 19 18 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c95688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 56 c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac bd b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbed38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ed cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 bd b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbee20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ee cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 bd b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbeed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ee cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b bd b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c957d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 bd b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7621648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 90 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7621650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 90 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 cc b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7621630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c7621630h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 cc b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7621638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c7621638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 8f ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7621640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c7621640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3048h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 8f ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f9630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 f5 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b c7 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 cb b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2f 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f7 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 18 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[16i]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 5a c9 c8 f7 7f 00 00 e8 9c bb b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 f0 ef cb c8 f7 7f 00 00 e8 81 bb b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 d8 f0 cb c8 f7 7f 00 00 e8 66 bb b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 88 f1 cb c8 f7 7f 00 00 e8 4b bb b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 48 5c c9 c8 f7 7f 00 00 e8 30 bb b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 70 16 62 c7 f7 7f 00 00 48 b8 70 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 99 8e ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 16 62 c7 f7 7f 00 00 48 b8 78 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 71 8e ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 99 ca b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 58 16 62 c7 f7 7f 00 00 48 b8 58 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 60 ca b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 60 16 62 c7 f7 7f 00 00 48 b8 60 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e8 8d ff ff eb 2d 48 8b c8 49 bb 68 16 62 c7 f7 7f 00 00 48 b8 68 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c3 8d ff ff eb 08 48 8b c8 e8 d9 f3 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 0b c5 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 d9 c9 b6 5e 48 8b f8 48 8b ce 33 d2 e8 2c 2d 7f 4d 48 8b d0 48 8b cf e8 01 f5 06 ff 48 8b cf e8 09 16 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c95af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 5a c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c bb b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbeff0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ef cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 bb b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbf0d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 f0 cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 bb b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbf188h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 f1 cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b bb b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c95c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5c c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 bb b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7621670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 8e ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7621678h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 8e ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 ca b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7621658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c7621658h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 ca b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7621660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c7621660h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 8d ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7621668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c7621668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3068h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 8d ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f9688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f3 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b c5 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 c9 b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 2d 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f5 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 16 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[32u]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 68 5f c9 c8 f7 7f 00 00 e8 8c b9 b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 a8 f2 cb c8 f7 7f 00 00 e8 71 b9 b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 90 f3 cb c8 f7 7f 00 00 e8 56 b9 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 40 f4 cb c8 f7 7f 00 00 e8 3b b9 b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 b8 60 c9 c8 f7 7f 00 00 e8 20 b9 b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 98 16 62 c7 f7 7f 00 00 48 b8 98 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a9 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb a0 16 62 c7 f7 7f 00 00 48 b8 a0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 38 5e c9 c8 f7 7f 00 00 e8 89 c8 b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 80 16 62 c7 f7 7f 00 00 48 b8 80 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 38 5e c9 c8 f7 7f 00 00 e8 50 c8 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 88 16 62 c7 f7 7f 00 00 48 b8 88 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f8 8b ff ff eb 2d 48 8b c8 49 bb 90 16 62 c7 f7 7f 00 00 48 b8 90 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 8b ff ff eb 08 48 8b c8 e8 21 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 fb c2 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 c9 c7 b6 5e 48 8b f8 48 8b ce 33 d2 e8 1c 2b 7f 4d 48 8b d0 48 8b cf e8 f1 f2 06 ff 48 8b cf e8 f9 13 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c95f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5f c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c b9 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbf2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 f2 cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 b9 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbf390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 b9 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbf440h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f4 cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b b9 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c960b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 60 c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 b9 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7621698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 8c ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76216a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76216a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8c ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 c8 b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c7621680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c7621680h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 c8 b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7621688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c7621688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f8 8b ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7621690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c7621690h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3088h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 8b ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f96e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f2 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c2 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 c7 b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 2b 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 f2 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 13 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[32i]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d8 63 c9 c8 f7 7f 00 00 e8 7c b7 b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 60 f5 cb c8 f7 7f 00 00 e8 61 b7 b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 48 f6 cb c8 f7 7f 00 00 e8 46 b7 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f8 f6 cb c8 f7 7f 00 00 e8 2b b7 b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 28 65 c9 c8 f7 7f 00 00 e8 10 b7 b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb c0 16 62 c7 f7 7f 00 00 48 b8 c0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b9 8a ff ff c5 f9 10 70 08 48 8b cf 49 bb c8 16 62 c7 f7 7f 00 00 48 b8 c8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 91 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 79 c6 b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb a8 16 62 c7 f7 7f 00 00 48 b8 a8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 40 c6 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb b0 16 62 c7 f7 7f 00 00 48 b8 b0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 08 8a ff ff eb 2d 48 8b c8 49 bb b8 16 62 c7 f7 7f 00 00 48 b8 b8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e3 89 ff ff eb 08 48 8b c8 e8 69 f0 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 eb c0 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 b9 c5 b6 5e 48 8b f8 48 8b ce 33 d2 e8 0c 29 7f 4d 48 8b d0 48 8b cf e8 e1 f0 06 ff 48 8b cf e8 e9 11 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c963d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 63 c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c b7 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbf560h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f5 cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b7 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbf648h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 f6 cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 b7 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbf6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 f6 cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b b7 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c96528h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 65 c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 b7 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76216c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76216c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f30a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 8a ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76216c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76216c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f30a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 8a ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 c6 b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76216a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c76216a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 c6 b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76216b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c76216b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f30a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 8a ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76216b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c76216b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f30a8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 89 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f9738h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 f0 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb c0 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 c5 b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 29 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 f0 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 11 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[64u]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 f8 c5 c9 c8 f7 7f 00 00 e8 5c b1 b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 18 f8 cb c8 f7 7f 00 00 e8 41 b1 b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 00 f9 cb c8 f7 7f 00 00 e8 26 b1 b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 b0 f9 cb c8 f7 7f 00 00 e8 0b b1 b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 b0 15 cb c8 f7 7f 00 00 e8 f0 b0 b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb e8 16 62 c7 f7 7f 00 00 48 b8 e8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 29 85 ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 16 62 c7 f7 7f 00 00 48 b8 f0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 85 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 59 c0 b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb d0 16 62 c7 f7 7f 00 00 48 b8 d0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 20 c0 b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb d8 16 62 c7 f7 7f 00 00 48 b8 d8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 78 84 ff ff eb 2d 48 8b c8 49 bb e0 16 62 c7 f7 7f 00 00 48 b8 e0 16 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 84 ff ff eb 08 48 8b c8 e8 59 ea ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 cb ba ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 99 bf b6 5e 48 8b f8 48 8b ce 33 d2 e8 ec 22 7f 4d 48 8b d0 48 8b cf e8 c1 ea 06 ff 48 8b cf e8 c9 0b ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c9c5f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c5 c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b1 b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbf818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 f8 cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 b1 b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbf900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 f9 cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 b1 b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbf9b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 f9 cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b b1 b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8cb15b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 15 cb c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 b0 b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c76216e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 16 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c76216e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 16 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 85 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c76216f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 16 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c76216f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 16 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 85 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 c0 b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76216d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c76216d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 c0 b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c76216d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 16 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c76216d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 16 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 84 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c76216e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 16 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c76216e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 16 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3138h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 84 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86f9748h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 ea ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb ba ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 bf b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 22 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 ea 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 0b ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[64i]()[488] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 48 68 c9 c8 f7 7f 00 00 e8 4c af b6 5e 48 85 c0 0f 85 e4 00 00 00 48 8b d6 48 b9 d0 fa cb c8 f7 7f 00 00 e8 31 af b6 5e 48 85 c0 0f 85 05 01 00 00 48 8b d6 48 b9 b8 fb cb c8 f7 7f 00 00 e8 16 af b6 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 68 fc cb c8 f7 7f 00 00 e8 fb ae b6 5e 48 85 c0 0f 85 19 01 00 00 48 8b d6 48 b9 98 69 c9 c8 f7 7f 00 00 e8 e0 ae b6 5e 48 8b f8 48 85 ff 0f 84 11 01 00 00 48 8b cf 49 bb 10 17 62 c7 f7 7f 00 00 48 b8 10 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 39 83 ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 17 62 c7 f7 7f 00 00 48 b8 18 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 11 83 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 18 67 c9 c8 f7 7f 00 00 e8 49 be b6 5e c5 f9 11 70 08 e9 8e 00 00 00 48 8d 54 24 20 48 8b c8 49 bb f8 16 62 c7 f7 7f 00 00 48 b8 f8 16 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 18 67 c9 c8 f7 7f 00 00 e8 10 be b6 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 52 48 8b c8 49 bb 00 17 62 c7 f7 7f 00 00 48 b8 00 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 88 82 ff ff eb 2d 48 8b c8 49 bb 08 17 62 c7 f7 7f 00 00 48 b8 08 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 63 82 ff ff eb 08 48 8b c8 e8 d1 f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 bb b8 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 89 bd b6 5e 48 8b f8 48 8b ce 33 d2 e8 dc 20 7f 4d 48 8b d0 48 8b cf e8 b1 e8 06 ff 48 8b cf e8 b9 09 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c8c96848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 68 c9 c8 f7 7f 00 00}
001fh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c af b6 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0111h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 e4 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c8cbfad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fa cb c8 f7 7f 00 00}
003ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 af b6 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 014dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 05 01 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c8cbfbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 fb cb c8 f7 7f 00 00}
0055h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 af b6 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 0172h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c8cbfc68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 fc cb c8 f7 7f 00 00}
0070h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb ae b6 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0197h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 19 01 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c8c96998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 69 c9 c8 f7 7f 00 00}
008bh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 ae b6 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 01adh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 11 01 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c7621710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 17 62 c7 f7 7f 00 00}
00a9h mov rax,7ff7c7621710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 17 62 c7 f7 7f 00 00}
00b3h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b5h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bah call 7ff7c86f3158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 83 ff ff}
00bfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c7621718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 17 62 c7 f7 7f 00 00}
00d1h mov rax,7ff7c7621718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 17 62 c7 f7 7f 00 00}
00dbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ddh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00dfh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e2h call 7ff7c86f3158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 83 ff ff}
00e7h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00ech vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00f0h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00f4h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00f8h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
0102h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 be b6 5e}
0107h vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
010ch jmp near ptr 019fh                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0111h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
0116h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0119h mov r11,7ff7c76216f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 16 62 c7 f7 7f 00 00}
0123h mov rax,7ff7c76216f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 16 62 c7 f7 7f 00 00}
012dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
012fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0131h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
013bh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 be b6 5e}
0140h vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0146h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
014bh jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
014dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0150h mov r11,7ff7c7621700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 17 62 c7 f7 7f 00 00}
015ah mov rax,7ff7c7621700h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 17 62 c7 f7 7f 00 00}
0164h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0166h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0168h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
016bh call 7ff7c86f3158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 82 ff ff}
0170h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h mov r11,7ff7c7621708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 17 62 c7 f7 7f 00 00}
017fh mov rax,7ff7c7621708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 17 62 c7 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0190h call 7ff7c86f3158h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 82 ff ff}
0195h jmp short 019fh                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0197h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019ah call 7ff7c86fa7d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 f8 ff ff}
019fh nop                                     ; NOP || o32 90 || encoded[1]{90}
01a0h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
01a6h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
01aah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01abh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01ach ret                                     ; RET || C3 || encoded[1]{c3}
01adh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01b0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb b8 ab 5e}
01b5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01b8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01c2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 bd b6 5e}
01c7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01cah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01cdh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01cfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 20 7f 4d}
01d4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01d7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01dah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e8 06 ff}
01dfh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 09 ae 5e}
01e7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[8u]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d0 72 c9 c8 f7 7f 00 00 e8 33 ad b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 10 03 cc c8 f7 7f 00 00 e8 18 ad b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 f8 03 cc c8 f7 7f 00 00 e8 fd ac b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 a8 04 cc c8 f7 7f 00 00 e8 e2 ac b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 20 74 c9 c8 f7 7f 00 00 e8 c7 ac b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 38 17 62 c7 f7 7f 00 00 48 b8 38 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a0 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 17 62 c7 f7 7f 00 00 48 b8 40 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 72 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 1e bc b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 20 17 62 c7 f7 7f 00 00 48 b8 20 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 df bb b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 28 17 62 c7 f7 7f 00 00 48 b8 28 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d7 83 ff ff eb 2d 48 8b c8 49 bb 30 17 62 c7 f7 7f 00 00 48 b8 30 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b2 83 ff ff eb 08 48 8b c8 e8 30 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 7e b6 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 4c bb b6 5e 48 8b f8 48 8b ce 33 d2 e8 9f 1e 7f 4d 48 8b d0 48 8b cf e8 74 e6 06 ff 48 8b cf e8 7c 07 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c972d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 72 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 ad b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc0310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 03 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 ad b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc03f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 03 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd ac b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc04a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 04 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ac b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c97420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 74 c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 ac b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 17 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 17 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f34d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 84 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 17 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f34d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 84 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e bc b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7621720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c7621720h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df bb b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7621728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c7621728h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f34d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 83 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7621730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7621730h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f34d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 83 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86fa960h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 f8 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e b6 ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c bb b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 1e 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 e6 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 07 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[8i]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a0 77 c9 c8 f7 7f 00 00 e8 e3 aa b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 c8 09 cc c8 f7 7f 00 00 e8 c8 aa b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 b0 0a cc c8 f7 7f 00 00 e8 ad aa b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 60 0b cc c8 f7 7f 00 00 e8 92 aa b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 f0 78 c9 c8 f7 7f 00 00 e8 77 aa b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 60 17 62 c7 f7 7f 00 00 48 b8 60 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 80 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 68 17 62 c7 f7 7f 00 00 48 b8 68 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 52 82 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 70 76 c9 c8 f7 7f 00 00 e8 ce b9 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 48 17 62 c7 f7 7f 00 00 48 b8 48 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 70 76 c9 c8 f7 7f 00 00 e8 8f b9 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 50 17 62 c7 f7 7f 00 00 48 b8 50 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b7 81 ff ff eb 2d 48 8b c8 49 bb 58 17 62 c7 f7 7f 00 00 48 b8 58 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 92 81 ff ff eb 08 48 8b c8 e8 80 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 2e b4 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 fc b8 b6 5e 48 8b f8 48 8b ce 33 d2 e8 4f 1c 7f 4d 48 8b d0 48 8b cf e8 24 e4 06 ff 48 8b cf e8 2c 05 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c977a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 77 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e3 aa b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc09c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 09 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c8 aa b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc0ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 0a cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad aa b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc0b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 0b cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 aa b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c978f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 78 c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 aa b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 17 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 82 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 17 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 82 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce b9 b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7621748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c7621748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f b9 b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7621750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c7621750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f3508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 81 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7621758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7621758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f3508h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 81 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86faa00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 f6 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b4 ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc b8 b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 1c 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 e4 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 05 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[16u]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 10 7c c9 c8 f7 7f 00 00 e8 93 a8 b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 80 0c cc c8 f7 7f 00 00 e8 78 a8 b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 68 0d cc c8 f7 7f 00 00 e8 5d a8 b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 18 0e cc c8 f7 7f 00 00 e8 42 a8 b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 60 7d c9 c8 f7 7f 00 00 e8 27 a8 b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 88 17 62 c7 f7 7f 00 00 48 b8 88 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 50 80 ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 17 62 c7 f7 7f 00 00 48 b8 90 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 22 80 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 7e b7 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 70 17 62 c7 f7 7f 00 00 48 b8 70 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 3f b7 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 78 17 62 c7 f7 7f 00 00 48 b8 78 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 87 7f ff ff eb 2d 48 8b c8 49 bb 80 17 62 c7 f7 7f 00 00 48 b8 80 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 62 7f ff ff eb 08 48 8b c8 e8 88 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 de b1 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 ac b6 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ff 19 7f 4d 48 8b d0 48 8b cf e8 d4 e1 06 ff 48 8b cf e8 dc 02 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c97c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 7c c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 a8 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc0c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 0c cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a8 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc0d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0d cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d a8 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc0e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 0e cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 a8 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c97d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 7d c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 a8 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 17 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 80 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 17 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 80 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e b7 b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7621770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c7621770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f b7 b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c7621778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c7621778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f3528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 7f ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c7621780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c7621780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f3528h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 7f ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86faa58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 f4 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b1 ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac b6 b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 19 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 e1 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 02 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[16i]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 80 80 c9 c8 f7 7f 00 00 e8 43 a6 b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 38 0f cc c8 f7 7f 00 00 e8 28 a6 b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 20 10 cc c8 f7 7f 00 00 e8 0d a6 b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 d0 10 cc c8 f7 7f 00 00 e8 f2 a5 b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 d0 81 c9 c8 f7 7f 00 00 e8 d7 a5 b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb b0 17 62 c7 f7 7f 00 00 48 b8 b0 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 20 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 17 62 c7 f7 7f 00 00 48 b8 b8 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 f2 7d ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 50 7f c9 c8 f7 7f 00 00 e8 2e b5 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 98 17 62 c7 f7 7f 00 00 48 b8 98 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 50 7f c9 c8 f7 7f 00 00 e8 ef b4 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb a0 17 62 c7 f7 7f 00 00 48 b8 a0 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 57 7d ff ff eb 2d 48 8b c8 49 bb a8 17 62 c7 f7 7f 00 00 48 b8 a8 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 7d ff ff eb 08 48 8b c8 e8 90 f2 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 8e af ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 5c b4 b6 5e 48 8b f8 48 8b ce 33 d2 e8 af 17 7f 4d 48 8b d0 48 8b cf e8 84 df 06 ff 48 8b cf e8 8c 00 ae 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c98080h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 80 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 a6 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc0f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 0f cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 a6 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc1020h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 10 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d a6 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc10d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 10 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 a5 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c981d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 81 c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 a5 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76217b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76217b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 17 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 7e ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76217b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c76217b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 17 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 7d ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e b5 b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c7621798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c7621798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef b4 b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76217a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c76217a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f3548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 7d ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76217a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76217a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f3548h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 7d ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86faab0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 f2 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e af ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c b4 b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 17 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 df 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 00 ae 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[32u]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 f0 84 c9 c8 f7 7f 00 00 e8 f3 a3 b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 f0 11 cc c8 f7 7f 00 00 e8 d8 a3 b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 d8 12 cc c8 f7 7f 00 00 e8 bd a3 b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 88 13 cc c8 f7 7f 00 00 e8 a2 a3 b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 40 86 c9 c8 f7 7f 00 00 e8 87 a3 b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb d8 17 62 c7 f7 7f 00 00 48 b8 d8 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f0 7b ff ff c5 fd 10 70 08 48 8b cf 49 bb e0 17 62 c7 f7 7f 00 00 48 b8 e0 17 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c2 7b ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 de b2 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb c0 17 62 c7 f7 7f 00 00 48 b8 c0 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 9f b2 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb c8 17 62 c7 f7 7f 00 00 48 b8 c8 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 27 7b ff ff eb 2d 48 8b c8 49 bb d0 17 62 c7 f7 7f 00 00 48 b8 d0 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 02 7b ff ff eb 08 48 8b c8 e8 98 f0 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3e ad ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 0c b2 b6 5e 48 8b f8 48 8b ce 33 d2 e8 5f 15 7f 4d 48 8b d0 48 8b cf e8 34 dd 06 ff 48 8b cf e8 3c fe ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c984f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 84 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 a3 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc11f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 11 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 a3 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc12d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 12 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd a3 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc1388h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 13 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 a3 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c98640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 86 c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 a3 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c76217d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c76217d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 17 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 7b ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c76217e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c76217e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 17 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 7b ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de b2 b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76217c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c76217c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b2 b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76217c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c76217c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f3568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 7b ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76217d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76217d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f3568h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 7b ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86fab08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 98 f0 ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e ad ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c b2 b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 15 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 dd 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c fe ad 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[32i]()[533] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 60 89 c9 c8 f7 7f 00 00 e8 a3 9d b6 5e 48 85 c0 0f 85 fc 00 00 00 48 8b d6 48 b9 a8 14 cc c8 f7 7f 00 00 e8 88 9d b6 5e 48 85 c0 0f 85 1d 01 00 00 48 8b d6 48 b9 90 15 cc c8 f7 7f 00 00 e8 6d 9d b6 5e 48 85 c0 0f 85 27 01 00 00 48 8b d6 48 b9 40 16 cc c8 f7 7f 00 00 e8 52 9d b6 5e 48 85 c0 0f 85 31 01 00 00 48 8b d6 48 b9 b0 8a c9 c8 f7 7f 00 00 e8 37 9d b6 5e 48 8b f8 48 85 ff 0f 84 35 01 00 00 48 8b cf 49 bb 00 18 62 c7 f7 7f 00 00 48 b8 00 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c0 75 ff ff c5 fd 10 70 08 48 8b cf 49 bb 08 18 62 c7 f7 7f 00 00 48 b8 08 18 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 92 75 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 30 88 c9 c8 f7 7f 00 00 e8 8e ac b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb e8 17 62 c7 f7 7f 00 00 48 b8 e8 17 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 30 88 c9 c8 f7 7f 00 00 e8 4f ac b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb f0 17 62 c7 f7 7f 00 00 48 b8 f0 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f7 74 ff ff eb 2d 48 8b c8 49 bb f8 17 62 c7 f7 7f 00 00 48 b8 f8 17 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d2 74 ff ff eb 08 48 8b c8 e8 60 fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ee a6 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 bc ab b6 5e 48 8b f8 48 8b ce 33 d2 e8 0f 0f 7f 4d 48 8b d0 48 8b cf e8 e4 d6 06 ff 48 8b cf e8 ec f7 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c98960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 89 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 9d b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0132h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fc 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc14a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 14 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 9d b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc1590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 15 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 9d b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0193h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 27 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc1640h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 16 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 9d b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b8h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 31 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c98ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 8a c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 9d b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dah                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 35 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 18 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 75 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 18 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 75 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
0109h vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010dh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0113h mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
011dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e ac b6 5e}
0122h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0128h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012dh jmp near ptr 01c0h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0132h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0137h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013ah mov r11,7ff7c76217e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 62 c7 f7 7f 00 00}
0144h mov rax,7ff7c76217e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 17 62 c7 f7 7f 00 00}
014eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0150h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0152h mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
015ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f ac b6 5e}
0161h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0167h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016ch jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0171h mov r11,7ff7c76217f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 62 c7 f7 7f 00 00}
017bh mov rax,7ff7c76217f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 17 62 c7 f7 7f 00 00}
0185h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0187h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0189h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018ch call 7ff7c86f3588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 74 ff ff}
0191h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0193h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0196h mov r11,7ff7c76217f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 62 c7 f7 7f 00 00}
01a0h mov rax,7ff7c76217f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 17 62 c7 f7 7f 00 00}
01aah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01ach call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c86f3588h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 74 ff ff}
01b6h jmp short 01c0h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b8h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bbh call 7ff7c86fbb20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 fa ff ff}
01c0h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c1h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c7h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01cdh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d0h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d7h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d8h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01d9h ret                                     ; RET || C3 || encoded[1]{c3}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee a6 ab 5e}
01e2h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e5h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01efh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc ab b6 5e}
01f4h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f7h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fah xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fch call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 0f 7f 4d}
0201h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0204h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0207h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 d6 06 ff}
020ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
020fh call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec f7 ad 5e}
0214h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[64u]()[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 50 d4 c9 c8 f7 7f 00 00 e8 53 9b b6 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 60 17 cc c8 f7 7f 00 00 e8 38 9b b6 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 48 18 cc c8 f7 7f 00 00 e8 1d 9b b6 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 f8 18 cc c8 f7 7f 00 00 e8 02 9b b6 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 68 42 cb c8 f7 7f 00 00 e8 e7 9a b6 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 28 18 62 c7 f7 7f 00 00 48 b8 28 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 00 74 ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 18 62 c7 f7 7f 00 00 48 b8 30 18 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 d2 73 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 3d aa b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 10 18 62 c7 f7 7f 00 00 48 b8 10 18 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 fe a9 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 18 18 62 c7 f7 7f 00 00 48 b8 18 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 36 73 ff ff eb 2d 48 8b c8 49 bb 20 18 62 c7 f7 7f 00 00 48 b8 20 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 11 73 ff ff eb 08 48 8b c8 e8 67 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9d a4 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 6b a9 b6 5e 48 8b f8 48 8b ce 33 d2 e8 be 0c 7f 4d 48 8b d0 48 8b cf e8 93 d4 06 ff 48 8b cf e8 9b f5 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c9d450h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 d4 c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 9b b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc1760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 17 cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9b b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc1848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 18 cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 9b b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc18f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 18 cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 9b b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8cb4268h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 42 cb c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 9a b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 18 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 74 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 18 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 73 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d aa b6 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7621810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 62 c7 f7 7f 00 00}
0145h mov rax,7ff7c7621810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 18 62 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe a9 b6 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7621818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 62 c7 f7 7f 00 00}
017ch mov rax,7ff7c7621818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 18 62 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c86f3618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 73 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7621820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 62 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7621820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 18 62 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c86f3618h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 73 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c86fbb78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f8 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d a4 ab 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b a9 b6 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 0c 7f 4d}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 d4 06 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 ad 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[64i]()[534] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 d0 8d c9 c8 f7 7f 00 00 e8 03 99 b6 5e 48 85 c0 0f 85 fd 00 00 00 48 8b d6 48 b9 18 1a cc c8 f7 7f 00 00 e8 e8 98 b6 5e 48 85 c0 0f 85 1e 01 00 00 48 8b d6 48 b9 00 1b cc c8 f7 7f 00 00 e8 cd 98 b6 5e 48 85 c0 0f 85 28 01 00 00 48 8b d6 48 b9 b0 1b cc c8 f7 7f 00 00 e8 b2 98 b6 5e 48 85 c0 0f 85 32 01 00 00 48 8b d6 48 b9 20 8f c9 c8 f7 7f 00 00 e8 97 98 b6 5e 48 8b f8 48 85 ff 0f 84 36 01 00 00 48 8b cf 49 bb 50 18 62 c7 f7 7f 00 00 48 b8 50 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d0 71 ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 18 62 c7 f7 7f 00 00 48 b8 58 18 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a2 71 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 ed a7 b6 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 8e 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 38 18 62 c7 f7 7f 00 00 48 b8 38 18 62 c7 f7 7f 00 00 39 09 ff 10 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 ae a7 b6 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 52 48 8b c8 49 bb 40 18 62 c7 f7 7f 00 00 48 b8 40 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 06 71 ff ff eb 2d 48 8b c8 49 bb 48 18 62 c7 f7 7f 00 00 48 b8 48 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 70 ff ff eb 08 48 8b c8 e8 6f f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 4d a2 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 1b a7 b6 5e 48 8b f8 48 8b ce 33 d2 e8 6e 0a 7f 4d 48 8b d0 48 8b cf e8 43 d2 06 ff 48 8b cf e8 4b f3 ad 5e cc}
; TermCode = CTC_INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c8c98dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 8d c9 c8 f7 7f 00 00}
0028h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 99 b6 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0133h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fd 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c8cc1a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 1a cc c8 f7 7f 00 00}
0043h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 98 b6 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 016fh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1e 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c8cc1b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 1b cc c8 f7 7f 00 00}
005eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 98 b6 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 0194h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 28 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c8cc1bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 1b cc c8 f7 7f 00 00}
0079h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 98 b6 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 01b9h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 32 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c8c98f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 8f c9 c8 f7 7f 00 00}
0094h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 98 b6 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01dbh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 36 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c7621850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 62 c7 f7 7f 00 00}
00b2h mov rax,7ff7c7621850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 18 62 c7 f7 7f 00 00}
00bch cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00beh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c0h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00c3h call 7ff7c86f3638h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 71 ff ff}
00c8h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00cdh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d0h mov r11,7ff7c7621858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 62 c7 f7 7f 00 00}
00dah mov rax,7ff7c7621858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 18 62 c7 f7 7f 00 00}
00e4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00eah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00ech call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00eeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00f1h call 7ff7c86f3638h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 71 ff ff}
00f6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00fbh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0101h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
0105h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
010ah vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
010eh vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0114h mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
011eh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed a7 b6 5e}
0123h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
0129h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
012eh jmp near ptr 01c1h                      ; JMP rel32 || E9 cd || encoded[5]{e9 8e 00 00 00}
0133h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
0138h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013bh mov r11,7ff7c7621838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 62 c7 f7 7f 00 00}
0145h mov rax,7ff7c7621838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 18 62 c7 f7 7f 00 00}
014fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0151h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0153h mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
015dh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae a7 b6 5e}
0162h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0168h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
016dh jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 52}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h mov r11,7ff7c7621840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 62 c7 f7 7f 00 00}
017ch mov rax,7ff7c7621840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 18 62 c7 f7 7f 00 00}
0186h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0188h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
018ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
018dh call 7ff7c86f3638h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 71 ff ff}
0192h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 2d}
0194h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0197h mov r11,7ff7c7621848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 62 c7 f7 7f 00 00}
01a1h mov rax,7ff7c7621848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 18 62 c7 f7 7f 00 00}
01abh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01adh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01afh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b2h call 7ff7c86f3638h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 70 ff ff}
01b7h jmp short 01c1h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
01b9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01bch call 7ff7c86fbbd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f f6 ff ff}
01c1h nop                                     ; NOP || o32 90 || encoded[1]{90}
01c2h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01c8h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01ceh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01d1h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01d8h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01d9h pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01dah ret                                     ; RET || C3 || encoded[1]{c3}
01dbh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01deh call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d a2 ab 5e}
01e3h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01e6h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
01f0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b a7 b6 5e}
01f5h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01f8h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01fbh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01fdh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6e 0a 7f 4d}
0202h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0205h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0208h call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 d2 06 ff}
020dh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0210h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f3 ad 5e}
0215h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[8u]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 30 22 cc c8 f7 7f 00 00 e8 ab 96 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 28 24 cc c8 f7 7f 00 00 e8 8d 96 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 50 26 cc c8 f7 7f 00 00 e8 6f 96 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 d8 27 cc c8 f7 7f 00 00 e8 51 96 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb a0 18 62 c7 f7 7f 00 00 48 b8 a0 18 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb a8 18 62 c7 f7 7f 00 00 48 b8 a8 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 18 62 c7 f7 7f 00 00 48 b8 b0 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb b8 18 62 c7 f7 7f 00 00 48 b8 b8 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 ce 8b fc ff 48 b9 18 4c c9 c8 f7 7f 00 00 e8 4f a5 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 18 62 c7 f7 7f 00 00 48 b8 60 18 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 68 18 62 c7 f7 7f 00 00 48 b8 68 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 97 08 fc ff 48 b9 18 4c c9 c8 f7 7f 00 00 e8 b8 a4 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 18 62 c7 f7 7f 00 00 48 b8 70 18 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 78 18 62 c7 f7 7f 00 00 48 b8 78 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 80 18 62 c7 f7 7f 00 00 48 b8 80 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ba 47 fc ff 48 b9 18 4c c9 c8 f7 7f 00 00 e8 eb a3 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 18 62 c7 f7 7f 00 00 48 b8 88 18 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 90 18 62 c7 f7 7f 00 00 48 b8 90 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 98 18 62 c7 f7 7f 00 00 48 b8 98 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d7 39 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 2b f4 ff ff 48 b9 18 4c c9 c8 f7 7f 00 00 e8 2c a3 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 1b 9e ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 e9 a2 b6 5e 48 8b f8 48 8b ce 33 d2 e8 3c 06 7f 4d 48 8b d0 48 8b cf e8 11 ce 06 ff 48 8b cf e8 19 ef ad 5e cc}
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
0026h mov rcx,7ff7c8cc2230h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 22 cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 96 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc2428h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 24 cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 96 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc2650h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 26 cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 96 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc27d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 27 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 96 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76218a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76218a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 18 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76218a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76218a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 18 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 d4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76218b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c76218b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 18 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76218b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c76218b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 18 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 d3 ff ff}
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
015dh call 7ff7c86c5320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 8b fc ff}
0162h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f a5 b6 5e}
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
019dh mov r11,7ff7c7621860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 18 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 18 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 d3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bd080h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 08 fc ff}
01f9h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 a4 b6 5e}
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
0237h mov r11,7ff7c7621870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 18 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 18 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c d2 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 18 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 d2 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c1070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 47 fc ff}
02c6h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb a3 b6 5e}
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
0304h mov r11,7ff7c7621888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 18 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 18 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f9ae0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af d1 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 18 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 39 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fbda0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b f4 ff ff}
0385h mov rcx,7ff7c8c94c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 4c c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c a3 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 9e ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 a2 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 06 7f 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ce 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 ef ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[8i]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 33 cc c8 f7 7f 00 00 e8 6b 92 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 35 cc c8 f7 7f 00 00 e8 4d 92 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 37 cc c8 f7 7f 00 00 e8 2f 92 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 39 cc c8 f7 7f 00 00 e8 11 92 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 00 19 62 c7 f7 7f 00 00 48 b8 00 19 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 08 19 62 c7 f7 7f 00 00 48 b8 08 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e5 d1 ff ff c5 f9 10 70 08 48 8b cf 49 bb 10 19 62 c7 f7 7f 00 00 48 b8 10 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 bd d1 ff ff c5 f9 10 78 08 48 8b cf 49 bb 18 19 62 c7 f7 7f 00 00 48 b8 18 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 95 d1 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 0e 88 fc ff 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 0f a1 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 18 62 c7 f7 7f 00 00 48 b8 c0 18 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb c8 18 62 c7 f7 7f 00 00 48 b8 c8 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e6 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 a7 05 fc ff 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 78 a0 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 18 62 c7 f7 7f 00 00 48 b8 d0 18 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb d8 18 62 c7 f7 7f 00 00 48 b8 d8 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4c d0 ff ff c5 f9 10 70 08 48 8b cb 49 bb e0 18 62 c7 f7 7f 00 00 48 b8 e0 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 d0 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 6a 4a fc ff 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 ab 9f b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 18 62 c7 f7 7f 00 00 48 b8 e8 18 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f0 18 62 c7 f7 7f 00 00 48 b8 f0 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7f cf ff ff c5 f9 10 70 08 48 8b cd 49 bb f8 18 62 c7 f7 7f 00 00 48 b8 f8 18 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 97 35 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 83 f0 ff ff 48 b9 e8 50 c9 c8 f7 7f 00 00 e8 ec 9e b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 db 99 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 a9 9e b6 5e 48 8b f8 48 8b ce 33 d2 e8 fc 01 7f 4d 48 8b d0 48 8b cf e8 d1 c9 06 ff 48 8b cf e8 d9 ea ad 5e cc}
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
0026h mov rcx,7ff7c8cc33b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 33 cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 92 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc35a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 35 cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 92 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc37d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 37 cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 92 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc3958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 39 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 92 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 19 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 19 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 d1 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 19 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd d1 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 19 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 d1 ff ff}
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
015dh call 7ff7c86c53a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 88 fc ff}
0162h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f a1 b6 5e}
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
019dh mov r11,7ff7c76218c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76218c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 18 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76218c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76218c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 18 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 d0 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bd1d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 05 fc ff}
01f9h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 a0 b6 5e}
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
0237h mov r11,7ff7c76218d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c76218d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 18 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76218d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c76218d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 18 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c d0 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76218e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c76218e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 18 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 d0 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c1760h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 4a fc ff}
02c6h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 9f b6 5e}
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
0304h mov r11,7ff7c76218e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c76218e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 18 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76218f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c76218f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 18 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f9cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f cf ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76218f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c76218f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 18 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 35 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fbe38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 f0 ff ff}
0385h mov rcx,7ff7c8c950e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 50 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 9e b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 99 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 9e b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 01 7f 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c9 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 ea ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[16u]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 3b cc c8 f7 7f 00 00 e8 2b 8e b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 3d cc c8 f7 7f 00 00 e8 0d 8e b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 3f cc c8 f7 7f 00 00 e8 ef 8d b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 41 cc c8 f7 7f 00 00 e8 d1 8d b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 60 19 62 c7 f7 7f 00 00 48 b8 60 19 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 68 19 62 c7 f7 7f 00 00 48 b8 68 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b5 cf ff ff c5 f9 10 70 08 48 8b cf 49 bb 70 19 62 c7 f7 7f 00 00 48 b8 70 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8d cf ff ff c5 f9 10 78 08 48 8b cf 49 bb 78 19 62 c7 f7 7f 00 00 48 b8 78 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 65 cf ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 4e 84 fc ff 48 b9 58 55 c9 c8 f7 7f 00 00 e8 cf 9c b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 19 62 c7 f7 7f 00 00 48 b8 20 19 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 28 19 62 c7 f7 7f 00 00 48 b8 28 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b6 ce ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 02 fc ff 48 b9 58 55 c9 c8 f7 7f 00 00 e8 38 9c b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 19 62 c7 f7 7f 00 00 48 b8 30 19 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 38 19 62 c7 f7 7f 00 00 48 b8 38 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1c ce ff ff c5 f9 10 70 08 48 8b cb 49 bb 40 19 62 c7 f7 7f 00 00 48 b8 40 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f4 cd ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 0a 49 fc ff 48 b9 58 55 c9 c8 f7 7f 00 00 e8 6b 9b b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 19 62 c7 f7 7f 00 00 48 b8 48 19 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 50 19 62 c7 f7 7f 00 00 48 b8 50 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4f cd ff ff c5 f9 10 70 08 48 8b cd 49 bb 58 19 62 c7 f7 7f 00 00 48 b8 58 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 57 31 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 ab ec ff ff 48 b9 58 55 c9 c8 f7 7f 00 00 e8 ac 9a b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 9b 95 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 69 9a b6 5e 48 8b f8 48 8b ce 33 d2 e8 bc fd 7e 4d 48 8b d0 48 8b cf e8 91 c5 06 ff 48 8b cf e8 99 e6 ad 5e cc}
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
0026h mov rcx,7ff7c8cc3bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 3b cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 8e b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc3da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3d cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 8e b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc3fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 3f cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 8d b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc4158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 41 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 8d b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 19 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 19 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 cf ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 19 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d cf ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 19 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 cf ff ff}
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
015dh call 7ff7c86c5420h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 84 fc ff}
0162h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 9c b6 5e}
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
019dh mov r11,7ff7c7621920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 19 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 19 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 ce ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bd320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 02 fc ff}
01f9h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 38 9c b6 5e}
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
0237h mov r11,7ff7c7621930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 19 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 19 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c ce ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 19 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f4 cd ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c1a40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 49 fc ff}
02c6h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 9b b6 5e}
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
0304h mov r11,7ff7c7621948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 19 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 19 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86f9f00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f cd ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 19 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 31 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fbea0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ec ff ff}
0385h mov rcx,7ff7c8c95558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 55 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac 9a b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 95 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 9a b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc fd 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c5 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 e6 ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[16i]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 43 cc c8 f7 7f 00 00 e8 db 85 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 45 cc c8 f7 7f 00 00 e8 bd 85 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 47 cc c8 f7 7f 00 00 e8 9f 85 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 49 cc c8 f7 7f 00 00 e8 81 85 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb c0 19 62 c7 f7 7f 00 00 48 b8 c0 19 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb c8 19 62 c7 f7 7f 00 00 48 b8 c8 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 19 62 c7 f7 7f 00 00 48 b8 d0 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 4d c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb d8 19 62 c7 f7 7f 00 00 48 b8 d8 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 25 c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 80 fc ff 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 7f 94 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 19 62 c7 f7 7f 00 00 48 b8 80 19 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 88 19 62 c7 f7 7f 00 00 48 b8 88 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 76 c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 b7 fb fb ff 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 e8 93 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 19 62 c7 f7 7f 00 00 48 b8 90 19 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 98 19 62 c7 f7 7f 00 00 48 b8 98 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 dc c7 ff ff c5 f9 10 70 08 48 8b cb 49 bb a0 19 62 c7 f7 7f 00 00 48 b8 a0 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 c7 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 9a 43 fc ff 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 1b 93 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 19 62 c7 f7 7f 00 00 48 b8 a8 19 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b0 19 62 c7 f7 7f 00 00 48 b8 b0 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 0f c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb b8 19 62 c7 f7 7f 00 00 48 b8 b8 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 29 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 7b f8 ff ff 48 b9 c8 59 c9 c8 f7 7f 00 00 e8 5c 92 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 4b 8d ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 19 92 b6 5e 48 8b f8 48 8b ce 33 d2 e8 6c f5 7e 4d 48 8b d0 48 8b cf e8 41 bd 06 ff 48 8b cf e8 49 de ad 5e cc}
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
0026h mov rcx,7ff7c8cc43b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 43 cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 85 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc45a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 45 cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 85 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc47d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 47 cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 85 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc4958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 49 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 85 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c76219c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c76219c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 19 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c76219c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c76219c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 19 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c9 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c76219d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c76219d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 19 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d c9 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c76219d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c76219d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 19 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 c9 ff ff}
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
015dh call 7ff7c86c58a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 80 fc ff}
0162h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 94 b6 5e}
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
019dh mov r11,7ff7c7621980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 19 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 19 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 c8 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bd470h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 fb fb ff}
01f9h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 93 b6 5e}
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
0237h mov r11,7ff7c7621990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 19 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 19 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc c7 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c76219a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c76219a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 19 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 c7 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c1d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 43 fc ff}
02c6h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 93 b6 5e}
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
0304h mov r11,7ff7c76219a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c76219a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 19 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c76219b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c76219b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 19 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86fa110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c7 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c76219b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c76219b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 19 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 29 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fd2c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b f8 ff ff}
0385h mov rcx,7ff7c8c959c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 59 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 92 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 8d ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 92 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c f5 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 bd 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 de ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[32u]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 4b cc c8 f7 7f 00 00 e8 9b 81 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 4d cc c8 f7 7f 00 00 e8 7d 81 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 4f cc c8 f7 7f 00 00 e8 5f 81 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 51 cc c8 f7 7f 00 00 e8 41 81 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 20 1a 62 c7 f7 7f 00 00 48 b8 20 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 28 1a 62 c7 f7 7f 00 00 48 b8 28 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 45 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 1a 62 c7 f7 7f 00 00 48 b8 30 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 1d c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb 38 1a 62 c7 f7 7f 00 00 48 b8 38 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 be 7c fc ff 48 b9 38 5e c9 c8 f7 7f 00 00 e8 3f 90 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 19 62 c7 f7 7f 00 00 48 b8 e0 19 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb e8 19 62 c7 f7 7f 00 00 48 b8 e8 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 46 c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 c7 f8 fb ff 48 b9 38 5e c9 c8 f7 7f 00 00 e8 a8 8f b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 19 62 c7 f7 7f 00 00 48 b8 f0 19 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb f8 19 62 c7 f7 7f 00 00 48 b8 f8 19 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ac c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb 00 1a 62 c7 f7 7f 00 00 48 b8 00 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 4a 46 fc ff 48 b9 38 5e c9 c8 f7 7f 00 00 e8 db 8e b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1a 62 c7 f7 7f 00 00 48 b8 08 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 10 1a 62 c7 f7 7f 00 00 48 b8 10 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 df c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb 18 1a 62 c7 f7 7f 00 00 48 b8 18 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c7 24 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 a3 f4 ff ff 48 b9 38 5e c9 c8 f7 7f 00 00 e8 1c 8e b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 0b 89 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 d9 8d b6 5e 48 8b f8 48 8b ce 33 d2 e8 2c f1 7e 4d 48 8b d0 48 8b cf e8 01 b9 06 ff 48 8b cf e8 09 da ad 5e cc}
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
0026h mov rcx,7ff7c8cc4bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 4b cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 81 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc4da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4d cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 81 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc4fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 4f cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 81 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc5158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 51 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 81 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1a 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1a 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 c7 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1a 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d c7 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1a 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
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
015dh call 7ff7c86c5920h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 7c fc ff}
0162h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 90 b6 5e}
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
019dh mov r11,7ff7c76219e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c76219e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 19 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c76219e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c76219e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 19 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 c6 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bd5c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f8 fb ff}
01f9h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 8f b6 5e}
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
0237h mov r11,7ff7c76219f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c76219f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 19 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c76219f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c76219f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 19 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1a 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c2410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 46 fc ff}
02c6h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 8e b6 5e}
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
0304h mov r11,7ff7c7621a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1a 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1a 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86fa320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1a 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 24 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fd328h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 f4 ff ff}
0385h mov rcx,7ff7c8c95e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 5e c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 8e b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 89 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 8d b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c f1 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b9 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 da ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[32i]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 53 cc c8 f7 7f 00 00 e8 5b 7d b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 55 cc c8 f7 7f 00 00 e8 3d 7d b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 57 cc c8 f7 7f 00 00 e8 1f 7d b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 59 cc c8 f7 7f 00 00 e8 01 7d b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 80 1a 62 c7 f7 7f 00 00 48 b8 80 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 88 1a 62 c7 f7 7f 00 00 48 b8 88 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 15 c5 ff ff c5 f9 10 70 08 48 8b cf 49 bb 90 1a 62 c7 f7 7f 00 00 48 b8 90 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 ed c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 98 1a 62 c7 f7 7f 00 00 48 b8 98 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 fe 78 fc ff 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 ff 8b b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1a 62 c7 f7 7f 00 00 48 b8 40 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 48 1a 62 c7 f7 7f 00 00 48 b8 48 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 16 c4 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 d7 f9 fb ff 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 68 8b b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1a 62 c7 f7 7f 00 00 48 b8 50 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 58 1a 62 c7 f7 7f 00 00 48 b8 58 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 7c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb 60 1a 62 c7 f7 7f 00 00 48 b8 60 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 54 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 ea 44 fc ff 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 9b 8a b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1a 62 c7 f7 7f 00 00 48 b8 68 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 70 1a 62 c7 f7 7f 00 00 48 b8 70 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 af c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 78 1a 62 c7 f7 7f 00 00 48 b8 78 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 87 20 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 cb f0 ff ff 48 b9 a8 62 c9 c8 f7 7f 00 00 e8 dc 89 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 cb 84 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 99 89 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ec ec 7e 4d 48 8b d0 48 8b cf e8 c1 b4 06 ff 48 8b cf e8 c9 d5 ad 5e cc}
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
0026h mov rcx,7ff7c8cc53b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 53 cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 7d b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc55a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 55 cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 7d b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc57d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 57 cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 7d b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc5958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 59 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 7d b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1a 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1a 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 c5 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1a 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1a 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
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
015dh call 7ff7c86c59a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 78 fc ff}
0162h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 8b b6 5e}
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
019dh mov r11,7ff7c7621a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1a 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1a 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 c4 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bdb10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 f9 fb ff}
01f9h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 68 8b b6 5e}
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
0237h mov r11,7ff7c7621a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1a 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1a 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1a 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 54 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c26f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 44 fc ff}
02c6h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 8a b6 5e}
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
0304h mov r11,7ff7c7621a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1a 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1a 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86fa530h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1a 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 20 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fd390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb f0 ff ff}
0385h mov rcx,7ff7c8c962a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 62 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 89 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 84 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 89 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec ec 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b4 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 d5 ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[64u]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 5b cc c8 f7 7f 00 00 e8 1b 79 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 5d cc c8 f7 7f 00 00 e8 fd 78 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 5f cc c8 f7 7f 00 00 e8 df 78 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 61 cc c8 f7 7f 00 00 e8 c1 78 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb e0 1a 62 c7 f7 7f 00 00 48 b8 e0 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb e8 1a 62 c7 f7 7f 00 00 48 b8 e8 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f5 c6 ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 1a 62 c7 f7 7f 00 00 48 b8 f0 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 cd c6 ff ff c5 f9 10 78 08 48 8b cf 49 bb f8 1a 62 c7 f7 7f 00 00 48 b8 f8 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a5 c6 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 3e 75 fc ff 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 bf 87 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1a 62 c7 f7 7f 00 00 48 b8 a0 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb a8 1a 62 c7 f7 7f 00 00 48 b8 a8 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f6 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 e7 f6 fb ff 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 28 87 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1a 62 c7 f7 7f 00 00 48 b8 b0 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb b8 1a 62 c7 f7 7f 00 00 48 b8 b8 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5c c5 ff ff c5 f9 10 70 08 48 8b cb 49 bb c0 1a 62 c7 f7 7f 00 00 48 b8 c0 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 34 c5 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 8a 43 fc ff 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 5b 86 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1a 62 c7 f7 7f 00 00 48 b8 c8 1a 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d0 1a 62 c7 f7 7f 00 00 48 b8 d0 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 8f c4 ff ff c5 f9 10 70 08 48 8b cd 49 bb d8 1a 62 c7 f7 7f 00 00 48 b8 d8 1a 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 47 1c ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 ec ff ff 48 b9 c8 c4 c9 c8 f7 7f 00 00 e8 9c 85 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 8b 80 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 59 85 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ac e8 7e 4d 48 8b d0 48 8b cf e8 81 b0 06 ff 48 8b cf e8 89 d1 ad 5e cc}
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
0026h mov rcx,7ff7c8cc5bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 5b cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 79 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc5da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 5d cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 78 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc5fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 5f cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 78 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc6158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 61 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 78 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1a 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1a 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 c6 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1a 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd c6 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1a 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 c6 ff ff}
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
015dh call 7ff7c86c5a20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3e 75 fc ff}
0162h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 87 b6 5e}
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
019dh mov r11,7ff7c7621aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1a 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1a 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 c5 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bdc60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 f6 fb ff}
01f9h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 87 b6 5e}
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
0237h mov r11,7ff7c7621ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1a 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1a 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c5 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1a 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 34 c5 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c29d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 43 fc ff}
02c6h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 86 b6 5e}
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
0304h mov r11,7ff7c7621ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1a 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1a 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86fab50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f c4 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1a 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 1c ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fd3f8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ec ff ff}
0385h mov rcx,7ff7c8c9c4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c4 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 85 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 80 ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 85 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac e8 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b0 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 d1 ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[64i]()[1016] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 b0 63 cc c8 f7 7f 00 00 e8 db 74 b6 5e 48 8b f8 48 85 ff 0f 85 59 01 00 00 48 8b d6 48 b9 a8 65 cc c8 f7 7f 00 00 e8 bd 74 b6 5e 48 8b d8 48 85 db 0f 85 d5 01 00 00 48 8b d6 48 b9 d0 67 cc c8 f7 7f 00 00 e8 9f 74 b6 5e 48 8b e8 48 85 ed 0f 85 84 02 00 00 48 8b d6 48 b9 58 69 cc c8 f7 7f 00 00 e8 81 74 b6 5e 48 8b f8 48 85 ff 0f 84 22 03 00 00 48 8b cf 49 bb 40 1b 62 c7 f7 7f 00 00 48 b8 40 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 48 1b 62 c7 f7 7f 00 00 48 b8 48 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c5 c4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 1b 62 c7 f7 7f 00 00 48 b8 50 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 9d c4 ff ff c5 f9 10 78 08 48 8b cf 49 bb 58 1b 62 c7 f7 7f 00 00 48 b8 58 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 75 c4 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 7e 71 fc ff 48 b9 18 67 c9 c8 f7 7f 00 00 e8 7f 83 b6 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1b 62 c7 f7 7f 00 00 48 b8 00 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 08 1b 62 c7 f7 7f 00 00 48 b8 08 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c6 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 f7 f3 fb ff 48 b9 18 67 c9 c8 f7 7f 00 00 e8 e8 82 b6 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1b 62 c7 f7 7f 00 00 48 b8 10 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 18 1b 62 c7 f7 7f 00 00 48 b8 18 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 2c c3 ff ff c5 f9 10 70 08 48 8b cb 49 bb 20 1b 62 c7 f7 7f 00 00 48 b8 20 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 c3 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 2a 42 fc ff 48 b9 18 67 c9 c8 f7 7f 00 00 e8 1b 82 b6 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1b 62 c7 f7 7f 00 00 48 b8 28 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 30 1b 62 c7 f7 7f 00 00 48 b8 30 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 5f c2 ff ff c5 f9 10 70 08 48 8b cd 49 bb 38 1b 62 c7 f7 7f 00 00 48 b8 38 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 07 18 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 1b e9 ff ff 48 b9 18 67 c9 c8 f7 7f 00 00 e8 5c 81 b6 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 4b 7c ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 19 81 b6 5e 48 8b f8 48 8b ce 33 d2 e8 6c e4 7e 4d 48 8b d0 48 8b cf e8 41 ac 06 ff 48 8b cf e8 49 cd ad 5e cc}
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
0026h mov rcx,7ff7c8cc63b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 63 cc c8 f7 7f 00 00}
0030h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 74 b6 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 59 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c8cc65a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 65 cc c8 f7 7f 00 00}
004eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 74 b6 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0234h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d5 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c8cc67d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 67 cc c8 f7 7f 00 00}
006ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 74 b6 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 0301h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 84 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c8cc6958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 69 cc c8 f7 7f 00 00}
008ah call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 74 b6 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 03bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 22 03 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c7621b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 62 c7 f7 7f 00 00}
00a8h mov rax,7ff7c7621b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1b 62 c7 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00b6h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b8h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00bbh mov r11,7ff7c7621b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 62 c7 f7 7f 00 00}
00c5h mov rax,7ff7c7621b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1b 62 c7 f7 7f 00 00}
00cfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d1h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 c4 ff ff}
00dbh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00e0h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e3h mov r11,7ff7c7621b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 62 c7 f7 7f 00 00}
00edh mov rax,7ff7c7621b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1b 62 c7 f7 7f 00 00}
00f7h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00f9h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00fbh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00feh call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c4 ff ff}
0103h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
0108h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
010bh mov r11,7ff7c7621b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 62 c7 f7 7f 00 00}
0115h mov rax,7ff7c7621b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1b 62 c7 f7 7f 00 00}
011fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0121h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0123h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0126h call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 c4 ff ff}
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
015dh call 7ff7c86c5aa0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e 71 fc ff}
0162h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
016ch call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 83 b6 5e}
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
019dh mov r11,7ff7c7621b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 62 c7 f7 7f 00 00}
01a7h mov rax,7ff7c7621b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1b 62 c7 f7 7f 00 00}
01b1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01b3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01b5h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01b7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bah mov r11,7ff7c7621b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 62 c7 f7 7f 00 00}
01c4h mov rax,7ff7c7621b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1b 62 c7 f7 7f 00 00}
01ceh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01d2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01d5h call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 c3 ff ff}
01dah vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01dfh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01e7h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01e9h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01efh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01f4h call 7ff7c86bddb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 f3 fb ff}
01f9h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
0203h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 82 b6 5e}
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
0237h mov r11,7ff7c7621b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 62 c7 f7 7f 00 00}
0241h mov rax,7ff7c7621b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1b 62 c7 f7 7f 00 00}
024bh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
024dh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
024fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0251h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0254h mov r11,7ff7c7621b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 62 c7 f7 7f 00 00}
025eh mov rax,7ff7c7621b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1b 62 c7 f7 7f 00 00}
0268h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
026ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
026ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
026fh call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c c3 ff ff}
0274h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0279h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
027ch mov r11,7ff7c7621b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 62 c7 f7 7f 00 00}
0286h mov rax,7ff7c7621b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1b 62 c7 f7 7f 00 00}
0290h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0292h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0294h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0297h call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 c3 ff ff}
029ch vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
02a1h lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
02a9h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02abh vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
02b1h vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
02b7h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
02bch lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
02c1h call 7ff7c86c2cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 42 fc ff}
02c6h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
02d0h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 82 b6 5e}
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
0304h mov r11,7ff7c7621b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 62 c7 f7 7f 00 00}
030eh mov rax,7ff7c7621b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1b 62 c7 f7 7f 00 00}
0318h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
031ah call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
031ch mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
031eh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0321h mov r11,7ff7c7621b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 62 c7 f7 7f 00 00}
032bh mov rax,7ff7c7621b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1b 62 c7 f7 7f 00 00}
0335h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0337h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0339h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
033ch call 7ff7c86fad60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f c2 ff ff}
0341h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0346h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0349h mov r11,7ff7c7621b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 62 c7 f7 7f 00 00}
0353h mov rax,7ff7c7621b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1b 62 c7 f7 7f 00 00}
035dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
035fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0361h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0364h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 18 ff ff}
0369h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
036eh mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0370h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
0376h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
037bh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0380h call 7ff7c86fd460h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b e9 ff ff}
0385h mov rcx,7ff7c8c96718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 67 c9 c8 f7 7f 00 00}
038fh call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 81 b6 5e}
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
03c0h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 7c ab 5e}
03c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
03c8h mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
03d2h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 81 b6 5e}
03d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
03dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
03ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
03dfh call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c e4 7e 4d}
03e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
03e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03eah call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ac 06 ff}
03efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03f2h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 cd ad 5e}
03f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[8u]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 68 71 cc c8 f7 7f 00 00 e8 89 70 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 60 73 cc c8 f7 7f 00 00 e8 6b 70 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 88 75 cc c8 f7 7f 00 00 e8 4d 70 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 10 77 cc c8 f7 7f 00 00 e8 2f 70 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb a0 1b 62 c7 f7 7f 00 00 48 b8 a0 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb a8 1b 62 c7 f7 7f 00 00 48 b8 a8 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 83 c2 ff ff c5 fd 10 70 08 48 8b cf 49 bb b0 1b 62 c7 f7 7f 00 00 48 b8 b0 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 55 c2 ff ff c5 7d 10 40 08 48 8b cf 49 bb b8 1b 62 c7 f7 7f 00 00 48 b8 b8 1b 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 27 c2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 91 6d fc ff 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 12 7f b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 1b 62 c7 f7 7f 00 00 48 b8 60 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 68 1b 62 c7 f7 7f 00 00 48 b8 68 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 51 c1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c2 f0 fb ff 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 63 7e b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 1b 62 c7 f7 7f 00 00 48 b8 70 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 78 1b 62 c7 f7 7f 00 00 48 b8 78 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a2 c0 ff ff c5 fd 10 70 08 48 8b cb 49 bb 80 1b 62 c7 f7 7f 00 00 48 b8 80 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 74 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 74 44 fc ff 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 75 7d b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 1b 62 c7 f7 7f 00 00 48 b8 88 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 90 1b 62 c7 f7 7f 00 00 48 b8 90 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b4 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb 98 1b 62 c7 f7 7f 00 00 48 b8 98 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 46 13 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 21 e6 ff ff 48 b9 a0 71 c9 c8 f7 7f 00 00 e8 92 7c b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 69 77 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 37 7c b6 5e 48 8b f8 48 8b ce 33 d2 e8 8a df 7e 4d 48 8b d0 48 8b cf e8 5f a7 06 ff 48 8b cf e8 67 c8 ad 5e cc}
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
0038h mov rcx,7ff7c8cc7168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 71 cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 70 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cc7360h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 73 cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 70 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cc7588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 75 cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 70 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cc7710h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 77 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 70 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1b 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1b 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 c2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1b 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 c2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1b 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c2 ff ff}
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
018ah call 7ff7c86c5b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 6d fc ff}
018fh mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 7f b6 5e}
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
01e2h mov r11,7ff7c7621b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1b 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1b 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 c1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86bdf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 f0 fb ff}
023eh mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 7e b6 5e}
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
0291h mov r11,7ff7c7621b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1b 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1b 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 c0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1b 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 c0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c33a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 44 fc ff}
032ch mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 7d b6 5e}
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
037fh mov r11,7ff7c7621b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1b 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1b 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86faf70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b4 bf ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1b 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 13 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86fd630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e6 ff ff}
040fh mov rcx,7ff7c8c971a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 71 c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 7c b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 77 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 7c b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a df 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f a7 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 c8 ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[8i]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 82 cc c8 f7 7f 00 00 e8 89 67 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 84 cc c8 f7 7f 00 00 e8 6b 67 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 87 cc c8 f7 7f 00 00 e8 4d 67 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 88 cc c8 f7 7f 00 00 e8 2f 67 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 00 1c 62 c7 f7 7f 00 00 48 b8 00 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 08 1c 62 c7 f7 7f 00 00 48 b8 08 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d3 bb ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 1c 62 c7 f7 7f 00 00 48 b8 10 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a5 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb 18 1c 62 c7 f7 7f 00 00 48 b8 18 1c 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 77 bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 11 65 fc ff 48 b9 70 76 c9 c8 f7 7f 00 00 e8 12 76 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 1b 62 c7 f7 7f 00 00 48 b8 c0 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb c8 1b 62 c7 f7 7f 00 00 48 b8 c8 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 a1 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 22 e9 fb ff 48 b9 70 76 c9 c8 f7 7f 00 00 e8 63 75 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 1b 62 c7 f7 7f 00 00 48 b8 d0 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb d8 1b 62 c7 f7 7f 00 00 48 b8 d8 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb e0 1b 62 c7 f7 7f 00 00 48 b8 e0 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c4 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 70 76 c9 c8 f7 7f 00 00 e8 75 74 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 1b 62 c7 f7 7f 00 00 48 b8 e8 1b 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb f0 1b 62 c7 f7 7f 00 00 48 b8 f0 1b 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 04 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb f8 1b 62 c7 f7 7f 00 00 48 b8 f8 1b 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 46 0a ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 01 f8 ff ff 48 b9 70 76 c9 c8 f7 7f 00 00 e8 92 73 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 69 6e ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 37 73 b6 5e 48 8b f8 48 8b ce 33 d2 e8 8a d6 7e 4d 48 8b d0 48 8b cf e8 5f 9e 06 ff 48 8b cf e8 67 bf ad 5e cc}
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
0038h mov rcx,7ff7c8cc82e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 82 cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 67 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cc84e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 84 cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 67 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cc8708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 87 cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 67 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cc8890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 88 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 67 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1c 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1c 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 bb ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1c 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 bb ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1c 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
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
018ah call 7ff7c86c5ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 65 fc ff}
018fh mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 76 b6 5e}
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
01e2h mov r11,7ff7c7621bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1b 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1b 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 ba ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be060h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 e9 fb ff}
023eh mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 75 b6 5e}
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
0291h mov r11,7ff7c7621bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1b 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1b 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 b9 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1b 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b9 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c3690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 74 b6 5e}
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
037fh mov r11,7ff7c7621be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1b 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1b 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fb1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 b9 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1b 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 0a ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f8 ff ff}
040fh mov rcx,7ff7c8c97670h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 76 c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 73 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 6e ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 73 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d6 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 9e 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 bf ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[16u]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 8a cc c8 f7 7f 00 00 e8 99 62 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 8c cc c8 f7 7f 00 00 e8 7b 62 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 8f cc c8 f7 7f 00 00 e8 5d 62 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 90 cc c8 f7 7f 00 00 e8 3f 62 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 60 1c 62 c7 f7 7f 00 00 48 b8 60 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 68 1c 62 c7 f7 7f 00 00 48 b8 68 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 33 b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 1c 62 c7 f7 7f 00 00 48 b8 70 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 05 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 78 1c 62 c7 f7 7f 00 00 48 b8 78 1c 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 d7 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 a1 60 fc ff 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 22 71 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 1c 62 c7 f7 7f 00 00 48 b8 20 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 28 1c 62 c7 f7 7f 00 00 48 b8 28 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 01 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 92 e5 fb ff 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 73 70 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 1c 62 c7 f7 7f 00 00 48 b8 30 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 38 1c 62 c7 f7 7f 00 00 48 b8 38 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 52 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb 40 1c 62 c7 f7 7f 00 00 48 b8 40 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 24 b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 40 fc ff 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 85 6f b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 1c 62 c7 f7 7f 00 00 48 b8 48 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 50 1c 62 c7 f7 7f 00 00 48 b8 50 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 64 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 58 1c 62 c7 f7 7f 00 00 48 b8 58 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 56 05 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 79 f3 ff ff 48 b9 e0 7a c9 c8 f7 7f 00 00 e8 a2 6e b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 79 69 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 47 6e b6 5e 48 8b f8 48 8b ce 33 d2 e8 9a d1 7e 4d 48 8b d0 48 8b cf e8 6f 99 06 ff 48 8b cf e8 77 ba ad 5e cc}
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
0038h mov rcx,7ff7c8cc8ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 8a cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 62 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cc8ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 8c cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 62 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cc8f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 8f cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 62 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cc9090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 90 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 62 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1c 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1c 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 b9 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1c 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1c 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b8 ff ff}
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
018ah call 7ff7c86c5c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 60 fc ff}
018fh mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 71 b6 5e}
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
01e2h mov r11,7ff7c7621c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1c 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1c 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 b8 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be1c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 e5 fb ff}
023eh mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 70 b6 5e}
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
0291h mov r11,7ff7c7621c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1c 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1c 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 b7 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1c 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b7 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c3d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 40 fc ff}
032ch mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 6f b6 5e}
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
037fh mov r11,7ff7c7621c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1c 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1c 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fb410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 b6 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1c 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 05 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff178h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 f3 ff ff}
040fh mov rcx,7ff7c8c97ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7a c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 6e b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 69 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 6e b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a d1 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 99 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 ba ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[16i]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 92 cc c8 f7 7f 00 00 e8 a9 5d b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 94 cc c8 f7 7f 00 00 e8 8b 5d b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 97 cc c8 f7 7f 00 00 e8 6d 5d b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 98 cc c8 f7 7f 00 00 e8 4f 5d b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb c0 1c 62 c7 f7 7f 00 00 48 b8 c0 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb c8 1c 62 c7 f7 7f 00 00 48 b8 c8 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 93 b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb d0 1c 62 c7 f7 7f 00 00 48 b8 d0 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 65 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb d8 1c 62 c7 f7 7f 00 00 48 b8 d8 1c 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 37 b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 31 5c fc ff 48 b9 50 7f c9 c8 f7 7f 00 00 e8 32 6c b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 1c 62 c7 f7 7f 00 00 48 b8 80 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 88 1c 62 c7 f7 7f 00 00 48 b8 88 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 61 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 02 e2 fb ff 48 b9 50 7f c9 c8 f7 7f 00 00 e8 83 6b b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 1c 62 c7 f7 7f 00 00 48 b8 90 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 98 1c 62 c7 f7 7f 00 00 48 b8 98 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb a0 1c 62 c7 f7 7f 00 00 48 b8 a0 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 84 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 50 7f c9 c8 f7 7f 00 00 e8 95 6a b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 1c 62 c7 f7 7f 00 00 48 b8 a8 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb b0 1c 62 c7 f7 7f 00 00 48 b8 b0 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c4 b3 ff ff c5 fd 10 70 08 48 8b cd 49 bb b8 1c 62 c7 f7 7f 00 00 48 b8 b8 1c 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 66 00 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f1 ee ff ff 48 b9 50 7f c9 c8 f7 7f 00 00 e8 b2 69 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 89 64 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 57 69 b6 5e 48 8b f8 48 8b ce 33 d2 e8 aa cc 7e 4d 48 8b d0 48 8b cf e8 7f 94 06 ff 48 8b cf e8 87 b5 ad 5e cc}
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
0038h mov rcx,7ff7c8cc92e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 92 cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 5d b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cc94e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 94 cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 5d b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cc9708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 97 cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 5d b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cc9890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 98 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 5d b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1c 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1c 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 b6 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1c 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 b6 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1c 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 b6 ff ff}
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
018ah call 7ff7c86c5ca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5c fc ff}
018fh mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 6c b6 5e}
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
01e2h mov r11,7ff7c7621c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1c 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1c 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 b5 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be320h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 e2 fb ff}
023eh mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 83 6b b6 5e}
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
0291h mov r11,7ff7c7621c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1c 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1c 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 b4 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1c 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b4 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c4070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 6a b6 5e}
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
037fh mov r11,7ff7c7621ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1c 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1c 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fb660h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c4 b3 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1c 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 00 ff ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff1e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 ee ff ff}
040fh mov rcx,7ff7c8c97f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 7f c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 69 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 64 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 69 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa cc 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 94 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 b5 ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[32u]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 9a cc c8 f7 7f 00 00 e8 b9 58 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 9c cc c8 f7 7f 00 00 e8 9b 58 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 9f cc c8 f7 7f 00 00 e8 7d 58 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 a0 cc c8 f7 7f 00 00 e8 5f 58 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 20 1d 62 c7 f7 7f 00 00 48 b8 20 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 28 1d 62 c7 f7 7f 00 00 48 b8 28 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 f3 b3 ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 1d 62 c7 f7 7f 00 00 48 b8 30 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 c5 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb 38 1d 62 c7 f7 7f 00 00 48 b8 38 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 97 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c1 57 fc ff 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 42 67 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 1c 62 c7 f7 7f 00 00 48 b8 e0 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb e8 1c 62 c7 f7 7f 00 00 48 b8 e8 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 c1 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 72 de fb ff 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 93 66 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 1c 62 c7 f7 7f 00 00 48 b8 f0 1c 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb f8 1c 62 c7 f7 7f 00 00 48 b8 f8 1c 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 12 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb 00 1d 62 c7 f7 7f 00 00 48 b8 00 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e4 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 a5 65 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1d 62 c7 f7 7f 00 00 48 b8 08 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 10 1d 62 c7 f7 7f 00 00 48 b8 10 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 24 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb 18 1d 62 c7 f7 7f 00 00 48 b8 18 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 76 fb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 ea ff ff 48 b9 c0 83 c9 c8 f7 7f 00 00 e8 c2 64 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 99 5f ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 67 64 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ba c7 7e 4d 48 8b d0 48 8b cf e8 8f 8f 06 ff 48 8b cf e8 97 b0 ad 5e cc}
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
0038h mov rcx,7ff7c8cc9ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 9a cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 58 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cc9ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 9c cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 58 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cc9f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 9f cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 58 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cca090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a0 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 58 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1d 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1d 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 b3 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1d 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 b3 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1d 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b3 ff ff}
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
018ah call 7ff7c86c5d20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 57 fc ff}
018fh mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 67 b6 5e}
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
01e2h mov r11,7ff7c7621ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1c 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1c 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 b2 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be480h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 de fb ff}
023eh mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 66 b6 5e}
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
0291h mov r11,7ff7c7621cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1c 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1c 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 b2 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1d 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 b1 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c4360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a5 65 b6 5e}
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
037fh mov r11,7ff7c7621d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1d 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1d 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fb8b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 24 b1 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1d 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 fb fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff248h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 ea ff ff}
040fh mov rcx,7ff7c8c983c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 83 c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 64 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 5f ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 64 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c7 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 8f 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 b0 ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[32i]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 a2 cc c8 f7 7f 00 00 e8 c9 53 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 a4 cc c8 f7 7f 00 00 e8 ab 53 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 a7 cc c8 f7 7f 00 00 e8 8d 53 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 a8 cc c8 f7 7f 00 00 e8 6f 53 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 80 1d 62 c7 f7 7f 00 00 48 b8 80 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 88 1d 62 c7 f7 7f 00 00 48 b8 88 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 53 b5 ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 1d 62 c7 f7 7f 00 00 48 b8 90 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 25 b5 ff ff c5 7d 10 40 08 48 8b cf 49 bb 98 1d 62 c7 f7 7f 00 00 48 b8 98 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 f7 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 51 53 fc ff 48 b9 30 88 c9 c8 f7 7f 00 00 e8 52 62 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1d 62 c7 f7 7f 00 00 48 b8 40 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 48 1d 62 c7 f7 7f 00 00 48 b8 48 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 21 b4 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e2 da fb ff 48 b9 30 88 c9 c8 f7 7f 00 00 e8 a3 61 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1d 62 c7 f7 7f 00 00 48 b8 50 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 58 1d 62 c7 f7 7f 00 00 48 b8 58 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 72 b3 ff ff c5 fd 10 70 08 48 8b cb 49 bb 60 1d 62 c7 f7 7f 00 00 48 b8 60 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 44 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3e fc ff 48 b9 30 88 c9 c8 f7 7f 00 00 e8 b5 60 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1d 62 c7 f7 7f 00 00 48 b8 68 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 70 1d 62 c7 f7 7f 00 00 48 b8 70 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 84 b2 ff ff c5 fd 10 70 08 48 8b cd 49 bb 78 1d 62 c7 f7 7f 00 00 48 b8 78 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 86 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 e1 e5 ff ff 48 b9 30 88 c9 c8 f7 7f 00 00 e8 d2 5f b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 a9 5a ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 77 5f b6 5e 48 8b f8 48 8b ce 33 d2 e8 ca c2 7e 4d 48 8b d0 48 8b cf e8 9f 8a 06 ff 48 8b cf e8 a7 ab ad 5e cc}
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
0038h mov rcx,7ff7c8cca2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 a2 cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 53 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8cca4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 a4 cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 53 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8cca708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a7 cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 53 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8cca890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a8 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 53 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 80 1d 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 88 1d 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 b5 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 90 1d 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 b5 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 98 1d 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b4 ff ff}
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
018ah call 7ff7c86c5da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 53 fc ff}
018fh mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 62 b6 5e}
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
01e2h mov r11,7ff7c7621d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1d 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1d 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 b4 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be5e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 da fb ff}
023eh mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 61 b6 5e}
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
0291h mov r11,7ff7c7621d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1d 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1d 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 b3 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 60 1d 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 b3 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c4a50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3e fc ff}
032ch mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b5 60 b6 5e}
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
037fh mov r11,7ff7c7621d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 68 1d 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 70 1d 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fbf00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 84 b2 ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 78 1d 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 f6 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff2b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 e5 ff ff}
040fh mov rcx,7ff7c8c98830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 88 c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 5f b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 5a ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 5f b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca c2 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 8a 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 ab ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[64u]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 aa cc c8 f7 7f 00 00 e8 d9 4e b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 ac cc c8 f7 7f 00 00 e8 bb 4e b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 af cc c8 f7 7f 00 00 e8 9d 4e b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 b0 cc c8 f7 7f 00 00 e8 7f 4e b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb e0 1d 62 c7 f7 7f 00 00 48 b8 e0 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb e8 1d 62 c7 f7 7f 00 00 48 b8 e8 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 b3 b2 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 1d 62 c7 f7 7f 00 00 48 b8 f0 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 85 b2 ff ff c5 7d 10 40 08 48 8b cf 49 bb f8 1d 62 c7 f7 7f 00 00 48 b8 f8 1d 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 57 b2 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e1 4e fc ff 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 62 5d b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1d 62 c7 f7 7f 00 00 48 b8 a0 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb a8 1d 62 c7 f7 7f 00 00 48 b8 a8 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 81 b1 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 52 d7 fb ff 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 b3 5c b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1d 62 c7 f7 7f 00 00 48 b8 b0 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb b8 1d 62 c7 f7 7f 00 00 48 b8 b8 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 d2 b0 ff ff c5 fd 10 70 08 48 8b cb 49 bb c0 1d 62 c7 f7 7f 00 00 48 b8 c0 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a4 b0 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3c fc ff 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 c5 5b b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1d 62 c7 f7 7f 00 00 48 b8 c8 1d 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb d0 1d 62 c7 f7 7f 00 00 48 b8 d0 1d 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e4 af ff ff c5 fd 10 70 08 48 8b cd 49 bb d8 1d 62 c7 f7 7f 00 00 48 b8 d8 1d 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 96 f1 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 e1 ff ff 48 b9 20 d3 c9 c8 f7 7f 00 00 e8 e2 5a b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b9 55 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 87 5a b6 5e 48 8b f8 48 8b ce 33 d2 e8 da bd 7e 4d 48 8b d0 48 8b cf e8 af 85 06 ff 48 8b cf e8 b7 a6 ad 5e cc}
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
0038h mov rcx,7ff7c8ccaae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 aa cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 4e b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8ccace0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 ac cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 4e b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8ccaf08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 af cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 4e b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8ccb090h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b0 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 4e b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e0 1d 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 e8 1d 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 b2 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f0 1d 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b2 ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 f8 1d 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 b2 ff ff}
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
018ah call 7ff7c86c5e20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 4e fc ff}
018fh mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 5d b6 5e}
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
01e2h mov r11,7ff7c7621da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a0 1d 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 a8 1d 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 b1 ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86be740h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 d7 fb ff}
023eh mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b3 5c b6 5e}
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
0291h mov r11,7ff7c7621db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b0 1d 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 b8 1d 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 b0 ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c0 1d 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a4 b0 ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c4d40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3c fc ff}
032ch mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 5b b6 5e}
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
037fh mov r11,7ff7c7621dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 c8 1d 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d0 1d 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fc150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 af ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 d8 1d 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f1 fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff318h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 e1 ff ff}
040fh mov rcx,7ff7c8c9d320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 d3 c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 5a b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 55 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 5a b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da bd 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 85 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 a6 ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[64i]()[1178] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 e8 b2 cc c8 f7 7f 00 00 e8 e9 49 b6 5e 48 8b f8 48 85 ff 0f 85 8c 01 00 00 48 8b d6 48 b9 e0 b4 cc c8 f7 7f 00 00 e8 cb 49 b6 5e 48 8b d8 48 85 db 0f 85 1d 02 00 00 48 8b d6 48 b9 08 b7 cc c8 f7 7f 00 00 e8 ad 49 b6 5e 48 8b e8 48 85 ed 0f 85 ed 02 00 00 48 8b d6 48 b9 90 b8 cc c8 f7 7f 00 00 e8 8f 49 b6 5e 48 8b f8 48 85 ff 0f 84 b2 03 00 00 48 8b cf 49 bb 40 1e 62 c7 f7 7f 00 00 48 b8 40 1e 62 c7 f7 7f 00 00 39 09 ff 10 8b d8 48 8b cf 49 bb 48 1e 62 c7 f7 7f 00 00 48 b8 48 1e 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 13 b0 ff ff c5 fd 10 70 08 48 8b cf 49 bb 50 1e 62 c7 f7 7f 00 00 48 b8 50 1e 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 e5 af ff ff c5 7d 10 40 08 48 8b cf 49 bb 58 1e 62 c7 f7 7f 00 00 48 b8 58 1e 62 c7 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 10 48 8b c8 e8 b7 af ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 71 4e fc ff 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 72 58 b6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1e 62 c7 f7 7f 00 00 48 b8 00 1e 62 c7 f7 7f 00 00 39 09 ff 10 8b e8 48 8b cf 49 bb 08 1e 62 c7 f7 7f 00 00 48 b8 08 1e 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 e1 ae ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c2 d7 fb ff 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 c3 57 b6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1e 62 c7 f7 7f 00 00 48 b8 10 1e 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cb 49 bb 18 1e 62 c7 f7 7f 00 00 48 b8 18 1e 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 32 ae ff ff c5 fd 10 70 08 48 8b cb 49 bb 20 1e 62 c7 f7 7f 00 00 48 b8 20 1e 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 04 ae ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 64 3a fc ff 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 d5 56 b6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1e 62 c7 f7 7f 00 00 48 b8 28 1e 62 c7 f7 7f 00 00 39 09 ff 10 8b f0 48 8b cd 49 bb 30 1e 62 c7 f7 7f 00 00 48 b8 30 1e 62 c7 f7 7f 00 00 39 09 ff 10 48 8b c8 e8 44 ad ff ff c5 fd 10 70 08 48 8b cd 49 bb 38 1e 62 c7 f7 7f 00 00 48 b8 38 1e 62 c7 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 10 48 8b c8 e8 a6 ec fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 d1 dc ff ff 48 b9 a0 8c c9 c8 f7 7f 00 00 e8 f2 55 b6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 c9 50 ab 5e 48 8b f0 48 b9 d8 57 98 c7 f7 7f 00 00 e8 97 55 b6 5e 48 8b f8 48 8b ce 33 d2 e8 ea b8 7e 4d 48 8b d0 48 8b cf e8 bf 80 06 ff 48 8b cf e8 c7 a1 ad 5e cc}
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
0038h mov rcx,7ff7c8ccb2e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 b2 cc c8 f7 7f 00 00}
0042h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 49 b6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01dfh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 8c 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c8ccb4e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 b4 cc c8 f7 7f 00 00}
0060h call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 49 b6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 028eh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 1d 02 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c8ccb708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 b7 cc c8 f7 7f 00 00}
007eh call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 49 b6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 037ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 ed 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c8ccb890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b8 cc c8 f7 7f 00 00}
009ch call 7ff827265cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 49 b6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 045fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 b2 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c7621e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 62 c7 f7 7f 00 00}
00bah mov rax,7ff7c7621e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 40 1e 62 c7 f7 7f 00 00}
00c4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c6h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00c8h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00cah mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cdh mov r11,7ff7c7621e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 62 c7 f7 7f 00 00}
00d7h mov rax,7ff7c7621e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 48 1e 62 c7 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
00e5h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e8h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 b0 ff ff}
00edh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00f2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f5h mov r11,7ff7c7621e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 62 c7 f7 7f 00 00}
00ffh mov rax,7ff7c7621e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 50 1e 62 c7 f7 7f 00 00}
0109h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
010fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0111h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0113h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0116h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 af ff ff}
011bh vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
0120h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0123h mov r11,7ff7c7621e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 62 c7 f7 7f 00 00}
012dh mov rax,7ff7c7621e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 58 1e 62 c7 f7 7f 00 00}
0137h vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
013dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013fh call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0141h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0144h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 af ff ff}
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
018ah call 7ff7c86c62a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4e fc ff}
018fh mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
0199h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 58 b6 5e}
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
01e2h mov r11,7ff7c7621e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 62 c7 f7 7f 00 00}
01ech mov rax,7ff7c7621e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 00 1e 62 c7 f7 7f 00 00}
01f6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01f8h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
01fah mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01fch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01ffh mov r11,7ff7c7621e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 62 c7 f7 7f 00 00}
0209h mov rax,7ff7c7621e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 08 1e 62 c7 f7 7f 00 00}
0213h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0215h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0217h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
021ah call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 ae ff ff}
021fh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0224h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
022ch mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
022eh vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0234h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0239h call 7ff7c86beca0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 d7 fb ff}
023eh mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
0248h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 57 b6 5e}
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
0291h mov r11,7ff7c7621e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 62 c7 f7 7f 00 00}
029bh mov rax,7ff7c7621e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 10 1e 62 c7 f7 7f 00 00}
02a5h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02a7h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02a9h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02abh mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02aeh mov r11,7ff7c7621e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 62 c7 f7 7f 00 00}
02b8h mov rax,7ff7c7621e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 18 1e 62 c7 f7 7f 00 00}
02c2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02c4h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02c6h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c9h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 ae ff ff}
02ceh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02d3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02d6h mov r11,7ff7c7621e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 62 c7 f7 7f 00 00}
02e0h mov rax,7ff7c7621e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 20 1e 62 c7 f7 7f 00 00}
02eah vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02f0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
02f4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02f7h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 04 ae ff ff}
02fch vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0301h lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
0309h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
030bh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
0311h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0317h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
031dh lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0322h lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
0327h call 7ff7c86c5030h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 3a fc ff}
032ch mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
0336h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 56 b6 5e}
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
037fh mov r11,7ff7c7621e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 62 c7 f7 7f 00 00}
0389h mov rax,7ff7c7621e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 28 1e 62 c7 f7 7f 00 00}
0393h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0395h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
0397h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0399h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
039ch mov r11,7ff7c7621e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 62 c7 f7 7f 00 00}
03a6h mov rax,7ff7c7621e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 30 1e 62 c7 f7 7f 00 00}
03b0h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03b2h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03b4h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03b7h call 7ff7c86fc3a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 44 ad ff ff}
03bch vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
03c1h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
03c4h mov r11,7ff7c7621e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 62 c7 f7 7f 00 00}
03ceh mov rax,7ff7c7621e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b8 38 1e 62 c7 f7 7f 00 00}
03d8h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
03deh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
03e0h call qword ptr [rax]                    ; CALL r/m64 || FF /2 || encoded[2]{ff 10}
03e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
03e5h call 7ff7c86f0330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ec fe ff}
03eah lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03f2h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03f4h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03fah vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
0400h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0405h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
040ah call 7ff7c86ff380h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 dc ff ff}
040fh mov rcx,7ff7c8c98ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8c c9 c8 f7 7f 00 00}
0419h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 55 b6 5e}
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
0462h call 7ff8271b67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 50 ab 5e}
0467h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
046ah mov rcx,7ff7c79857d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 57 98 c7 f7 7f 00 00}
0474h call 7ff827266cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 55 b6 5e}
0479h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
047ch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
047fh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0481h call 7ff815eed010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea b8 7e 4d}
0486h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0489h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
048ch call 7ff7c77697f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 80 06 ff}
0491h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0494h call 7ff8271db900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 a1 ad 5e}
0499h int 3                                   ; INT3 || CC || encoded[1]{cc}
