------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 00 99 58 c7 f7 7f 00 00 e8 2c 5e c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 08 34 5b c7 f7 7f 00 00 e8 11 5e c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 f0 34 5b c7 f7 7f 00 00 e8 f6 5d c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 a0 35 5b c7 f7 7f 00 00 e8 db 5d c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 50 9a 58 c7 f7 7f 00 00 e8 c0 5d c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 58 17 26 c6 f7 7f 00 00 39 09 ff 15 27 18 03 ff 48 8b c8 e8 ef 96 ff ff c5 f9 10 70 08 48 8b cf 49 bb 60 17 26 c6 f7 7f 00 00 39 09 ff 15 0d 18 03 ff 48 8b c8 e8 cd 96 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 d0 97 58 c7 f7 7f 00 00 e8 35 6d c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 40 17 26 c6 f7 7f 00 00 39 09 ff 15 a1 17 03 ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 02 6d c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 48 17 26 c6 f7 7f 00 00 39 09 ff 15 78 17 03 ff 48 8b c8 e8 50 96 ff ff eb 27 48 8b c8 49 bb 50 17 26 c6 f7 7f 00 00 39 09 ff 15 61 17 03 ff 48 8b c8 e8 31 96 ff ff eb 08 48 8b c8 e8 5f f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 b9 67 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 87 6c c7 5e 48 8b f8 48 8b ce 33 d2 e8 da cf c9 4e 48 8b d0 48 8b cf e8 d7 e1 17 ff 48 8b cf e8 b7 b8 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7589900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 99 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 5e c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b3408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 34 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 5e c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b34f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 34 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 5d c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b35a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 35 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 5d c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7589a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 9a 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 5d c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261758h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fce7d9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 18 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 96 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fce7f3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0d 18 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 96 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 35 6d c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fce85fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 17 03 ff}
011fh mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 6d c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fce888h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 17 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 96 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261750h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fce89fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 17 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 96 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722f860h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f8 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 67 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 6c c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da cf c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e1 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 b8 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 d0 9d 58 c7 f7 7f 00 00 e8 3c 5c c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 c0 3a 5b c7 f7 7f 00 00 e8 21 5c c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 a8 3b 5b c7 f7 7f 00 00 e8 06 5c c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 58 3c 5b c7 f7 7f 00 00 e8 eb 5b c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 20 9f 58 c7 f7 7f 00 00 e8 d0 5b c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 80 17 26 c6 f7 7f 00 00 39 09 ff 15 5f 16 03 ff 48 8b c8 e8 2f 95 ff ff c5 f9 10 70 08 48 8b cf 49 bb 88 17 26 c6 f7 7f 00 00 39 09 ff 15 45 16 03 ff 48 8b c8 e8 0d 95 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 45 6b c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 68 17 26 c6 f7 7f 00 00 39 09 ff 15 d9 15 03 ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 12 6b c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 70 17 26 c6 f7 7f 00 00 39 09 ff 15 b0 15 03 ff 48 8b c8 e8 90 94 ff ff eb 27 48 8b c8 49 bb 78 17 26 c6 f7 7f 00 00 39 09 ff 15 99 15 03 ff 48 8b c8 e8 71 94 ff ff eb 08 48 8b c8 e8 0f f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 c9 65 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 97 6a c7 5e 48 8b f8 48 8b ce 33 d2 e8 ea cd c9 4e 48 8b d0 48 8b cf e8 e7 df 17 ff 48 8b cf e8 c7 b6 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7589dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9d 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 5c c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b3ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 3a 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 5c c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b3ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 3b 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 5c c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b3c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 3c 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 5b c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c7589f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9f 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 5b c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fce9a1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f 16 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 95 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fce9bbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 16 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 95 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 45 6b c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcea27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 15 03 ff}
011fh mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 6b c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcea50h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 15 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 94 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcea67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 15 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 94 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722f900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 65 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 6a c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea cd c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 df 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 b6 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 40 a2 58 c7 f7 7f 00 00 e8 4c 5a c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 78 3d 5b c7 f7 7f 00 00 e8 31 5a c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 60 3e 5b c7 f7 7f 00 00 e8 16 5a c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 10 3f 5b c7 f7 7f 00 00 e8 fb 59 c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 90 a3 58 c7 f7 7f 00 00 e8 e0 59 c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb a8 17 26 c6 f7 7f 00 00 39 09 ff 15 97 14 03 ff 48 8b c8 e8 5f 93 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 17 26 c6 f7 7f 00 00 39 09 ff 15 7d 14 03 ff 48 8b c8 e8 3d 93 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 10 a1 58 c7 f7 7f 00 00 e8 55 69 c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 90 17 26 c6 f7 7f 00 00 39 09 ff 15 11 14 03 ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 22 69 c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 98 17 26 c6 f7 7f 00 00 39 09 ff 15 e8 13 03 ff 48 8b c8 e8 c0 92 ff ff eb 27 48 8b c8 49 bb a0 17 26 c6 f7 7f 00 00 39 09 ff 15 d1 13 03 ff 48 8b c8 e8 a1 92 ff ff eb 08 48 8b c8 e8 77 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 d9 63 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 a7 68 c7 5e 48 8b f8 48 8b ce 33 d2 e8 fa cb c9 4e 48 8b d0 48 8b cf e8 f7 dd 17 ff 48 8b cf e8 d7 b4 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c758a240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a2 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c 5a c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b3d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 3d 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 5a c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b3e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 3e 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 5a c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b3f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 3f 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb 59 c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c758a390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a3 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 59 c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fceb69h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 14 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 93 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62617b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fceb83h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7d 14 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 93 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 55 69 c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcebefh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 14 03 ff}
011fh mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 69 c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcec18h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 13 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 92 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcec2fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 13 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 92 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722f958h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f5 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 63 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 68 c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa cb c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 dd 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 b4 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 b0 a6 58 c7 f7 7f 00 00 e8 5c 58 c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 30 40 5b c7 f7 7f 00 00 e8 41 58 c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 18 41 5b c7 f7 7f 00 00 e8 26 58 c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 c8 41 5b c7 f7 7f 00 00 e8 0b 58 c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 00 a8 58 c7 f7 7f 00 00 e8 f0 57 c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb d0 17 26 c6 f7 7f 00 00 39 09 ff 15 cf 12 03 ff 48 8b c8 e8 8f 91 ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 17 26 c6 f7 7f 00 00 39 09 ff 15 b5 12 03 ff 48 8b c8 e8 6d 91 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 80 a5 58 c7 f7 7f 00 00 e8 65 67 c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b8 17 26 c6 f7 7f 00 00 39 09 ff 15 49 12 03 ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 32 67 c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb c0 17 26 c6 f7 7f 00 00 39 09 ff 15 20 12 03 ff 48 8b c8 e8 f0 90 ff ff eb 27 48 8b c8 49 bb c8 17 26 c6 f7 7f 00 00 39 09 ff 15 09 12 03 ff 48 8b c8 e8 d1 90 ff ff eb 08 48 8b c8 e8 df f3 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 e9 61 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 b7 66 c7 5e 48 8b f8 48 8b ce 33 d2 e8 0a ca c9 4e 48 8b d0 48 8b cf e8 07 dc 17 ff 48 8b cf e8 e7 b2 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c758a6b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 a6 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 58 c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b4030h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 40 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 58 c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b4118h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 41 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 58 c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b41c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 41 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 58 c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c758a800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a8 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 57 c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fced31h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf 12 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 91 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62617d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fced4bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 12 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 91 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 65 67 c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62617b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcedb7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 12 03 ff}
011fh mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 67 c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62617c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcede0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 12 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 90 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcedf7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 12 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 90 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722f9b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f3 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 61 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 66 c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a ca c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 dc 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 b2 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 20 ab 58 c7 f7 7f 00 00 e8 6c 56 c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 e8 42 5b c7 f7 7f 00 00 e8 51 56 c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 d0 43 5b c7 f7 7f 00 00 e8 36 56 c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 80 44 5b c7 f7 7f 00 00 e8 1b 56 c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 70 ac 58 c7 f7 7f 00 00 e8 00 56 c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb f8 17 26 c6 f7 7f 00 00 39 09 ff 15 07 11 03 ff 48 8b c8 e8 bf 8f ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 18 26 c6 f7 7f 00 00 39 09 ff 15 ed 10 03 ff 48 8b c8 e8 9d 8f ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 75 65 c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e0 17 26 c6 f7 7f 00 00 39 09 ff 15 81 10 03 ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 42 65 c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb e8 17 26 c6 f7 7f 00 00 39 09 ff 15 58 10 03 ff 48 8b c8 e8 20 8f ff ff eb 27 48 8b c8 49 bb f0 17 26 c6 f7 7f 00 00 39 09 ff 15 41 10 03 ff 48 8b c8 e8 01 8f ff ff eb 08 48 8b c8 e8 47 f2 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 f9 5f bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 c7 64 c7 5e 48 8b f8 48 8b ce 33 d2 e8 1a c8 c9 4e 48 8b d0 48 8b cf e8 17 da 17 ff 48 8b cf e8 f7 b0 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c758ab20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 ab 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 56 c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b42e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 42 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 56 c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b43d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 43 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 56 c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b4480h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 44 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 56 c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c758ac70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 ac 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 56 c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fceef9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 11 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 8f ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fcef13h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ed 10 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 8f ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 65 c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62617e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcef7fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 10 03 ff}
011fh mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 65 c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62617e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcefa8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 10 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 8f ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcefbfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 10 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c72296b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 8f ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722fa08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 f2 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5f bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 64 c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c8 c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 da 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b0 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 90 af 58 c7 f7 7f 00 00 e8 6c 50 c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 a0 45 5b c7 f7 7f 00 00 e8 51 50 c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 88 46 5b c7 f7 7f 00 00 e8 36 50 c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 38 47 5b c7 f7 7f 00 00 e8 1b 50 c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 e0 b0 58 c7 f7 7f 00 00 e8 00 50 c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 20 18 26 c6 f7 7f 00 00 39 09 ff 15 2f 0b 03 ff 48 8b c8 e8 df 89 ff ff c5 f9 10 70 08 48 8b cf 49 bb 28 18 26 c6 f7 7f 00 00 39 09 ff 15 15 0b 03 ff 48 8b c8 e8 bd 89 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 60 ae 58 c7 f7 7f 00 00 e8 75 5f c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 08 18 26 c6 f7 7f 00 00 39 09 ff 15 a9 0a 03 ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 42 5f c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 10 18 26 c6 f7 7f 00 00 39 09 ff 15 80 0a 03 ff 48 8b c8 e8 40 89 ff ff eb 27 48 8b c8 49 bb 18 18 26 c6 f7 7f 00 00 39 09 ff 15 69 0a 03 ff 48 8b c8 e8 21 89 ff ff eb 08 48 8b c8 e8 57 ec ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 f9 59 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 c7 5e c7 5e 48 8b f8 48 8b ce 33 d2 e8 1a c2 c9 4e 48 8b d0 48 8b cf e8 17 d4 17 ff 48 8b cf e8 f7 aa be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c758af90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 af 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 50 c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b45a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 45 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 50 c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b4688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 46 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 50 c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b4738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 47 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 50 c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c758b0e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 b0 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 50 c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fcf4d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f 0b 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 89 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fcf4ebh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 0b 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 89 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 75 5f c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcf557h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 0a 03 ff}
011fh mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 5f c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcf580h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 0a 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 89 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcf597h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 0a 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c72296d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 89 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c722fa18h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 ec ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 59 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 5e c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a c2 c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 d4 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 aa be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 e0 11 5a c7 f7 7f 00 00 e8 7c 4e c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 58 48 5b c7 f7 7f 00 00 e8 61 4e c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 40 49 5b c7 f7 7f 00 00 e8 46 4e c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 f0 49 5b c7 f7 7f 00 00 e8 2b 4e c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 88 65 5a c7 f7 7f 00 00 e8 10 4e c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 48 18 26 c6 f7 7f 00 00 39 09 ff 15 67 09 03 ff 48 8b c8 e8 7f 88 ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 18 26 c6 f7 7f 00 00 39 09 ff 15 4d 09 03 ff 48 8b c8 e8 5d 88 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 b0 10 5a c7 f7 7f 00 00 e8 85 5d c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 30 18 26 c6 f7 7f 00 00 39 09 ff 15 e1 08 03 ff 48 b9 b0 10 5a c7 f7 7f 00 00 e8 52 5d c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 38 18 26 c6 f7 7f 00 00 39 09 ff 15 b8 08 03 ff 48 8b c8 e8 e0 87 ff ff eb 27 48 8b c8 49 bb 40 18 26 c6 f7 7f 00 00 39 09 ff 15 a1 08 03 ff 48 8b c8 e8 c1 87 ff ff eb 08 48 8b c8 e8 0f f9 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 09 58 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 d7 5c c7 5e 48 8b f8 48 8b ce 33 d2 e8 2a c0 c9 4e 48 8b d0 48 8b cf e8 27 d2 17 ff 48 8b cf e8 07 a9 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c75a11e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 11 5a c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c 4e c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b4858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 48 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4e c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b4940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 49 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 4e c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b49f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 49 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 4e c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c75a6588h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 65 5a c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 4e c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fcf699h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 09 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 88 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fcf6b3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4d 09 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 88 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 5d c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcf71fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 08 03 ff}
011fh mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 5d c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcf748h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 08 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 87 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcf75fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 08 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 87 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c72308c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f f9 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 58 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 5c c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c0 c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 d2 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 a9 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_gVector128`1[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 00 b4 58 c7 f7 7f 00 00 e8 8c 4c c7 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 10 4b 5b c7 f7 7f 00 00 e8 71 4c c7 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 f8 4b 5b c7 f7 7f 00 00 e8 56 4c c7 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 a8 4c 5b c7 f7 7f 00 00 e8 3b 4c c7 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 50 b5 58 c7 f7 7f 00 00 e8 20 4c c7 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 70 18 26 c6 f7 7f 00 00 39 09 ff 15 9f 07 03 ff 48 8b c8 e8 af 86 ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 18 26 c6 f7 7f 00 00 39 09 ff 15 85 07 03 ff 48 8b c8 e8 8d 86 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 95 5b c7 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 58 18 26 c6 f7 7f 00 00 39 09 ff 15 19 07 03 ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 62 5b c7 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 60 18 26 c6 f7 7f 00 00 39 09 ff 15 f0 06 03 ff 48 8b c8 e8 10 86 ff ff eb 27 48 8b c8 49 bb 68 18 26 c6 f7 7f 00 00 39 09 ff 15 d9 06 03 ff 48 8b c8 e8 f1 85 ff ff eb 08 48 8b c8 e8 77 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 19 56 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 e7 5a c7 5e 48 8b f8 48 8b ce 33 d2 e8 3a be c9 4e 48 8b d0 48 8b cf e8 37 d0 17 ff 48 8b cf e8 17 a7 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c758b400h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 b4 58 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 4c c7 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c75b4b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 4b 5b c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 4c c7 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c75b4bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 4b 5b c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 4c c7 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c75b4ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 4c 5b c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 4c c7 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c758b550h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 b5 58 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 4c c7 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-0fcf861h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f 07 03 ff}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 86 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-0fcf87bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 07 03 ff}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 86 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 95 5b c7 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-0fcf8e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 07 03 ff}
011fh mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 5b c7 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-0fcf910h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 06 03 ff}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 86 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-0fcf927h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 06 03 ff}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c7229788h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 85 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c7230918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 56 bc 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 5a c7 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a be c9 4e}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 d0 17 ff}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 a7 be 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 88 be 58 c7 f7 7f 00 00 e8 93 4a c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 f8 52 5b c7 f7 7f 00 00 e8 78 4a c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 e0 53 5b c7 f7 7f 00 00 e8 5d 4a c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 90 54 5b c7 f7 7f 00 00 e8 42 4a c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 d8 bf 58 c7 f7 7f 00 00 e8 27 4a c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 98 18 26 c6 f7 7f 00 00 39 09 ff 15 ce 05 03 ff 48 8b c8 e8 36 88 ff ff c5 fd 10 70 08 48 8b cf 49 bb a0 18 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ae 05 03 ff 48 8b c8 e8 0e 88 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 58 bd 58 c7 f7 7f 00 00 e8 8a 59 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 80 18 26 c6 f7 7f 00 00 39 09 ff 15 30 05 03 ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 51 59 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 88 18 26 c6 f7 7f 00 00 39 09 ff 15 07 05 03 ff 48 8b c8 e8 7f 87 ff ff eb 27 48 8b c8 49 bb 90 18 26 c6 f7 7f 00 00 39 09 ff 15 f0 04 03 ff 48 8b c8 e8 60 87 ff ff eb 08 48 8b c8 e8 f6 f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fc 53 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 ca 58 c7 5e 48 8b f8 48 8b ce 33 d2 e8 1d bc c9 4e 48 8b d0 48 8b cf e8 1a ce 17 ff 48 8b cf e8 fa a4 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758be88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 be 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 4a c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b52f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 52 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 4a c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b53e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 53 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 4a c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b5490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 54 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 4a c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758bfd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 bf 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 4a c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fcfa32h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce 05 03 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 88 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62618a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fcfa52h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae 05 03 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 88 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 59 c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fcfad0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 05 03 ff}
0140h mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 59 c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fcfaf9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 05 03 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 87 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fcfb10h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 04 03 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229b08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 87 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7230aa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 f6 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 53 bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 58 c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d bc c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a ce 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa a4 be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 58 c3 58 c7 f7 7f 00 00 e8 63 48 c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 b0 59 5b c7 f7 7f 00 00 e8 48 48 c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 98 5a 5b c7 f7 7f 00 00 e8 2d 48 c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 48 5b 5b c7 f7 7f 00 00 e8 12 48 c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 a8 c4 58 c7 f7 7f 00 00 e8 f7 47 c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb c0 18 26 c6 f7 7f 00 00 39 09 ff 15 c6 03 03 ff 48 8b c8 e8 36 86 ff ff c5 fd 10 70 08 48 8b cf 49 bb c8 18 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 a6 03 03 ff 48 8b c8 e8 0e 86 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 28 c2 58 c7 f7 7f 00 00 e8 5a 57 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a8 18 26 c6 f7 7f 00 00 39 09 ff 15 28 03 03 ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 21 57 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb b0 18 26 c6 f7 7f 00 00 39 09 ff 15 ff 02 03 ff 48 8b c8 e8 7f 85 ff ff eb 27 48 8b c8 49 bb b8 18 26 c6 f7 7f 00 00 39 09 ff 15 e8 02 03 ff 48 8b c8 e8 60 85 ff ff eb 08 48 8b c8 e8 66 f5 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cc 51 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 9a 56 c7 5e 48 8b f8 48 8b ce 33 d2 e8 ed b9 c9 4e 48 8b d0 48 8b cf e8 ea cb 17 ff 48 8b cf e8 ca a2 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758c358h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 c3 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 48 c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b59b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 59 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 48 c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b5a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 5a 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 48 c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b5b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 5b 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 48 c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758c4a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c4 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 47 c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62618c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fcfc3ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 03 03 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 86 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62618c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fcfc5ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 03 03 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0e 86 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 57 c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fcfcd8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 28 03 03 ff}
0140h mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 57 c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62618b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fcfd01h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff 02 03 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 85 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62618b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fcfd18h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 02 03 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229b38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 85 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7230b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 f5 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 51 bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 56 c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed b9 c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea cb 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca a2 be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 c8 c7 58 c7 f7 7f 00 00 e8 33 46 c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 68 5c 5b c7 f7 7f 00 00 e8 18 46 c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 50 5d 5b c7 f7 7f 00 00 e8 fd 45 c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 00 5e 5b c7 f7 7f 00 00 e8 e2 45 c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 18 c9 58 c7 f7 7f 00 00 e8 c7 45 c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb e8 18 26 c6 f7 7f 00 00 39 09 ff 15 be 01 03 ff 48 8b c8 e8 26 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 18 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 9e 01 03 ff 48 8b c8 e8 fe 83 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 98 c6 58 c7 f7 7f 00 00 e8 2a 55 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d0 18 26 c6 f7 7f 00 00 39 09 ff 15 20 01 03 ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 f1 54 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb d8 18 26 c6 f7 7f 00 00 39 09 ff 15 f7 00 03 ff 48 8b c8 e8 6f 83 ff ff eb 27 48 8b c8 49 bb e0 18 26 c6 f7 7f 00 00 39 09 ff 15 e0 00 03 ff 48 8b c8 e8 50 83 ff ff eb 08 48 8b c8 e8 8e f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9c 4f bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 6a 54 c7 5e 48 8b f8 48 8b ce 33 d2 e8 bd b7 c9 4e 48 8b d0 48 8b cf e8 ba c9 17 ff 48 8b cf e8 9a a0 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758c7c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 c7 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 46 c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b5c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 5c 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 46 c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b5d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 5d 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 45 c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b5e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 5e 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 45 c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758c918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 c9 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 45 c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62618e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fcfe42h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be 01 03 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 84 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62618f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fcfe62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e 01 03 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fe 83 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 55 c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fcfee0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 01 03 ff}
0140h mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 54 c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62618d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fcff09h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 00 03 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 83 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62618e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fcff20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 00 03 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229b58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 83 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7230ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 4f bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 54 c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd b7 c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba c9 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a a0 be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 38 cc 58 c7 f7 7f 00 00 e8 03 44 c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 20 5f 5b c7 f7 7f 00 00 e8 e8 43 c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 08 60 5b c7 f7 7f 00 00 e8 cd 43 c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 b8 60 5b c7 f7 7f 00 00 e8 b2 43 c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 88 cd 58 c7 f7 7f 00 00 e8 97 43 c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 10 19 26 c6 f7 7f 00 00 39 09 ff 15 b6 ff 02 ff 48 8b c8 e8 16 82 ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 96 ff 02 ff 48 8b c8 e8 ee 81 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 08 cb 58 c7 f7 7f 00 00 e8 fa 52 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f8 18 26 c6 f7 7f 00 00 39 09 ff 15 18 ff 02 ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 c1 52 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 00 19 26 c6 f7 7f 00 00 39 09 ff 15 ef fe 02 ff 48 8b c8 e8 5f 81 ff ff eb 27 48 8b c8 49 bb 08 19 26 c6 f7 7f 00 00 39 09 ff 15 d8 fe 02 ff 48 8b c8 e8 40 81 ff ff eb 08 48 8b c8 e8 b6 f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6c 4d bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 3a 52 c7 5e 48 8b f8 48 8b ce 33 d2 e8 8d b5 c9 4e 48 8b d0 48 8b cf e8 8a c7 17 ff 48 8b cf e8 6a 9e be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758cc38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cc 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 44 c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b5f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 5f 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 43 c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b6008h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 60 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 43 c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b60b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 60 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 43 c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758cd88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cd 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 43 c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fd004ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b6 ff 02 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 82 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fd006ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 ff 02 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 81 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 52 c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fd00e8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 ff 02 ff}
0140h mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 52 c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fd0111h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef fe 02 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 81 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fd0128h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 fe 02 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229b78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 81 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7230bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c 4d bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 52 c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d b5 c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a c7 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 9e be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 a8 d0 58 c7 f7 7f 00 00 e8 d3 3d c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 d8 61 5b c7 f7 7f 00 00 e8 b8 3d c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 c0 62 5b c7 f7 7f 00 00 e8 9d 3d c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 70 63 5b c7 f7 7f 00 00 e8 82 3d c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 f8 d1 58 c7 f7 7f 00 00 e8 67 3d c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 38 19 26 c6 f7 7f 00 00 39 09 ff 15 ae f9 02 ff 48 8b c8 e8 06 7c ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8e f9 02 ff 48 8b c8 e8 de 7b ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 78 cf 58 c7 f7 7f 00 00 e8 ca 4c c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 20 19 26 c6 f7 7f 00 00 39 09 ff 15 10 f9 02 ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 91 4c c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 28 19 26 c6 f7 7f 00 00 39 09 ff 15 e7 f8 02 ff 48 8b c8 e8 4f 7b ff ff eb 27 48 8b c8 49 bb 30 19 26 c6 f7 7f 00 00 39 09 ff 15 d0 f8 02 ff 48 8b c8 e8 30 7b ff ff eb 08 48 8b c8 e8 7e fa ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3c 47 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 0a 4c c7 5e 48 8b f8 48 8b ce 33 d2 e8 5d af c9 4e 48 8b d0 48 8b cf e8 5a c1 17 ff 48 8b cf e8 3a 98 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758d0a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d0 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 3d c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b61d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 61 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 3d c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b62c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 62 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 3d c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b6370h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 63 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 3d c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758d1f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 d1 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 3d c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fd0652h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae f9 02 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 7c ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fd0672h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e f9 02 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 7b ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 4c c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fd06f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 f9 02 ff}
0140h mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 4c c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fd0719h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 f8 02 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 7b ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fd0730h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 f8 02 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229b98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 7b ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7231af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7e fa ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 47 bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 4c c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d af c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a c1 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 98 be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_gVector256`1[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 18 d5 58 c7 f7 7f 00 00 e8 a3 3b c7 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 90 64 5b c7 f7 7f 00 00 e8 88 3b c7 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 78 65 5b c7 f7 7f 00 00 e8 6d 3b c7 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 28 66 5b c7 f7 7f 00 00 e8 52 3b c7 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 68 d6 58 c7 f7 7f 00 00 e8 37 3b c7 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 60 19 26 c6 f7 7f 00 00 39 09 ff 15 a6 f7 02 ff 48 8b c8 e8 f6 79 ff ff c5 fd 10 70 08 48 8b cf 49 bb 68 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 86 f7 02 ff 48 8b c8 e8 ce 79 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 9a 4a c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 48 19 26 c6 f7 7f 00 00 39 09 ff 15 08 f7 02 ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 61 4a c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 50 19 26 c6 f7 7f 00 00 39 09 ff 15 df f6 02 ff 48 8b c8 e8 3f 79 ff ff eb 27 48 8b c8 49 bb 58 19 26 c6 f7 7f 00 00 39 09 ff 15 c8 f6 02 ff 48 8b c8 e8 20 79 ff ff eb 08 48 8b c8 e8 a6 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 0c 45 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 da 49 c7 5e 48 8b f8 48 8b ce 33 d2 e8 2d ad c9 4e 48 8b d0 48 8b cf e8 2a bf 17 ff 48 8b cf e8 0a 96 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758d518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 d5 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 3b c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b6490h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 64 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 88 3b c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b6578h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 65 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6d 3b c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b6628h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 66 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 52 3b c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758d668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 d6 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 3b c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fd085ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 f7 02 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 79 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fd087ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 f7 02 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 79 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 4a c7 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-0fd08f8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 08 f7 02 ff}
0140h mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 4a c7 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-0fd0921h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df f6 02 ff}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 79 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-0fd0938h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 f6 02 ff}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c7229bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 79 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c7231b48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f8 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 45 bc 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 49 c7 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d ad c9 4e}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a bf 17 ff}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 96 be 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_gVector256`1[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 38 20 5a c7 f7 7f 00 00 e8 73 39 c7 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 48 67 5b c7 f7 7f 00 00 e8 58 39 c7 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 30 68 5b c7 f7 7f 00 00 e8 3d 39 c7 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 e0 68 5b c7 f7 7f 00 00 e8 22 39 c7 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 40 92 5a c7 f7 7f 00 00 e8 07 39 c7 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb 88 19 26 c6 f7 7f 00 00 39 09 ff 15 9e f5 02 ff 48 8b c8 e8 56 78 ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7e f5 02 ff 48 8b c8 e8 2e 78 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 08 1f 5a c7 f7 7f 00 00 e8 69 48 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 70 19 26 c6 f7 7f 00 00 39 09 ff 15 ff f4 02 ff 48 b9 08 1f 5a c7 f7 7f 00 00 e8 30 48 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 78 19 26 c6 f7 7f 00 00 39 09 ff 15 d6 f4 02 ff 48 8b c8 e8 9e 77 ff ff eb 27 48 8b c8 49 bb 80 19 26 c6 f7 7f 00 00 39 09 ff 15 bf f4 02 ff 48 8b c8 e8 7f 77 ff ff eb 08 48 8b c8 e8 cd f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 db 42 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 a9 47 c7 5e 48 8b f8 48 8b ce 33 d2 e8 fc aa c9 4e 48 8b d0 48 8b cf e8 f9 bc 17 ff 48 8b cf e8 d9 93 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c75a2038h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 20 5a c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 73 39 c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b6748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 67 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 58 39 c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b6830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 68 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d 39 c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b68e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 68 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 39 c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c75a9240h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 92 5a c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 39 c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fd0a62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e f5 02 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 78 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fd0a82h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e f5 02 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2e 78 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 48 c7 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c6261970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 26 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-0fd0b01h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff f4 02 ff}
0141h mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 48 c7 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c6261978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 26 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-0fd0b2ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 f4 02 ff}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c7229c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 77 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c6261980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 26 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-0fd0b41h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf f4 02 ff}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c7229c48h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 77 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c7231ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd f6 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 42 bc 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 47 c7 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc aa c9 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 bc 17 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 93 be 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_gVector256`1[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 88 d9 58 c7 f7 7f 00 00 e8 43 37 c7 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 00 6a 5b c7 f7 7f 00 00 e8 28 37 c7 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 e8 6a 5b c7 f7 7f 00 00 e8 0d 37 c7 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 98 6b 5b c7 f7 7f 00 00 e8 f2 36 c7 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 d8 da 58 c7 f7 7f 00 00 e8 d7 36 c7 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb b0 19 26 c6 f7 7f 00 00 39 09 ff 15 96 f3 02 ff 48 8b c8 e8 46 76 ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 76 f3 02 ff 48 8b c8 e8 1e 76 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 58 d8 58 c7 f7 7f 00 00 e8 39 46 c7 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 98 19 26 c6 f7 7f 00 00 39 09 ff 15 f7 f2 02 ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 00 46 c7 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb a0 19 26 c6 f7 7f 00 00 39 09 ff 15 ce f2 02 ff 48 8b c8 e8 8e 75 ff ff eb 27 48 8b c8 49 bb a8 19 26 c6 f7 7f 00 00 39 09 ff 15 b7 f2 02 ff 48 8b c8 e8 6f 75 ff ff eb 08 48 8b c8 e8 f5 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 ab 40 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 79 45 c7 5e 48 8b f8 48 8b ce 33 d2 e8 cc a8 c9 4e 48 8b d0 48 8b cf e8 c9 ba 17 ff 48 8b cf e8 a9 91 be 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c758d988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d9 58 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 43 37 c7 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c75b6a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 6a 5b c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 28 37 c7 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c75b6ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 6a 5b c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 37 c7 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c75b6b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6b 5b c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 36 c7 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c758dad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 da 58 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 36 c7 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62619b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-0fd0c6ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 f3 02 ff}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 76 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62619b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-0fd0c8ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 f3 02 ff}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1e 76 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 46 c7 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c6261998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 26 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-0fd0d09h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 f2 02 ff}
0141h mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 46 c7 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c62619a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 26 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-0fd0d32h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce f2 02 ff}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 75 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c62619a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 26 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-0fd0d49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 f2 02 ff}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c7229c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 75 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c7231bf8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 f4 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 40 bc 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 45 c7 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc a8 c9 4e}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ba 17 ff}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 91 be 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 18 72 5b c7 f7 7f 00 00 e8 0b 35 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 10 74 5b c7 f7 7f 00 00 e8 ed 34 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 38 76 5b c7 f7 7f 00 00 e8 cf 34 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 c0 77 5b c7 f7 7f 00 00 e8 b1 34 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 00 1a 26 c6 f7 7f 00 00 39 09 ff 15 c0 f1 02 ff 8b d8 48 8b cf 49 bb 08 1a 26 c6 f7 7f 00 00 39 09 ff 15 b1 f1 02 ff 48 8b c8 e8 21 d6 ff ff c5 f9 10 70 08 48 8b cf 49 bb 10 1a 26 c6 f7 7f 00 00 39 09 ff 15 97 f1 02 ff 48 8b c8 e8 ff d5 ff ff c5 f9 10 78 08 48 8b cf 49 bb 18 1a 26 c6 f7 7f 00 00 39 09 ff 15 7d f1 02 ff 48 8b c8 e8 dd d5 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 b6 90 fc ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 c7 43 c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 19 26 c6 f7 7f 00 00 39 09 ff 15 99 f0 02 ff 8b e8 48 8b cf 49 bb c8 19 26 c6 f7 7f 00 00 39 09 ff 15 8a f0 02 ff 48 8b c8 e8 3a d5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 4b 0c fc ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 3c 43 c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 19 26 c6 f7 7f 00 00 39 09 ff 15 1b f0 02 ff 8b f0 48 8b cb 49 bb d8 19 26 c6 f7 7f 00 00 39 09 ff 15 0c f0 02 ff 48 8b c8 e8 ac d4 ff ff c5 f9 10 70 08 48 8b cb 49 bb e0 19 26 c6 f7 7f 00 00 39 09 ff 15 f2 ef 02 ff 48 8b c8 e8 8a d4 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 70 4d fc ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 81 42 c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 19 26 c6 f7 7f 00 00 39 09 ff 15 78 ef 02 ff 8b f0 48 8b cd 49 bb f0 19 26 c6 f7 7f 00 00 39 09 ff 15 69 ef 02 ff 48 8b c8 e8 f1 d3 ff ff c5 f9 10 70 08 48 8b cd 49 bb f8 19 26 c6 f7 7f 00 00 39 09 ff 15 4f ef 02 ff 48 8b c8 e8 07 3f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 fb f2 ff ff 48 b9 d0 97 58 c7 f7 7f 00 00 e8 d4 41 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 3c bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 41 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 a4 c9 4e 48 8b d0 48 8b cf e8 e1 b6 17 ff 48 8b cf e8 c1 8d be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75b7218h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 72 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 35 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75b7410h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 74 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 34 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75b7638h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 76 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 34 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75b77c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 77 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 34 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd0e40h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 f1 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd0e4fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 f1 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d6 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd0e69h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 f1 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd0e83h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7d f1 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d5 ff ff}
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
0145h call 7ff7c71fb990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 90 fc ff}
014ah mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 43 c7 5e}
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
0185h mov r11,7ff7c62619c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd0f67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 f0 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c62619c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd0f76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a f0 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d5 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f35b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 0c fc ff}
01d5h mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 43 c7 5e}
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
0213h mov r11,7ff7c62619d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd0fe5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1b f0 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c62619d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd0ff4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0c f0 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d4 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c62619e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd100eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 ef 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f7790h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 4d fc ff}
0290h mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 42 c7 5e}
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
02ceh mov r11,7ff7c62619e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd1088h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 ef 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c62619f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd1097h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 ef 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c722fe80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d3 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c62619f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd10b1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f ef 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7231dc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb f2 ff ff}
033dh mov rcx,7ff7c75897d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 97 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 41 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 3c bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 41 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a4 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 b6 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 8d be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 83 5b c7 f7 7f 00 00 e8 0b 31 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 85 5b c7 f7 7f 00 00 e8 ed 30 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 87 5b c7 f7 7f 00 00 e8 cf 30 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 89 5b c7 f7 7f 00 00 e8 b1 30 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 60 1a 26 c6 f7 7f 00 00 39 09 ff 15 20 ee 02 ff 8b d8 48 8b cf 49 bb 68 1a 26 c6 f7 7f 00 00 39 09 ff 15 11 ee 02 ff 48 8b c8 e8 11 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 70 1a 26 c6 f7 7f 00 00 39 09 ff 15 f7 ed 02 ff 48 8b c8 e8 ef d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb 78 1a 26 c6 f7 7f 00 00 39 09 ff 15 dd ed 02 ff 48 8b c8 e8 cd d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 36 8d fc ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 c7 3f c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 1a 26 c6 f7 7f 00 00 39 09 ff 15 f9 ec 02 ff 8b e8 48 8b cf 49 bb 28 1a 26 c6 f7 7f 00 00 39 09 ff 15 ea ec 02 ff 48 8b c8 e8 2a d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 8b 0d fc ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 3c 3f c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 1a 26 c6 f7 7f 00 00 39 09 ff 15 7b ec 02 ff 8b f0 48 8b cb 49 bb 38 1a 26 c6 f7 7f 00 00 39 09 ff 15 6c ec 02 ff 48 8b c8 e8 9c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 40 1a 26 c6 f7 7f 00 00 39 09 ff 15 52 ec 02 ff 48 8b c8 e8 7a d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 50 4c fc ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 81 3e c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 1a 26 c6 f7 7f 00 00 39 09 ff 15 d8 eb 02 ff 8b f0 48 8b cd 49 bb 50 1a 26 c6 f7 7f 00 00 39 09 ff 15 c9 eb 02 ff 48 8b c8 e8 e1 d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 58 1a 26 c6 f7 7f 00 00 39 09 ff 15 af eb 02 ff 48 8b c8 e8 07 3b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 93 ef ff ff 48 b9 a0 9c 58 c7 f7 7f 00 00 e8 d4 3d c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 38 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 3d c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 a0 c9 4e 48 8b d0 48 8b cf e8 e1 b2 17 ff 48 8b cf e8 c1 89 be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75b8398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 83 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 31 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75b8590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 85 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 30 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75b87b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 87 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 30 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75b8940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 89 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 30 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd11e0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 20 ee 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd11efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 ee 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d4 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd1209h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 ed 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd1223h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dd ed 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 ff ff}
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
0145h call 7ff7c71fba10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 8d fc ff}
014ah mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 3f c7 5e}
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
0185h mov r11,7ff7c6261a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd1307h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f9 ec 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd1316h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea ec 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d3 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f3af0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 0d fc ff}
01d5h mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 3f c7 5e}
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
0213h mov r11,7ff7c6261a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd1385h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7b ec 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd1394h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6c ec 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd13aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 ec 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f7a70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 4c fc ff}
0290h mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 3e c7 5e}
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
02ceh mov r11,7ff7c6261a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd1428h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 eb 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd1437h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 eb 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd1451h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af eb 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 3b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7231e60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 ef ff ff}
033dh mov rcx,7ff7c7589ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 9c 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 3d c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 38 bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 3d c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 a0 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 b2 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 89 be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 8b 5b c7 f7 7f 00 00 e8 0b 29 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 8d 5b c7 f7 7f 00 00 e8 ed 28 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 8f 5b c7 f7 7f 00 00 e8 cf 28 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 91 5b c7 f7 7f 00 00 e8 b1 28 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb c0 1a 26 c6 f7 7f 00 00 39 09 ff 15 80 e6 02 ff 8b d8 48 8b cf 49 bb c8 1a 26 c6 f7 7f 00 00 39 09 ff 15 71 e6 02 ff 48 8b c8 e8 01 ce ff ff c5 f9 10 70 08 48 8b cf 49 bb d0 1a 26 c6 f7 7f 00 00 39 09 ff 15 57 e6 02 ff 48 8b c8 e8 df cd ff ff c5 f9 10 78 08 48 8b cf 49 bb d8 1a 26 c6 f7 7f 00 00 39 09 ff 15 3d e6 02 ff 48 8b c8 e8 bd cd ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 b6 85 fc ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 c7 37 c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 1a 26 c6 f7 7f 00 00 39 09 ff 15 59 e5 02 ff 8b e8 48 8b cf 49 bb 88 1a 26 c6 f7 7f 00 00 39 09 ff 15 4a e5 02 ff 48 8b c8 e8 1a cd ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 cb 06 fc ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 3c 37 c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 1a 26 c6 f7 7f 00 00 39 09 ff 15 db e4 02 ff 8b f0 48 8b cb 49 bb 98 1a 26 c6 f7 7f 00 00 39 09 ff 15 cc e4 02 ff 48 8b c8 e8 8c cc ff ff c5 f9 10 70 08 48 8b cb 49 bb a0 1a 26 c6 f7 7f 00 00 39 09 ff 15 b2 e4 02 ff 48 8b c8 e8 6a cc ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 30 47 fc ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 81 36 c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 1a 26 c6 f7 7f 00 00 39 09 ff 15 38 e4 02 ff 8b f0 48 8b cd 49 bb b0 1a 26 c6 f7 7f 00 00 39 09 ff 15 29 e4 02 ff 48 8b c8 e8 d1 cb ff ff c5 f9 10 70 08 48 8b cd 49 bb b8 1a 26 c6 f7 7f 00 00 39 09 ff 15 0f e4 02 ff 48 8b c8 e8 07 33 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 bb f8 ff ff 48 b9 10 a1 58 c7 f7 7f 00 00 e8 d4 35 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 30 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 35 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 98 c9 4e 48 8b d0 48 8b cf e8 e1 aa 17 ff 48 8b cf e8 c1 81 be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75b8b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 8b 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 29 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75b8d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 8d 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 28 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75b8fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 8f 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 28 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75b9140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 91 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 28 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd1980h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 e6 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd198fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 e6 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ce ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd19a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 e6 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df cd ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd19c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d e6 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd cd ff ff}
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
0145h call 7ff7c71fba90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 85 fc ff}
014ah mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 37 c7 5e}
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
0185h mov r11,7ff7c6261a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd1aa7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 e5 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd1ab6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a e5 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a cd ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f3c30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 06 fc ff}
01d5h mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 37 c7 5e}
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
0213h mov r11,7ff7c6261a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd1b25h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 db e4 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd1b34h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cc e4 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c cc ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd1b4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 e4 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a cc ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f7d50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 30 47 fc ff}
0290h mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 36 c7 5e}
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
02ceh mov r11,7ff7c6261aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd1bc8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 e4 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd1bd7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 e4 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230260h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cb ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd1bf1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f e4 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 33 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7232f88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f8 ff ff}
033dh mov rcx,7ff7c758a110h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 a1 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 35 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 30 bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 35 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 98 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 aa 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 81 be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 93 5b c7 f7 7f 00 00 e8 0b 25 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 95 5b c7 f7 7f 00 00 e8 ed 24 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 97 5b c7 f7 7f 00 00 e8 cf 24 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 99 5b c7 f7 7f 00 00 e8 b1 24 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 20 1b 26 c6 f7 7f 00 00 39 09 ff 15 e0 e2 02 ff 8b d8 48 8b cf 49 bb 28 1b 26 c6 f7 7f 00 00 39 09 ff 15 d1 e2 02 ff 48 8b c8 e8 f1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 30 1b 26 c6 f7 7f 00 00 39 09 ff 15 b7 e2 02 ff 48 8b c8 e8 cf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 38 1b 26 c6 f7 7f 00 00 39 09 ff 15 9d e2 02 ff 48 8b c8 e8 ad cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 36 82 fc ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 c7 33 c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 1a 26 c6 f7 7f 00 00 39 09 ff 15 b9 e1 02 ff 8b e8 48 8b cf 49 bb e8 1a 26 c6 f7 7f 00 00 39 09 ff 15 aa e1 02 ff 48 8b c8 e8 0a cb ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 0b 04 fc ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 3c 33 c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 1a 26 c6 f7 7f 00 00 39 09 ff 15 3b e1 02 ff 8b f0 48 8b cb 49 bb f8 1a 26 c6 f7 7f 00 00 39 09 ff 15 2c e1 02 ff 48 8b c8 e8 7c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb 00 1b 26 c6 f7 7f 00 00 39 09 ff 15 12 e1 02 ff 48 8b c8 e8 5a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 10 4a fc ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 81 32 c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1b 26 c6 f7 7f 00 00 39 09 ff 15 98 e0 02 ff 8b f0 48 8b cd 49 bb 10 1b 26 c6 f7 7f 00 00 39 09 ff 15 89 e0 02 ff 48 8b c8 e8 c1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 18 1b 26 c6 f7 7f 00 00 39 09 ff 15 6f e0 02 ff 48 8b c8 e8 07 2f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 23 f5 ff ff 48 b9 80 a5 58 c7 f7 7f 00 00 e8 d4 31 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 2c bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 31 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 94 c9 4e 48 8b d0 48 8b cf e8 e1 a6 17 ff 48 8b cf e8 c1 7d be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75b9398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 93 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 25 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75b9590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 95 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 24 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75b97b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 97 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 24 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75b9940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 99 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 24 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd1d20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 e2 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd1d2fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 e2 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd1d49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 e2 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd1d63h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9d e2 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cb ff ff}
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
0145h call 7ff7c71fbb10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 82 fc ff}
014ah mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 33 c7 5e}
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
0185h mov r11,7ff7c6261ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd1e47h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b9 e1 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd1e56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa e1 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cb ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f3d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 04 fc ff}
01d5h mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 33 c7 5e}
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
0213h mov r11,7ff7c6261af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd1ec5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3b e1 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd1ed4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2c e1 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd1eeeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 e1 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f8430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 4a fc ff}
0290h mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 32 c7 5e}
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
02ceh mov r11,7ff7c6261b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd1f68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 e0 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd1f77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 e0 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd1f91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f e0 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 2f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7232ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 f5 ff ff}
033dh mov rcx,7ff7c758a580h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 a5 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 31 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 2c bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 31 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 94 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a6 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 7d be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 9b 5b c7 f7 7f 00 00 e8 0b 21 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 9d 5b c7 f7 7f 00 00 e8 ed 20 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 9f 5b c7 f7 7f 00 00 e8 cf 20 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 a1 5b c7 f7 7f 00 00 e8 b1 20 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 80 1b 26 c6 f7 7f 00 00 39 09 ff 15 40 df 02 ff 8b d8 48 8b cf 49 bb 88 1b 26 c6 f7 7f 00 00 39 09 ff 15 31 df 02 ff 48 8b c8 e8 e1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 90 1b 26 c6 f7 7f 00 00 39 09 ff 15 17 df 02 ff 48 8b c8 e8 bf c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb 98 1b 26 c6 f7 7f 00 00 39 09 ff 15 fd de 02 ff 48 8b c8 e8 9d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 b6 7e fc ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 c7 2f c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1b 26 c6 f7 7f 00 00 39 09 ff 15 19 de 02 ff 8b e8 48 8b cf 49 bb 48 1b 26 c6 f7 7f 00 00 39 09 ff 15 0a de 02 ff 48 8b c8 e8 fa c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 4b 01 fc ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 3c 2f c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1b 26 c6 f7 7f 00 00 39 09 ff 15 9b dd 02 ff 8b f0 48 8b cb 49 bb 58 1b 26 c6 f7 7f 00 00 39 09 ff 15 8c dd 02 ff 48 8b c8 e8 6c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 60 1b 26 c6 f7 7f 00 00 39 09 ff 15 72 dd 02 ff 48 8b c8 e8 4a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 f0 48 fc ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 81 2e c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1b 26 c6 f7 7f 00 00 39 09 ff 15 f8 dc 02 ff 8b f0 48 8b cd 49 bb 70 1b 26 c6 f7 7f 00 00 39 09 ff 15 e9 dc 02 ff 48 8b c8 e8 b1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 78 1b 26 c6 f7 7f 00 00 39 09 ff 15 cf dc 02 ff 48 8b c8 e8 07 2b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 8b f1 ff ff 48 b9 f0 a9 58 c7 f7 7f 00 00 e8 d4 2d c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 28 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 2d c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 90 c9 4e 48 8b d0 48 8b cf e8 e1 a2 17 ff 48 8b cf e8 c1 79 be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75b9b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 9b 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 21 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75b9d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 9d 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 20 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75b9fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 9f 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 20 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75ba140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a1 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 20 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd20c0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 40 df 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd20cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 df 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd20e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 df 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd2103h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd de 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d c9 ff ff}
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
0145h call 7ff7c71fbb90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 7e fc ff}
014ah mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 2f c7 5e}
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
0185h mov r11,7ff7c6261b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd21e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 de 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd21f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a de 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f3eb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b 01 fc ff}
01d5h mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2f c7 5e}
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
0213h mov r11,7ff7c6261b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd2265h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9b dd 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd2274h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8c dd 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd228eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 dd 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f8710h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 48 fc ff}
0290h mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 2e c7 5e}
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
02ceh mov r11,7ff7c6261b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd2308h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 dc 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd2317h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 dc 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230640h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd2331h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf dc 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 2b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7233058h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b f1 ff ff}
033dh mov rcx,7ff7c758a9f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 a9 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 2d c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 28 bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 2d c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 90 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 a2 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 79 be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 a3 5b c7 f7 7f 00 00 e8 0b 1d c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 a5 5b c7 f7 7f 00 00 e8 ed 1c c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 a7 5b c7 f7 7f 00 00 e8 cf 1c c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 a9 5b c7 f7 7f 00 00 e8 b1 1c c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb e0 1b 26 c6 f7 7f 00 00 39 09 ff 15 a0 db 02 ff 8b d8 48 8b cf 49 bb e8 1b 26 c6 f7 7f 00 00 39 09 ff 15 91 db 02 ff 48 8b c8 e8 e1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb f0 1b 26 c6 f7 7f 00 00 39 09 ff 15 77 db 02 ff 48 8b c8 e8 bf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb f8 1b 26 c6 f7 7f 00 00 39 09 ff 15 5d db 02 ff 48 8b c8 e8 9d cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 36 7b fc ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 c7 2b c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1b 26 c6 f7 7f 00 00 39 09 ff 15 79 da 02 ff 8b e8 48 8b cf 49 bb a8 1b 26 c6 f7 7f 00 00 39 09 ff 15 6a da 02 ff 48 8b c8 e8 fa ca ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 8b fe fb ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 3c 2b c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1b 26 c6 f7 7f 00 00 39 09 ff 15 fb d9 02 ff 8b f0 48 8b cb 49 bb b8 1b 26 c6 f7 7f 00 00 39 09 ff 15 ec d9 02 ff 48 8b c8 e8 6c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb c0 1b 26 c6 f7 7f 00 00 39 09 ff 15 d2 d9 02 ff 48 8b c8 e8 4a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 d0 47 fc ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 81 2a c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1b 26 c6 f7 7f 00 00 39 09 ff 15 58 d9 02 ff 8b f0 48 8b cd 49 bb d0 1b 26 c6 f7 7f 00 00 39 09 ff 15 49 d9 02 ff 48 8b c8 e8 b1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb d8 1b 26 c6 f7 7f 00 00 39 09 ff 15 2f d9 02 ff 48 8b c8 e8 07 27 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 f3 ed ff ff 48 b9 60 ae 58 c7 f7 7f 00 00 e8 d4 29 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 24 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 29 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 8c c9 4e 48 8b d0 48 8b cf e8 e1 9e 17 ff 48 8b cf e8 c1 75 be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75ba398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 a3 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 1d c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75ba590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 a5 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 1c c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75ba7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 a7 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 1c c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75ba940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 a9 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 1c c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd2460h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 db 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd246fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 db 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd2489h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 db 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd24a3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d db 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d cb ff ff}
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
0145h call 7ff7c71fbc10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 7b fc ff}
014ah mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 2b c7 5e}
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
0185h mov r11,7ff7c6261ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd2587h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 da 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd2596h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a da 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ca ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f3ff0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b fe fb ff}
01d5h mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 2b c7 5e}
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
0213h mov r11,7ff7c6261bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd2605h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fb d9 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd2614h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ec d9 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd262eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 d9 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f89f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 47 fc ff}
0290h mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 2a c7 5e}
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
02ceh mov r11,7ff7c6261bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd26a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 d9 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd26b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 d9 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd26d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f d9 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 27 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c72330c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 ed ff ff}
033dh mov rcx,7ff7c758ae60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 ae 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 29 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 24 bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 29 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 8c c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 9e 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 75 be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 ab 5b c7 f7 7f 00 00 e8 0b 19 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 ad 5b c7 f7 7f 00 00 e8 ed 18 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 af 5b c7 f7 7f 00 00 e8 cf 18 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 b1 5b c7 f7 7f 00 00 e8 b1 18 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 40 1c 26 c6 f7 7f 00 00 39 09 ff 15 00 d8 02 ff 8b d8 48 8b cf 49 bb 48 1c 26 c6 f7 7f 00 00 39 09 ff 15 f1 d7 02 ff 48 8b c8 e8 d1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 1c 26 c6 f7 7f 00 00 39 09 ff 15 d7 d7 02 ff 48 8b c8 e8 af c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb 58 1c 26 c6 f7 7f 00 00 39 09 ff 15 bd d7 02 ff 48 8b c8 e8 8d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 b6 77 fc ff 48 b9 b0 10 5a c7 f7 7f 00 00 e8 c7 27 c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1c 26 c6 f7 7f 00 00 39 09 ff 15 d9 d6 02 ff 8b e8 48 8b cf 49 bb 08 1c 26 c6 f7 7f 00 00 39 09 ff 15 ca d6 02 ff 48 8b c8 e8 ea c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 cb fb fb ff 48 b9 b0 10 5a c7 f7 7f 00 00 e8 3c 27 c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1c 26 c6 f7 7f 00 00 39 09 ff 15 5b d6 02 ff 8b f0 48 8b cb 49 bb 18 1c 26 c6 f7 7f 00 00 39 09 ff 15 4c d6 02 ff 48 8b c8 e8 5c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 20 1c 26 c6 f7 7f 00 00 39 09 ff 15 32 d6 02 ff 48 8b c8 e8 3a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 b0 46 fc ff 48 b9 b0 10 5a c7 f7 7f 00 00 e8 81 26 c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1c 26 c6 f7 7f 00 00 39 09 ff 15 b8 d5 02 ff 8b f0 48 8b cd 49 bb 30 1c 26 c6 f7 7f 00 00 39 09 ff 15 a9 d5 02 ff 48 8b c8 e8 a1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 38 1c 26 c6 f7 7f 00 00 39 09 ff 15 8f d5 02 ff 48 8b c8 e8 07 23 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 5b ea ff ff 48 b9 b0 10 5a c7 f7 7f 00 00 e8 d4 25 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 20 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 25 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 88 c9 4e 48 8b d0 48 8b cf e8 e1 9a 17 ff 48 8b cf e8 c1 71 be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75bab98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 ab 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 19 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75bad90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 ad 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 18 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75bafb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 af 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 18 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75bb140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b1 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 18 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd2800h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 d8 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd280fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 d7 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd2829h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 d7 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd2843h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd d7 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c9 ff ff}
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
0145h call 7ff7c71fbc90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 77 fc ff}
014ah mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 27 c7 5e}
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
0185h mov r11,7ff7c6261c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd2927h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 d6 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd2936h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca d6 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f4130h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fb fb ff}
01d5h mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 27 c7 5e}
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
0213h mov r11,7ff7c6261c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd29a5h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5b d6 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd29b4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4c d6 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd29ceh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 32 d6 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f8cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 46 fc ff}
0290h mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 26 c7 5e}
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
02ceh mov r11,7ff7c6261c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd2a48h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 d5 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd2a57h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 d5 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7230e30h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd2a71h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f d5 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 23 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7233128h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b ea ff ff}
033dh mov rcx,7ff7c75a10b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 10 5a c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 25 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 20 bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 25 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 88 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 9a 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 71 be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_gVector128`1[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 98 b3 5b c7 f7 7f 00 00 e8 0b 15 c7 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 90 b5 5b c7 f7 7f 00 00 e8 ed 14 c7 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 b8 b7 5b c7 f7 7f 00 00 e8 cf 14 c7 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 40 b9 5b c7 f7 7f 00 00 e8 b1 14 c7 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb a0 1c 26 c6 f7 7f 00 00 39 09 ff 15 60 d4 02 ff 8b d8 48 8b cf 49 bb a8 1c 26 c6 f7 7f 00 00 39 09 ff 15 51 d4 02 ff 48 8b c8 e8 c1 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 1c 26 c6 f7 7f 00 00 39 09 ff 15 37 d4 02 ff 48 8b c8 e8 9f c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb b8 1c 26 c6 f7 7f 00 00 39 09 ff 15 1d d4 02 ff 48 8b c8 e8 7d c7 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 36 74 fc ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 c7 23 c7 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 1c 26 c6 f7 7f 00 00 39 09 ff 15 39 d3 02 ff 8b e8 48 8b cf 49 bb 68 1c 26 c6 f7 7f 00 00 39 09 ff 15 2a d3 02 ff 48 8b c8 e8 da c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 0b f9 fb ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 3c 23 c7 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 1c 26 c6 f7 7f 00 00 39 09 ff 15 bb d2 02 ff 8b f0 48 8b cb 49 bb 78 1c 26 c6 f7 7f 00 00 39 09 ff 15 ac d2 02 ff 48 8b c8 e8 4c c6 ff ff c5 f9 10 70 08 48 8b cb 49 bb 80 1c 26 c6 f7 7f 00 00 39 09 ff 15 92 d2 02 ff 48 8b c8 e8 2a c6 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 90 49 fc ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 81 22 c7 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 1c 26 c6 f7 7f 00 00 39 09 ff 15 18 d2 02 ff 8b f0 48 8b cd 49 bb 90 1c 26 c6 f7 7f 00 00 39 09 ff 15 09 d2 02 ff 48 8b c8 e8 91 c5 ff ff c5 f9 10 70 08 48 8b cd 49 bb 98 1c 26 c6 f7 7f 00 00 39 09 ff 15 ef d1 02 ff 48 8b c8 e8 07 1f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 c3 e6 ff ff 48 b9 d0 b2 58 c7 f7 7f 00 00 e8 d4 21 c7 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 c3 1c bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 91 21 c7 5e 48 8b f8 48 8b ce 33 d2 e8 e4 84 c9 4e 48 8b d0 48 8b cf e8 e1 96 17 ff 48 8b cf e8 c1 6d be 5e cc}
; TermCode = INTRx2
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
0026h mov rcx,7ff7c75bb398h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 b3 5b c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 15 c7 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c75bb590h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 b5 5b c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 14 c7 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c75bb7b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 b7 5b c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 14 c7 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c75bb940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 b9 5b c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 14 c7 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-0fd2ba0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 60 d4 02 ff}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-0fd2bafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 d4 02 ff}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-0fd2bc9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 d4 02 ff}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-0fd2be3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d d4 02 ff}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c7 ff ff}
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
0145h call 7ff7c71fbd10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 36 74 fc ff}
014ah mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 23 c7 5e}
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
0185h mov r11,7ff7c6261c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-0fd2cc7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 d3 02 ff}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-0fd2cd6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a d3 02 ff}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c6 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c71f4270h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b f9 fb ff}
01d5h mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3c 23 c7 5e}
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
0213h mov r11,7ff7c6261c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-0fd2d45h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bb d2 02 ff}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-0fd2d54h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ac d2 02 ff}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c6 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-0fd2d6eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 d2 02 ff}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c6 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c71f93b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 49 fc ff}
0290h mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 22 c7 5e}
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
02ceh mov r11,7ff7c6261c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-0fd2de8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 d2 02 ff}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-0fd2df7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 d2 02 ff}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c7231020h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c5 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-0fd2e11h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef d1 02 ff}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 07 1f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c7233190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 e6 ff ff}
033dh mov rcx,7ff7c758b2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 b2 58 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d4 21 c7 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 1c bc 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 21 c7 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e4 84 c9 4e}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 96 17 ff}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 6d be 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 50 c1 5b c7 f7 7f 00 00 e8 f9 0c c7 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 48 c3 5b c7 f7 7f 00 00 e8 db 0c c7 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 70 c5 5b c7 f7 7f 00 00 e8 bd 0c c7 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f8 c6 5b c7 f7 7f 00 00 e8 9f 0c c7 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 00 1d 26 c6 f7 7f 00 00 39 09 ff 15 ae cc 02 ff 8b d8 48 8b cf 49 bb 08 1d 26 c6 f7 7f 00 00 39 09 ff 15 9f cc 02 ff 48 8b c8 e8 9f c1 ff ff c5 fd 10 70 08 48 8b cf 49 bb 10 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7f cc 02 ff 48 8b c8 e8 77 c1 ff ff c5 7d 10 40 08 48 8b cf 49 bb 18 1d 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 5f cc 02 ff 48 8b c8 e8 4f c1 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 89 6c fc ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 9a 1b c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c0 1c 26 c6 f7 7f 00 00 39 09 ff 15 54 cb 02 ff 8b e8 48 8b cf 49 bb c8 1c 26 c6 f7 7f 00 00 39 09 ff 15 45 cb 02 ff 48 8b c8 e8 85 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 06 f2 fb ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 f7 1a c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d0 1c 26 c6 f7 7f 00 00 39 09 ff 15 c1 ca 02 ff 8b f0 48 8b cb 49 bb d8 1c 26 c6 f7 7f 00 00 39 09 ff 15 b2 ca 02 ff 48 8b c8 e8 e2 bf ff ff c5 fd 10 70 08 48 8b cb 49 bb e0 1c 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 92 ca 02 ff 48 8b c8 e8 ba bf ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 0a 44 fc ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 1b 1a c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb e8 1c 26 c6 f7 7f 00 00 39 09 ff 15 fd c9 02 ff 8b f0 48 8b cd 49 bb f0 1c 26 c6 f7 7f 00 00 39 09 ff 15 ee c9 02 ff 48 8b c8 e8 06 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb f8 1c 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ce c9 02 ff 48 8b c8 e8 86 16 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 09 e0 ff ff 48 b9 58 bd 58 c7 f7 7f 00 00 e8 4a 19 c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 21 14 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 ef 18 c7 5e 48 8b f8 48 8b ce 33 d2 e8 42 7c c9 4e 48 8b d0 48 8b cf e8 3f 8e 17 ff 48 8b cf e8 1f 65 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bc150h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 c1 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 0c c7 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75bc348h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 c3 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db 0c c7 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75bc570h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 c5 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 0c c7 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75bc6f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 c6 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 0c c7 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd3352h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae cc 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd3361h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f cc 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c1 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd3381h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f cc 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c1 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd33a1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f cc 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c1 ff ff}
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
0172h call 7ff7c71fbd90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 6c fc ff}
0177h mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 1b c7 5e}
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
01cah mov r11,7ff7c6261cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd34ach]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 54 cb 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd34bbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 45 cb 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c0 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 f2 fb ff}
021ah mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 1a c7 5e}
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
026dh mov r11,7ff7c6261cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd353fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 ca 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd354eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 ca 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 bf ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd356eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 92 ca 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba bf ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71f9690h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a 44 fc ff}
02f6h mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b 1a c7 5e}
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
0349h mov r11,7ff7c6261ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd3603h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd c9 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd3612h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee c9 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7231210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 bf ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd3632h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce c9 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 16 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7233360h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 e0 ff ff}
03c7h mov rcx,7ff7c758bd58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 bd 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a 19 c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 14 bc 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 18 c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 7c c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8e 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 65 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 d2 5b c7 f7 7f 00 00 e8 49 08 c7 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 d4 5b c7 f7 7f 00 00 e8 2b 08 c7 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 d6 5b c7 f7 7f 00 00 e8 0d 08 c7 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 78 d8 5b c7 f7 7f 00 00 e8 ef 07 c7 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 60 1d 26 c6 f7 7f 00 00 39 09 ff 15 5e c8 02 ff 8b d8 48 8b cf 49 bb 68 1d 26 c6 f7 7f 00 00 39 09 ff 15 4f c8 02 ff 48 8b c8 e8 1f bf ff ff c5 fd 10 70 08 48 8b cf 49 bb 70 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2f c8 02 ff 48 8b c8 e8 f7 be ff ff c5 7d 10 40 08 48 8b cf 49 bb 78 1d 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 0f c8 02 ff 48 8b c8 e8 cf be ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 59 68 fc ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 ea 16 c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 20 1d 26 c6 f7 7f 00 00 39 09 ff 15 04 c7 02 ff 8b e8 48 8b cf 49 bb 28 1d 26 c6 f7 7f 00 00 39 09 ff 15 f5 c6 02 ff 48 8b c8 e8 05 be ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 a6 ee fb ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 47 16 c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 30 1d 26 c6 f7 7f 00 00 39 09 ff 15 71 c6 02 ff 8b f0 48 8b cb 49 bb 38 1d 26 c6 f7 7f 00 00 39 09 ff 15 62 c6 02 ff 48 8b c8 e8 62 bd ff ff c5 fd 10 70 08 48 8b cb 49 bb 40 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 42 c6 02 ff 48 8b c8 e8 3a bd ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 3a 46 fc ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 6b 15 c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 48 1d 26 c6 f7 7f 00 00 39 09 ff 15 ad c5 02 ff 8b f0 48 8b cd 49 bb 50 1d 26 c6 f7 7f 00 00 39 09 ff 15 9e c5 02 ff 48 8b c8 e8 86 bc ff ff c5 fd 10 70 08 48 8b cd 49 bb 58 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 7e c5 02 ff 48 8b c8 e8 d6 11 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f9 f3 ff ff 48 b9 28 c2 58 c7 f7 7f 00 00 e8 9a 14 c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 71 0f bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 3f 14 c7 5e 48 8b f8 48 8b ce 33 d2 e8 92 77 c9 4e 48 8b d0 48 8b cf e8 8f 89 17 ff 48 8b cf e8 6f 60 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bd2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 d2 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 08 c7 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75bd4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d4 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 08 c7 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75bd6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 d6 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d 08 c7 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75bd878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d8 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 07 c7 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd37a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e c8 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd37b1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f c8 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f bf ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd37d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f c8 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 be ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd37f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f c8 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf be ff ff}
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
0172h call 7ff7c71fbe10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 68 fc ff}
0177h mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 16 c7 5e}
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
01cah mov r11,7ff7c6261d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd38fch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 04 c7 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd390bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 c6 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 be ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4500h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 ee fb ff}
021ah mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 16 c7 5e}
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
026dh mov r11,7ff7c6261d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd398fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 c6 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd399eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 c6 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bd ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd39beh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 c6 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bd ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71f9d70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 46 fc ff}
02f6h mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 15 c7 5e}
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
0349h mov r11,7ff7c6261d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd3a53h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ad c5 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd3a62h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e c5 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7231440h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bc ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd3a82h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e c5 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 11 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234c00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 f3 ff ff}
03c7h mov rcx,7ff7c758c228h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 c2 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 14 c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 71 0f bc 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 14 c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 77 c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 89 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 60 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 da 5b c7 f7 7f 00 00 e8 99 03 c7 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 dc 5b c7 f7 7f 00 00 e8 7b 03 c7 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 de 5b c7 f7 7f 00 00 e8 5d 03 c7 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 78 e0 5b c7 f7 7f 00 00 e8 3f 03 c7 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb c0 1d 26 c6 f7 7f 00 00 39 09 ff 15 0e c4 02 ff 8b d8 48 8b cf 49 bb c8 1d 26 c6 f7 7f 00 00 39 09 ff 15 ff c3 02 ff 48 8b c8 e8 9f bc ff ff c5 fd 10 70 08 48 8b cf 49 bb d0 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 df c3 02 ff 48 8b c8 e8 77 bc ff ff c5 7d 10 40 08 48 8b cf 49 bb d8 1d 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 bf c3 02 ff 48 8b c8 e8 4f bc ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 29 64 fc ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 3a 12 c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 80 1d 26 c6 f7 7f 00 00 39 09 ff 15 b4 c2 02 ff 8b e8 48 8b cf 49 bb 88 1d 26 c6 f7 7f 00 00 39 09 ff 15 a5 c2 02 ff 48 8b c8 e8 85 bb ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 46 eb fb ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 97 11 c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 90 1d 26 c6 f7 7f 00 00 39 09 ff 15 21 c2 02 ff 8b f0 48 8b cb 49 bb 98 1d 26 c6 f7 7f 00 00 39 09 ff 15 12 c2 02 ff 48 8b c8 e8 e2 ba ff ff c5 fd 10 70 08 48 8b cb 49 bb a0 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 f2 c1 02 ff 48 8b c8 e8 ba ba ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 6a 44 fc ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 bb 10 c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb a8 1d 26 c6 f7 7f 00 00 39 09 ff 15 5d c1 02 ff 8b f0 48 8b cd 49 bb b0 1d 26 c6 f7 7f 00 00 39 09 ff 15 4e c1 02 ff 48 8b c8 e8 06 ba ff ff c5 fd 10 70 08 48 8b cd 49 bb b8 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2e c1 02 ff 48 8b c8 e8 26 0d ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 b1 ef ff ff 48 b9 98 c6 58 c7 f7 7f 00 00 e8 ea 0f c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 c1 0a bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 8f 0f c7 5e 48 8b f8 48 8b ce 33 d2 e8 e2 72 c9 4e 48 8b d0 48 8b cf e8 df 84 17 ff 48 8b cf e8 bf 5b be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bdad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 da 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 03 c7 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75bdcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 dc 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 03 c7 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75bdef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 de 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 03 c7 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75be078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e0 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 03 c7 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd3bf2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e c4 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd3c01h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ff c3 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bc ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd3c21h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df c3 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd3c41h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf c3 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bc ff ff}
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
0172h call 7ff7c71fbe90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 64 fc ff}
0177h mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 12 c7 5e}
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
01cah mov r11,7ff7c6261d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd3d4ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b4 c2 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd3d5bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a5 c2 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4650h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 eb fb ff}
021ah mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 11 c7 5e}
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
026dh mov r11,7ff7c6261d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd3ddfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 c2 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd3deeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 12 c2 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ba ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd3e0eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f2 c1 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ba ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71fa050h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 44 fc ff}
02f6h mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 10 c7 5e}
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
0349h mov r11,7ff7c6261da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd3ea3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d c1 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd3eb2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e c1 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7231670h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ba ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd3ed2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e c1 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 0d ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234c68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 ef ff ff}
03c7h mov rcx,7ff7c758c698h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 c6 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 0f c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 0a bc 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 0f c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 72 c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 84 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 5b be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 e2 5b c7 f7 7f 00 00 e8 e9 fe c6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 e4 5b c7 f7 7f 00 00 e8 cb fe c6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 e6 5b c7 f7 7f 00 00 e8 ad fe c6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 78 e8 5b c7 f7 7f 00 00 e8 8f fe c6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 20 1e 26 c6 f7 7f 00 00 39 09 ff 15 be bf 02 ff 8b d8 48 8b cf 49 bb 28 1e 26 c6 f7 7f 00 00 39 09 ff 15 af bf 02 ff 48 8b c8 e8 1f ba ff ff c5 fd 10 70 08 48 8b cf 49 bb 30 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8f bf 02 ff 48 8b c8 e8 f7 b9 ff ff c5 7d 10 40 08 48 8b cf 49 bb 38 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 6f bf 02 ff 48 8b c8 e8 cf b9 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 f9 63 fc ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 8a 0d c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e0 1d 26 c6 f7 7f 00 00 39 09 ff 15 64 be 02 ff 8b e8 48 8b cf 49 bb e8 1d 26 c6 f7 7f 00 00 39 09 ff 15 55 be 02 ff 48 8b c8 e8 05 b9 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e6 eb fb ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 e7 0c c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f0 1d 26 c6 f7 7f 00 00 39 09 ff 15 d1 bd 02 ff 8b f0 48 8b cb 49 bb f8 1d 26 c6 f7 7f 00 00 39 09 ff 15 c2 bd 02 ff 48 8b c8 e8 62 b8 ff ff c5 fd 10 70 08 48 8b cb 49 bb 00 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 a2 bd 02 ff 48 8b c8 e8 3a b8 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 42 fc ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 0b 0c c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 08 1e 26 c6 f7 7f 00 00 39 09 ff 15 0d bd 02 ff 8b f0 48 8b cd 49 bb 10 1e 26 c6 f7 7f 00 00 39 09 ff 15 fe bc 02 ff 48 8b c8 e8 86 b7 ff ff c5 fd 10 70 08 48 8b cd 49 bb 18 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 de bc 02 ff 48 8b c8 e8 76 08 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 eb ff ff 48 b9 08 cb 58 c7 f7 7f 00 00 e8 3a 0b c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 11 06 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 df 0a c7 5e 48 8b f8 48 8b ce 33 d2 e8 32 6e c9 4e 48 8b d0 48 8b cf e8 2f 80 17 ff 48 8b cf e8 0f 57 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75be2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 e2 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 fe c6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75be4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e4 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb fe c6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75be6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 e6 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad fe c6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75be878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 e8 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f fe c6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd4042h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be bf 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd4051h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af bf 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f ba ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd4071h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f bf 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b9 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd4091h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f bf 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b9 ff ff}
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
0172h call 7ff7c71fc310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 63 fc ff}
0177h mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 0d c7 5e}
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
01cah mov r11,7ff7c6261de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd419ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 64 be 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd41abh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 be 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b9 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4ba0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 eb fb ff}
021ah mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e7 0c c7 5e}
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
026dh mov r11,7ff7c6261df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd422fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 bd 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd423eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 bd 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b8 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd425eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 bd 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b8 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71fa330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 42 fc ff}
02f6h mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b 0c c7 5e}
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
0349h mov r11,7ff7c6261e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd42f3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0d bd 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd4302h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fe bc 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c72318a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b7 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd4322h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 de bc 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 76 08 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 eb ff ff}
03c7h mov rcx,7ff7c758cb08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 cb 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a 0b c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 06 bc 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 0a c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 32 6e c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 80 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 57 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 ea 5b c7 f7 7f 00 00 e8 39 fa c6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 ec 5b c7 f7 7f 00 00 e8 1b fa c6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 ee 5b c7 f7 7f 00 00 e8 fd f9 c6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 78 f0 5b c7 f7 7f 00 00 e8 df f9 c6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 80 1e 26 c6 f7 7f 00 00 39 09 ff 15 6e bb 02 ff 8b d8 48 8b cf 49 bb 88 1e 26 c6 f7 7f 00 00 39 09 ff 15 5f bb 02 ff 48 8b c8 e8 9f bb ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 3f bb 02 ff 48 8b c8 e8 77 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb 98 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 1f bb 02 ff 48 8b c8 e8 4f bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c9 5f fc ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 da 08 c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 40 1e 26 c6 f7 7f 00 00 39 09 ff 15 14 ba 02 ff 8b e8 48 8b cf 49 bb 48 1e 26 c6 f7 7f 00 00 39 09 ff 15 05 ba 02 ff 48 8b c8 e8 85 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 86 e8 fb ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 37 08 c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 50 1e 26 c6 f7 7f 00 00 39 09 ff 15 81 b9 02 ff 8b f0 48 8b cb 49 bb 58 1e 26 c6 f7 7f 00 00 39 09 ff 15 72 b9 02 ff 48 8b c8 e8 e2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb 60 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 52 b9 02 ff 48 8b c8 e8 ba b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ca 44 fc ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 5b 07 c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 68 1e 26 c6 f7 7f 00 00 39 09 ff 15 bd b8 02 ff 8b f0 48 8b cd 49 bb 70 1e 26 c6 f7 7f 00 00 39 09 ff 15 ae b8 02 ff 48 8b c8 e8 06 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb 78 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 8e b8 02 ff 48 8b c8 e8 c6 03 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 21 e7 ff ff 48 b9 78 cf 58 c7 f7 7f 00 00 e8 8a 06 c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 61 01 bc 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 2f 06 c7 5e 48 8b f8 48 8b ce 33 d2 e8 82 69 c9 4e 48 8b d0 48 8b cf e8 7f 7b 17 ff 48 8b cf e8 5f 52 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bead0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 ea 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 fa c6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75becc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 ec 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1b fa c6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75beef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 ee 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd f9 c6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75bf078h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f0 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df f9 c6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd4492h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e bb 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd44a1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5f bb 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bb ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd44c1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3f bb 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd44e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f bb 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bb ff ff}
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
0172h call 7ff7c71fc390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 5f fc ff}
0177h mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 08 c7 5e}
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
01cah mov r11,7ff7c6261e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd45ech]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 14 ba 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd45fbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 ba 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ba ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 e8 fb ff}
021ah mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 08 c7 5e}
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
026dh mov r11,7ff7c6261e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd467fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 b9 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd468eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 72 b9 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b9 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd46aeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 52 b9 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b9 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71faa10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 44 fc ff}
02f6h mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b 07 c7 5e}
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
0349h mov r11,7ff7c6261e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd4743h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd b8 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd4752h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ae b8 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7231ed0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b9 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd4772h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e b8 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 03 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234d38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e7 ff ff}
03c7h mov rcx,7ff7c758cf78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 cf 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 06 c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 01 bc 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 06 c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 69 c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 7b 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 52 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 f2 5b c7 f7 7f 00 00 e8 89 f5 c6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 f4 5b c7 f7 7f 00 00 e8 6b f5 c6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 f6 5b c7 f7 7f 00 00 e8 4d f5 c6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 78 f8 5b c7 f7 7f 00 00 e8 2f f5 c6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb e0 1e 26 c6 f7 7f 00 00 39 09 ff 15 1e b7 02 ff 8b d8 48 8b cf 49 bb e8 1e 26 c6 f7 7f 00 00 39 09 ff 15 0f b7 02 ff 48 8b c8 e8 1f b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ef b6 02 ff 48 8b c8 e8 f7 b8 ff ff c5 7d 10 40 08 48 8b cf 49 bb f8 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 cf b6 02 ff 48 8b c8 e8 cf b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 99 5b fc ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 2a 04 c7 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a0 1e 26 c6 f7 7f 00 00 39 09 ff 15 c4 b5 02 ff 8b e8 48 8b cf 49 bb a8 1e 26 c6 f7 7f 00 00 39 09 ff 15 b5 b5 02 ff 48 8b c8 e8 05 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 26 e5 fb ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 87 03 c7 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b0 1e 26 c6 f7 7f 00 00 39 09 ff 15 31 b5 02 ff 8b f0 48 8b cb 49 bb b8 1e 26 c6 f7 7f 00 00 39 09 ff 15 22 b5 02 ff 48 8b c8 e8 62 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb c0 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 02 b5 02 ff 48 8b c8 e8 3a b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 fa 42 fc ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 ab 02 c7 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb c8 1e 26 c6 f7 7f 00 00 39 09 ff 15 6d b4 02 ff 8b f0 48 8b cd 49 bb d0 1e 26 c6 f7 7f 00 00 39 09 ff 15 5e b4 02 ff 48 8b c8 e8 86 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb d8 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 3e b4 02 ff 48 8b c8 e8 16 ff fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 d9 e2 ff ff 48 b9 e8 d3 58 c7 f7 7f 00 00 e8 da 01 c7 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b1 fc bb 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 7f 01 c7 5e 48 8b f8 48 8b ce 33 d2 e8 d2 64 c9 4e 48 8b d0 48 8b cf e8 cf 76 17 ff 48 8b cf e8 af 4d be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bf2d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 f2 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 f5 c6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75bf4c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 f4 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 c6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75bf6f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 f6 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d f5 c6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75bf878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 f8 5b c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f5 c6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd48e2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1e b7 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd48f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f b7 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b9 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd4911h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef b6 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b8 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd4931h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf b6 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b8 ff ff}
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
0172h call 7ff7c71fc410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 5b fc ff}
0177h mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 04 c7 5e}
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
01cah mov r11,7ff7c6261ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd4a3ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c4 b5 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd4a4bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 b5 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b8 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 e5 fb ff}
021ah mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 03 c7 5e}
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
026dh mov r11,7ff7c6261eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd4acfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 b5 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd4adeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 b5 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b7 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd4afeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 b5 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b7 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71facf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 42 fc ff}
02f6h mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 02 c7 5e}
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
0349h mov r11,7ff7c6261ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd4b93h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6d b4 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd4ba2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e b4 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7232100h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b6 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd4bc2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e b4 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 ff fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 e2 ff ff}
03c7h mov rcx,7ff7c758d3e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 d3 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da 01 c7 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 fc bb 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 01 c7 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 64 c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 76 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 4d be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 d0 fa 5b c7 f7 7f 00 00 e8 d9 f0 c6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 c8 fc 5b c7 f7 7f 00 00 e8 bb f0 c6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 f0 fe 5b c7 f7 7f 00 00 e8 9d f0 c6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 c8 00 5e c7 f7 7f 00 00 e8 7f f0 c6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 40 1f 26 c6 f7 7f 00 00 39 09 ff 15 ce b2 02 ff 8b d8 48 8b cf 49 bb 48 1f 26 c6 f7 7f 00 00 39 09 ff 15 bf b2 02 ff 48 8b c8 e8 9f b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb 50 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 9f b2 02 ff 48 8b c8 e8 77 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb 58 1f 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 7f b2 02 ff 48 8b c8 e8 4f b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 69 57 fc ff 48 b9 08 1f 5a c7 f7 7f 00 00 e8 7a ff c6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 00 1f 26 c6 f7 7f 00 00 39 09 ff 15 74 b1 02 ff 8b e8 48 8b cf 49 bb 08 1f 26 c6 f7 7f 00 00 39 09 ff 15 65 b1 02 ff 48 8b c8 e8 85 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c6 e1 fb ff 48 b9 08 1f 5a c7 f7 7f 00 00 e8 d7 fe c6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 10 1f 26 c6 f7 7f 00 00 39 09 ff 15 e1 b0 02 ff 8b f0 48 8b cb 49 bb 18 1f 26 c6 f7 7f 00 00 39 09 ff 15 d2 b0 02 ff 48 8b c8 e8 e2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 20 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 b2 b0 02 ff 48 8b c8 e8 ba b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 2a 41 fc ff 48 b9 08 1f 5a c7 f7 7f 00 00 e8 fb fd c6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 28 1f 26 c6 f7 7f 00 00 39 09 ff 15 1d b0 02 ff 8b f0 48 8b cd 49 bb 30 1f 26 c6 f7 7f 00 00 39 09 ff 15 0e b0 02 ff 48 8b c8 e8 06 b4 ff ff c5 fd 10 70 08 48 8b cd 49 bb 38 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ee af 02 ff 48 8b c8 e8 66 fa fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 91 de ff ff 48 b9 08 1f 5a c7 f7 7f 00 00 e8 2a fd c6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 01 f8 bb 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 cf fc c6 5e 48 8b f8 48 8b ce 33 d2 e8 22 60 c9 4e 48 8b d0 48 8b cf e8 1f 72 17 ff 48 8b cf e8 ff 48 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75bfad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fa 5b c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 f0 c6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75bfcc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 fc 5b c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb f0 c6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75bfef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 fe 5b c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d f0 c6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75e00c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 00 5e c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f f0 c6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd4d32h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ce b2 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd4d41h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf b2 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b6 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1f 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd4d61h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f b2 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1f 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd4d81h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7f b2 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b6 ff ff}
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
0172h call 7ff7c71fc490h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 57 fc ff}
0177h mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a ff c6 5e}
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
01cah mov r11,7ff7c6261f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd4e8ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 74 b1 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd4e9bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 b1 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b5 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f4f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e1 fb ff}
021ah mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 fe c6 5e}
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
026dh mov r11,7ff7c6261f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd4f1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 b0 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd4f2eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d2 b0 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b4 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd4f4eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b2 b0 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b4 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71fafd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 41 fc ff}
02f6h mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb fd c6 5e}
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
0349h mov r11,7ff7c6261f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd4fe3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d b0 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd4ff2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0e b0 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7232330h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b4 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd5012h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ee af 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 fa fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234e08h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 de ff ff}
03c7h mov rcx,7ff7c75a1f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 1f 5a c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a fd c6 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 f8 bb 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf fc c6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 60 c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 72 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 48 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_gVector256`1[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 20 03 5e c7 f7 7f 00 00 e8 29 ec c6 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 18 05 5e c7 f7 7f 00 00 e8 0b ec c6 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 40 07 5e c7 f7 7f 00 00 e8 ed eb c6 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 c8 08 5e c7 f7 7f 00 00 e8 cf eb c6 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb a0 1f 26 c6 f7 7f 00 00 39 09 ff 15 7e ae 02 ff 8b d8 48 8b cf 49 bb a8 1f 26 c6 f7 7f 00 00 39 09 ff 15 6f ae 02 ff 48 8b c8 e8 1f b4 ff ff c5 fd 10 70 08 48 8b cf 49 bb b0 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 4f ae 02 ff 48 8b c8 e8 f7 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb b8 1f 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 2f ae 02 ff 48 8b c8 e8 cf b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 39 53 fc ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 ca fa c6 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 60 1f 26 c6 f7 7f 00 00 39 09 ff 15 24 ad 02 ff 8b e8 48 8b cf 49 bb 68 1f 26 c6 f7 7f 00 00 39 09 ff 15 15 ad 02 ff 48 8b c8 e8 05 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 66 de fb ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 27 fa c6 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 70 1f 26 c6 f7 7f 00 00 39 09 ff 15 91 ac 02 ff 8b f0 48 8b cb 49 bb 78 1f 26 c6 f7 7f 00 00 39 09 ff 15 82 ac 02 ff 48 8b c8 e8 62 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb 80 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 62 ac 02 ff 48 8b c8 e8 3a b2 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 3f fc ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 4b f9 c6 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 88 1f 26 c6 f7 7f 00 00 39 09 ff 15 cd ab 02 ff 8b f0 48 8b cd 49 bb 90 1f 26 c6 f7 7f 00 00 39 09 ff 15 be ab 02 ff 48 8b c8 e8 86 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb 98 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 9e ab 02 ff 48 8b c8 e8 b6 f5 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 49 da ff ff 48 b9 58 d8 58 c7 f7 7f 00 00 e8 7a f8 c6 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 51 f3 bb 5e 48 8b f0 48 b9 88 76 71 c6 f7 7f 00 00 e8 1f f8 c6 5e 48 8b f8 48 8b ce 33 d2 e8 72 5b c9 4e 48 8b d0 48 8b cf e8 6f 6d 17 ff 48 8b cf e8 4f 44 be 5e cc}
; TermCode = INTRx2
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
0038h mov rcx,7ff7c75e0320h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 03 5e c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 ec c6 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c75e0518h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 05 5e c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b ec c6 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c75e0740h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 07 5e c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed eb c6 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c75e08c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 08 5e c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf eb c6 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1f 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-0fd5182h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e ae 02 ff}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1f 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-0fd5191h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f ae 02 ff}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b4 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1f 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-0fd51b1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f ae 02 ff}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b3 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1f 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-0fd51d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f ae 02 ff}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b3 ff ff}
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
0172h call 7ff7c71fc510h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 53 fc ff}
0177h mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca fa c6 5e}
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
01cah mov r11,7ff7c6261f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1f 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-0fd52dch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 24 ad 02 ff}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1f 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-0fd52ebh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 ad 02 ff}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b3 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c71f50e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 de fb ff}
021ah mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 fa c6 5e}
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
026dh mov r11,7ff7c6261f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1f 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-0fd536fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 ac 02 ff}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1f 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-0fd537eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 ac 02 ff}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b2 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1f 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-0fd539eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 ac 02 ff}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b2 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c71fb2b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 3f fc ff}
02f6h mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b f9 c6 5e}
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
0349h mov r11,7ff7c6261f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1f 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-0fd5433h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd ab 02 ff}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1f 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-0fd5442h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 be ab 02 ff}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c7232560h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b1 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1f 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-0fd5462h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9e ab 02 ff}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c72269b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 f5 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c7234e70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 da ff ff}
03c7h mov rcx,7ff7c758d858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d8 58 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a f8 c6 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 f3 bb 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c6717688h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 76 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f f8 c6 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff815ecd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 5b c9 4e}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63ae218h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 6d 17 ff}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 44 be 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
