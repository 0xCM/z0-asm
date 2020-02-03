------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IExpr<Vector128<byte>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 38 cf 94 c7 f7 7f 00 00 e8 bc 2e ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 f8 67 97 c7 f7 7f 00 00 e8 a1 2e ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 e0 68 97 c7 f7 7f 00 00 e8 86 2e ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 90 69 97 c7 f7 7f 00 00 e8 6b 2e ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 88 d0 94 c7 f7 7f 00 00 e8 50 2e ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 80 17 26 c6 f7 7f 00 00 39 09 ff 15 df e8 e7 fe 48 8b c8 e8 7f 97 ff ff c5 f9 10 70 08 48 8b cf 49 bb 88 17 26 c6 f7 7f 00 00 39 09 ff 15 c5 e8 e7 fe 48 8b c8 e8 5d 97 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 08 ce 94 c7 f7 7f 00 00 e8 c5 3d ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 68 17 26 c6 f7 7f 00 00 39 09 ff 15 59 e8 e7 fe 48 b9 08 ce 94 c7 f7 7f 00 00 e8 92 3d ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 70 17 26 c6 f7 7f 00 00 39 09 ff 15 30 e8 e7 fe 48 8b c8 e8 e0 96 ff ff eb 27 48 8b c8 49 bb 78 17 26 c6 f7 7f 00 00 39 09 ff 15 19 e8 e7 fe 48 8b c8 e8 c1 96 ff ff eb 08 48 8b c8 e8 af f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 49 38 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 17 3d ac 5e 48 8b f8 48 8b ce 33 d2 e8 6a a0 91 4f 48 8b d0 48 8b cf e8 27 c9 fc fe 48 8b cf e8 47 89 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794cf38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 cf 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bc 2e ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c79767f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 67 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 2e ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c79768e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 68 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 2e ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7976990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 69 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 2e ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794d088h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d0 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 2e ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261780h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1181721h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 df e8 e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 97 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-118173bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 e8 e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 97 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c5 3d ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261768h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-11817a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 e8 e7 fe}
011fh mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 92 3d ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261770h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-11817d0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 e8 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 96 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261778h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11817e7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 19 e8 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc628h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 96 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e2820h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af f8 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 38 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 3d ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a a0 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 c9 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 89 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IExpr<Vector128<sbyte>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 08 d4 94 c7 f7 7f 00 00 e8 cc 2c ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 b0 6e 97 c7 f7 7f 00 00 e8 b1 2c ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 98 6f 97 c7 f7 7f 00 00 e8 96 2c ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 48 70 97 c7 f7 7f 00 00 e8 7b 2c ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 58 d5 94 c7 f7 7f 00 00 e8 60 2c ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb a8 17 26 c6 f7 7f 00 00 39 09 ff 15 17 e7 e7 fe 48 8b c8 e8 bf 95 ff ff c5 f9 10 70 08 48 8b cf 49 bb b0 17 26 c6 f7 7f 00 00 39 09 ff 15 fd e6 e7 fe 48 8b c8 e8 9d 95 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 74 c8 c5 f9 ef f1 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 d5 3b ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 90 17 26 c6 f7 7f 00 00 39 09 ff 15 91 e6 e7 fe 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 a2 3b ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 98 17 26 c6 f7 7f 00 00 39 09 ff 15 68 e6 e7 fe 48 8b c8 e8 20 95 ff ff eb 27 48 8b c8 49 bb a0 17 26 c6 f7 7f 00 00 39 09 ff 15 51 e6 e7 fe 48 8b c8 e8 01 95 ff ff eb 08 48 8b c8 e8 5f f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 59 36 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 27 3b ac 5e 48 8b f8 48 8b ce 33 d2 e8 7a 9e 91 4f 48 8b d0 48 8b cf e8 37 c7 fc fe 48 8b cf e8 57 87 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794d408h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 d4 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 2c ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7976eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 6e 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 2c ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7976f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 6f 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 2c ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7977048h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 70 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7b 2c ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794d558h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 d5 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 2c ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-11818e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 e7 e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 95 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62617b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1181903h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd e6 e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 95 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqb xmm1,xmm0,xmm0                 ; VPCMPEQB xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 74 /r || encoded[4]{c5 f9 74 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d5 3b ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261790h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-118196fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 e6 e7 fe}
011fh mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 3b ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261798h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1181998h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 68 e6 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 95 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11819afh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 e6 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc658h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 95 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e28c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 36 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 3b ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a 9e 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 c7 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 87 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IExpr<Vector128<ushort>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 78 d8 94 c7 f7 7f 00 00 e8 dc 2a ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 68 71 97 c7 f7 7f 00 00 e8 c1 2a ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 50 72 97 c7 f7 7f 00 00 e8 a6 2a ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 00 73 97 c7 f7 7f 00 00 e8 8b 2a ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 c8 d9 94 c7 f7 7f 00 00 e8 70 2a ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb d0 17 26 c6 f7 7f 00 00 39 09 ff 15 4f e5 e7 fe 48 8b c8 e8 ef 93 ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 17 26 c6 f7 7f 00 00 39 09 ff 15 35 e5 e7 fe 48 8b c8 e8 cd 93 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 48 d7 94 c7 f7 7f 00 00 e8 e5 39 ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb b8 17 26 c6 f7 7f 00 00 39 09 ff 15 c9 e4 e7 fe 48 b9 48 d7 94 c7 f7 7f 00 00 e8 b2 39 ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb c0 17 26 c6 f7 7f 00 00 39 09 ff 15 a0 e4 e7 fe 48 8b c8 e8 50 93 ff ff eb 27 48 8b c8 49 bb c8 17 26 c6 f7 7f 00 00 39 09 ff 15 89 e4 e7 fe 48 8b c8 e8 31 93 ff ff eb 08 48 8b c8 e8 c7 f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 69 34 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 37 39 ac 5e 48 8b f8 48 8b ce 33 d2 e8 8a 9c 91 4f 48 8b d0 48 8b cf e8 47 c5 fc fe 48 8b cf e8 67 85 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794d878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 d8 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dc 2a ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7977168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 71 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 2a ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7977250h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 72 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 2a ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7977300h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 73 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b 2a ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794d9c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 d9 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 2a ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1181ab1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f e5 e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 93 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62617d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 17 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1181acbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 e5 e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 93 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 39 ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62617b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1181b37h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 e4 e7 fe}
011fh mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 39 ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62617c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1181b60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 e4 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 50 93 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1181b77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 e4 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc678h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 93 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e2918h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 f5 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 34 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 39 ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 9c 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 c5 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 85 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IExpr<Vector128<short>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 e8 dc 94 c7 f7 7f 00 00 e8 ec 28 ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 20 74 97 c7 f7 7f 00 00 e8 d1 28 ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 08 75 97 c7 f7 7f 00 00 e8 b6 28 ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 b8 75 97 c7 f7 7f 00 00 e8 9b 28 ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 38 de 94 c7 f7 7f 00 00 e8 80 28 ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb f8 17 26 c6 f7 7f 00 00 39 09 ff 15 87 e3 e7 fe 48 8b c8 e8 1f 92 ff ff c5 f9 10 70 08 48 8b cf 49 bb 00 18 26 c6 f7 7f 00 00 39 09 ff 15 6d e3 e7 fe 48 8b c8 e8 fd 91 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 75 c8 c5 f9 ef f1 48 b9 b8 db 94 c7 f7 7f 00 00 e8 f5 37 ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb e0 17 26 c6 f7 7f 00 00 39 09 ff 15 01 e3 e7 fe 48 b9 b8 db 94 c7 f7 7f 00 00 e8 c2 37 ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb e8 17 26 c6 f7 7f 00 00 39 09 ff 15 d8 e2 e7 fe 48 8b c8 e8 80 91 ff ff eb 27 48 8b c8 49 bb f0 17 26 c6 f7 7f 00 00 39 09 ff 15 c1 e2 e7 fe 48 8b c8 e8 61 91 ff ff eb 08 48 8b c8 e8 2f f4 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 79 32 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 47 37 ac 5e 48 8b f8 48 8b ce 33 d2 e8 9a 9a 91 4f 48 8b d0 48 8b cf e8 57 c3 fc fe 48 8b cf e8 77 83 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794dce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 dc 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 28 ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7977420h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 74 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 28 ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7977508h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 75 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 28 ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c79775b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 75 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 28 ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794de38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 de 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 28 ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c62617f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 17 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1181c79h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 e3 e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 92 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1181c93h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6d e3 e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 91 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqw xmm1,xmm0,xmm0                 ; VPCMPEQW xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 75 /r || encoded[4]{c5 f9 75 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 37 ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c62617e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 17 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1181cffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 e3 e7 fe}
011fh mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 37 ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c62617e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 17 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1181d28h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 e2 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 91 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c62617f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 17 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1181d3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 e2 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc698h                      ; CALL rel32 || E8 cd || encoded[5]{e8 61 91 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e2970h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f f4 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 32 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 37 ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 9a 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 c3 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 83 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IExpr<Vector128<uint>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 58 e1 94 c7 f7 7f 00 00 e8 ec 22 ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 d8 76 97 c7 f7 7f 00 00 e8 d1 22 ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 c0 77 97 c7 f7 7f 00 00 e8 b6 22 ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 70 78 97 c7 f7 7f 00 00 e8 9b 22 ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 a8 e2 94 c7 f7 7f 00 00 e8 80 22 ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 20 18 26 c6 f7 7f 00 00 39 09 ff 15 af dd e7 fe 48 8b c8 e8 3f 8c ff ff c5 f9 10 70 08 48 8b cf 49 bb 28 18 26 c6 f7 7f 00 00 39 09 ff 15 95 dd e7 fe 48 8b c8 e8 1d 8c ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 28 e0 94 c7 f7 7f 00 00 e8 f5 31 ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 08 18 26 c6 f7 7f 00 00 39 09 ff 15 29 dd e7 fe 48 b9 28 e0 94 c7 f7 7f 00 00 e8 c2 31 ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 10 18 26 c6 f7 7f 00 00 39 09 ff 15 00 dd e7 fe 48 8b c8 e8 a0 8b ff ff eb 27 48 8b c8 49 bb 18 18 26 c6 f7 7f 00 00 39 09 ff 15 e9 dc e7 fe 48 8b c8 e8 81 8b ff ff eb 08 48 8b c8 e8 97 fa ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 79 2c a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 47 31 ac 5e 48 8b f8 48 8b ce 33 d2 e8 9a 94 91 4f 48 8b d0 48 8b cf e8 57 bd fc fe 48 8b cf e8 77 7d a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794e158h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 e1 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ec 22 ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c79776d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 76 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 22 ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c79777c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 77 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 22 ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7977870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 70 78 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 22 ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794e2a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e2 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 22 ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261820h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1182251h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af dd e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 8c ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261828h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-118226bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 dd e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 8c ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f5 31 ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261808h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-11822d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 dd e7 fe}
011fh mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 31 ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1182300h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 00 dd e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 8b ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261818h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-1182317h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 dc e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc6b8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 8b ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e35d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 fa ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 2c a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 47 31 ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 94 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 bd fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 7d a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IExpr<Vector128<int>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 c8 e5 94 c7 f7 7f 00 00 e8 fc 20 ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 90 79 97 c7 f7 7f 00 00 e8 e1 20 ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 78 7a 97 c7 f7 7f 00 00 e8 c6 20 ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 28 7b 97 c7 f7 7f 00 00 e8 ab 20 ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 18 e7 94 c7 f7 7f 00 00 e8 90 20 ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 48 18 26 c6 f7 7f 00 00 39 09 ff 15 e7 db e7 fe 48 8b c8 e8 6f 8a ff ff c5 f9 10 70 08 48 8b cf 49 bb 50 18 26 c6 f7 7f 00 00 39 09 ff 15 cd db e7 fe 48 8b c8 e8 4d 8a ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 98 e4 94 c7 f7 7f 00 00 e8 05 30 ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 30 18 26 c6 f7 7f 00 00 39 09 ff 15 61 db e7 fe 48 b9 98 e4 94 c7 f7 7f 00 00 e8 d2 2f ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 38 18 26 c6 f7 7f 00 00 39 09 ff 15 38 db e7 fe 48 8b c8 e8 d0 89 ff ff eb 27 48 8b c8 49 bb 40 18 26 c6 f7 7f 00 00 39 09 ff 15 21 db e7 fe 48 8b c8 e8 b1 89 ff ff eb 08 48 8b c8 e8 ff f8 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 89 2a a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 57 2f ac 5e 48 8b f8 48 8b ce 33 d2 e8 aa 92 91 4f 48 8b d0 48 8b cf e8 67 bb fc fe 48 8b cf e8 87 7b a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794e5c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 e5 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 20 ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7977990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 79 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 20 ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7977a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 7a 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 20 ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7977b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 7b 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 20 ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794e718h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 e7 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 20 ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261848h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-1182419h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 db e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 8a ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261850h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-1182433h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd db e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 8a ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 30 ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261830h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-118249fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 db e7 fe}
011fh mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 2f ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261838h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-11824c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 db e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d0 89 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261840h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11824dfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 db e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc6d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 89 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e3630h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff f8 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 2a a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 2f ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa 92 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 bb fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 7b a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IExpr<Vector128<ulong>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 10 48 96 c7 f7 7f 00 00 e8 0c 1f ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 48 7c 97 c7 f7 7f 00 00 e8 f1 1e ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 30 7d 97 c7 f7 7f 00 00 e8 d6 1e ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 e0 7d 97 c7 f7 7f 00 00 e8 bb 1e ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 b0 99 96 c7 f7 7f 00 00 e8 a0 1e ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 70 18 26 c6 f7 7f 00 00 39 09 ff 15 1f da e7 fe 48 8b c8 e8 0f 89 ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 18 26 c6 f7 7f 00 00 39 09 ff 15 05 da e7 fe 48 8b c8 e8 ed 88 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 e0 46 96 c7 f7 7f 00 00 e8 15 2e ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 58 18 26 c6 f7 7f 00 00 39 09 ff 15 99 d9 e7 fe 48 b9 e0 46 96 c7 f7 7f 00 00 e8 e2 2d ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 60 18 26 c6 f7 7f 00 00 39 09 ff 15 70 d9 e7 fe 48 8b c8 e8 70 88 ff ff eb 27 48 8b c8 49 bb 68 18 26 c6 f7 7f 00 00 39 09 ff 15 59 d9 e7 fe 48 8b c8 e8 51 88 ff ff eb 08 48 8b c8 e8 67 f7 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 99 28 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 67 2d ac 5e 48 8b f8 48 8b ce 33 d2 e8 ba 90 91 4f 48 8b d0 48 8b cf e8 77 b9 fc fe 48 8b cf e8 97 79 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c7964810h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 48 96 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0c 1f ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7977c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 7c 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1e ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7977d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 7d 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 1e ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7977de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 7d 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb 1e ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c79699b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 99 96 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 1e ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261870h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-11825e1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1f da e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dc768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 89 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c6261878h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-11825fbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 05 da e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dc768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 88 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 15 2e ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-1182667h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 d9 e7 fe}
011fh mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 2d ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1182690h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 d9 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dc768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 70 88 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261868h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-11826a7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 59 d9 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dc768h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 88 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e3688h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 f7 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 99 28 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 2d ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 90 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b9 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 79 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IExpr<Vector128<long>> expr)
; eval_g[458] = {57 56 48 83 ec 48 c5 f8 77 c5 f8 29 74 24 30 48 8b f1 48 8b d6 48 b9 38 ea 94 c7 f7 7f 00 00 e8 1c 1d ac 5e 48 85 c0 0f 85 d8 00 00 00 48 8b d6 48 b9 00 7f 97 c7 f7 7f 00 00 e8 01 1d ac 5e 48 85 c0 0f 85 f3 00 00 00 48 8b d6 48 b9 e8 7f 97 c7 f7 7f 00 00 e8 e6 1c ac 5e 48 85 c0 0f 85 f7 00 00 00 48 8b d6 48 b9 98 80 97 c7 f7 7f 00 00 e8 cb 1c ac 5e 48 85 c0 0f 85 fb 00 00 00 48 8b d6 48 b9 88 eb 94 c7 f7 7f 00 00 e8 b0 1c ac 5e 48 8b f8 48 85 ff 0f 84 f3 00 00 00 48 8b cf 49 bb 98 18 26 c6 f7 7f 00 00 39 09 ff 15 57 d8 e7 fe 48 8b c8 e8 df 89 ff ff c5 f9 10 70 08 48 8b cf 49 bb a0 18 26 c6 f7 7f 00 00 39 09 ff 15 3d d8 e7 fe 48 8b c8 e8 bd 89 ff ff c5 f9 10 40 08 c5 c9 ef c0 c5 f9 76 c8 c5 f9 ef f1 48 b9 08 e9 94 c7 f7 7f 00 00 e8 25 2c ac 5e c5 f9 11 70 08 e9 7c 00 00 00 48 8d 54 24 20 48 8b c8 49 bb 80 18 26 c6 f7 7f 00 00 39 09 ff 15 d1 d7 e7 fe 48 b9 08 e9 94 c7 f7 7f 00 00 e8 f2 2b ac 5e c5 f9 28 44 24 20 c5 f9 11 40 08 eb 46 48 8b c8 49 bb 88 18 26 c6 f7 7f 00 00 39 09 ff 15 a8 d7 e7 fe 48 8b c8 e8 40 89 ff ff eb 27 48 8b c8 49 bb 90 18 26 c6 f7 7f 00 00 39 09 ff 15 91 d7 e7 fe 48 8b c8 e8 21 89 ff ff eb 08 48 8b c8 e8 cf f5 ff ff 90 c5 f8 28 74 24 30 48 83 c4 48 5e 5f c3 48 8b ce e8 a9 26 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 77 2b ac 5e 48 8b f8 48 8b ce 33 d2 e8 ca 8e 91 4f 48 8b d0 48 8b cf e8 87 b7 fc fe 48 8b cf e8 a7 77 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,48h                             ; SUB r/m64, imm8 || REX.W 83 /5 ib || encoded[4]{48 83 ec 48}
0006h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
0009h vmovaps [rsp+30h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 30}
000fh mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
0012h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0015h mov rcx,7ff7c794ea38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 ea 94 c7 f7 7f 00 00}
001fh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1c 1d ac 5e}
0024h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0027h jne near ptr 0105h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 d8 00 00 00}
002dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0030h mov rcx,7ff7c7977f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 7f 97 c7 f7 7f 00 00}
003ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 1d ac 5e}
003fh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0042h jne near ptr 013bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f3 00 00 00}
0048h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
004bh mov rcx,7ff7c7977fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 7f 97 c7 f7 7f 00 00}
0055h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 1c ac 5e}
005ah test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
005dh jne near ptr 015ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f7 00 00 00}
0063h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0066h mov rcx,7ff7c7978098h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 80 97 c7 f7 7f 00 00}
0070h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cb 1c ac 5e}
0075h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0078h jne near ptr 0179h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 fb 00 00 00}
007eh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0081h mov rcx,7ff7c794eb88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 eb 94 c7 f7 7f 00 00}
008bh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b0 1c ac 5e}
0090h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0093h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0096h je near ptr 018fh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 f3 00 00 00}
009ch mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009fh mov r11,7ff7c6261898h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 18 26 c6 f7 7f 00 00}
00a9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00abh call qword ptr [rip-11827a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 d8 e7 fe}
00b1h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00b4h call 7ff7c73dca28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 89 ff ff}
00b9h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00beh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c1h mov r11,7ff7c62618a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 18 26 c6 f7 7f 00 00}
00cbh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00cdh call qword ptr [rip-11827c3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3d d8 e7 fe}
00d3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00d6h call 7ff7c73dca28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 89 ff ff}
00dbh vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
00e0h vpxor xmm0,xmm6,xmm0                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 c9 ef c0}
00e4h vpcmpeqd xmm1,xmm0,xmm0                 ; VPCMPEQD xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG 76 /r || encoded[4]{c5 f9 76 c8}
00e8h vpxor xmm6,xmm0,xmm1                    ; VPXOR xmm1, xmm2, xmm3/m128 || VEX.128.66.0F.WIG EF /r || encoded[4]{c5 f9 ef f1}
00ech mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
00f6h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 25 2c ac 5e}
00fbh vmovupd [rax+8],xmm6                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 70 08}
0100h jmp near ptr 0181h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0105h lea rdx,[rsp+20h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 20}
010ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010dh mov r11,7ff7c6261880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 18 26 c6 f7 7f 00 00}
0117h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0119h call qword ptr [rip-118282fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 d7 e7 fe}
011fh mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
0129h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f2 2b ac 5e}
012eh vmovapd xmm0,[rsp+20h]                  ; VMOVAPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 28 /r || encoded[6]{c5 f9 28 44 24 20}
0134h vmovupd [rax+8],xmm0                    ; VMOVUPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 11 /r || encoded[5]{c5 f9 11 40 08}
0139h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
013bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
013eh mov r11,7ff7c6261888h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 18 26 c6 f7 7f 00 00}
0148h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
014ah call qword ptr [rip-1182858h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 d7 e7 fe}
0150h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0153h call 7ff7c73dca28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 89 ff ff}
0158h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
015ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015dh mov r11,7ff7c6261890h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 18 26 c6 f7 7f 00 00}
0167h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0169h call qword ptr [rip-118286fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 d7 e7 fe}
016fh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0172h call 7ff7c73dca28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 89 ff ff}
0177h jmp short 0181h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
0179h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017ch call 7ff7c73e36e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf f5 ff ff}
0181h nop                                     ; NOP || o32 90 || encoded[1]{90}
0182h vmovaps xmm6,[rsp+30h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 30}
0188h add rsp,48h                             ; ADD r/m64, imm8 || REX.W 83 /0 ib || encoded[4]{48 83 c4 48}
018ch pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
018dh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
018eh ret                                     ; RET || C3 || encoded[1]{c3}
018fh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0192h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a9 26 a1 5e}
0197h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
019ah mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01a4h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 2b ac 5e}
01a9h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01ach mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01afh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01b1h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 8e 91 4f}
01b6h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01b9h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01bch call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 b7 fc fe}
01c1h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01c4h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a7 77 a3 5e}
01c9h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IExpr<Vector256<byte>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 c0 f4 94 c7 f7 7f 00 00 e8 23 1b ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 e8 86 97 c7 f7 7f 00 00 e8 08 1b ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 d0 87 97 c7 f7 7f 00 00 e8 ed 1a ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 80 88 97 c7 f7 7f 00 00 e8 d2 1a ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 10 f6 94 c7 f7 7f 00 00 e8 b7 1a ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb c0 18 26 c6 f7 7f 00 00 39 09 ff 15 86 d6 e7 fe 48 8b c8 e8 f6 88 ff ff c5 fd 10 70 08 48 8b cf 49 bb c8 18 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 66 d6 e7 fe 48 8b c8 e8 ce 88 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 90 f3 94 c7 f7 7f 00 00 e8 1a 2a ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb a8 18 26 c6 f7 7f 00 00 39 09 ff 15 e8 d5 e7 fe 48 b9 90 f3 94 c7 f7 7f 00 00 e8 e1 29 ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb b0 18 26 c6 f7 7f 00 00 39 09 ff 15 bf d5 e7 fe 48 8b c8 e8 3f 88 ff ff eb 27 48 8b c8 49 bb b8 18 26 c6 f7 7f 00 00 39 09 ff 15 a8 d5 e7 fe 48 8b c8 e8 20 88 ff ff eb 08 48 8b c8 e8 4e f5 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 8c 24 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 5a 29 ac 5e 48 8b f8 48 8b ce 33 d2 e8 ad 8c 91 4f 48 8b d0 48 8b cf e8 6a b5 fc fe 48 8b cf e8 8a 75 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c794f4c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c0 f4 94 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 23 1b ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c79786e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 86 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 08 1b ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79787d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 87 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 1a ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7978880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 88 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 1a ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c794f610h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 f6 94 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 1a ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62618c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 18 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-118297ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 d6 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcb38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 88 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62618c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 18 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-118299ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 d6 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcb38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 88 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a 2a ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1182a18h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e8 d5 e7 fe}
0140h mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 29 ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62618b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 18 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1182a41h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bf d5 e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcb38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 88 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62618b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 18 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1182a58h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a8 d5 e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcb38h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 88 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e3870h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e f5 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 24 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 29 ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad 8c 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a b5 fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 75 a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IExpr<Vector256<sbyte>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 90 f9 94 c7 f7 7f 00 00 e8 f3 18 ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 a0 8d 97 c7 f7 7f 00 00 e8 d8 18 ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 88 8e 97 c7 f7 7f 00 00 e8 bd 18 ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 38 8f 97 c7 f7 7f 00 00 e8 a2 18 ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 e0 fa 94 c7 f7 7f 00 00 e8 87 18 ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb e8 18 26 c6 f7 7f 00 00 39 09 ff 15 7e d4 e7 fe 48 8b c8 e8 f6 86 ff ff c5 fd 10 70 08 48 8b cf 49 bb f0 18 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5e d4 e7 fe 48 8b c8 e8 ce 86 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 74 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 60 f8 94 c7 f7 7f 00 00 e8 ea 27 ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb d0 18 26 c6 f7 7f 00 00 39 09 ff 15 e0 d3 e7 fe 48 b9 60 f8 94 c7 f7 7f 00 00 e8 b1 27 ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb d8 18 26 c6 f7 7f 00 00 39 09 ff 15 b7 d3 e7 fe 48 8b c8 e8 3f 86 ff ff eb 27 48 8b c8 49 bb e0 18 26 c6 f7 7f 00 00 39 09 ff 15 a0 d3 e7 fe 48 8b c8 e8 20 86 ff ff eb 08 48 8b c8 e8 be f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 5c 22 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 2a 27 ac 5e 48 8b f8 48 8b ce 33 d2 e8 7d 8a 91 4f 48 8b d0 48 8b cf e8 3a b3 fc fe 48 8b cf e8 5a 73 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c794f990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f9 94 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f3 18 ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7978da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a0 8d 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d8 18 ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7978e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 8e 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 18 ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7978f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 8f 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a2 18 ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c794fae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 fa 94 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 18 ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62618e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 18 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1182b82h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7e d4 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcb68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 86 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62618f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 18 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1182ba2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e d4 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcb68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ce 86 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqb ymm1,ymm0,ymm0                 ; VPCMPEQB ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 74 /r || encoded[4]{c5 fd 74 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 27 ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1182c20h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e0 d3 e7 fe}
0140h mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 27 ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c62618d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 18 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1182c49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 d3 e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcb68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 86 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c62618e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 18 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1182c60h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a0 d3 e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcb68h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 86 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e3910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f3 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 22 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 27 ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 8a 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b3 fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 73 a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IExpr<Vector256<ushort>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 00 fe 94 c7 f7 7f 00 00 e8 c3 16 ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 58 90 97 c7 f7 7f 00 00 e8 a8 16 ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 40 91 97 c7 f7 7f 00 00 e8 8d 16 ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 f0 91 97 c7 f7 7f 00 00 e8 72 16 ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 50 ff 94 c7 f7 7f 00 00 e8 57 16 ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 10 19 26 c6 f7 7f 00 00 39 09 ff 15 76 d2 e7 fe 48 8b c8 e8 e6 84 ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 56 d2 e7 fe 48 8b c8 e8 be 84 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 ba 25 ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb f8 18 26 c6 f7 7f 00 00 39 09 ff 15 d8 d1 e7 fe 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 81 25 ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 00 19 26 c6 f7 7f 00 00 39 09 ff 15 af d1 e7 fe 48 8b c8 e8 2f 84 ff ff eb 27 48 8b c8 49 bb 08 19 26 c6 f7 7f 00 00 39 09 ff 15 98 d1 e7 fe 48 8b c8 e8 10 84 ff ff eb 08 48 8b c8 e8 e6 f1 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 2c 20 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 fa 24 ac 5e 48 8b f8 48 8b ce 33 d2 e8 4d 88 91 4f 48 8b d0 48 8b cf e8 0a b1 fc fe 48 8b cf e8 2a 71 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c794fe00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 fe 94 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c3 16 ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7979058h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 90 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a8 16 ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7979140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 91 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d 16 ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c79791f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 91 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 16 ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c794ff50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 50 ff 94 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 16 ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261910h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1182d8ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 d2 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcb88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 84 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261918h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1182daah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 d2 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcb88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be 84 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 25 ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c62618f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 18 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1182e28h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 d1 e7 fe}
0140h mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 81 25 ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261900h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1182e51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af d1 e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcb88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 84 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1182e68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 d1 e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcb88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 10 84 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e3968h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f1 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2c 20 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 24 ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d 88 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a b1 fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 71 a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IExpr<Vector256<short>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 98 02 96 c7 f7 7f 00 00 e8 93 10 ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 10 93 97 c7 f7 7f 00 00 e8 78 10 ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 f8 93 97 c7 f7 7f 00 00 e8 5d 10 ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 a8 94 97 c7 f7 7f 00 00 e8 42 10 ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 e8 03 96 c7 f7 7f 00 00 e8 27 10 ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 38 19 26 c6 f7 7f 00 00 39 09 ff 15 6e cc e7 fe 48 8b c8 e8 d6 7e ff ff c5 fd 10 70 08 48 8b cf 49 bb 40 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 4e cc e7 fe 48 8b c8 e8 ae 7e ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 75 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 68 01 96 c7 f7 7f 00 00 e8 8a 1f ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 20 19 26 c6 f7 7f 00 00 39 09 ff 15 d0 cb e7 fe 48 b9 68 01 96 c7 f7 7f 00 00 e8 51 1f ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 28 19 26 c6 f7 7f 00 00 39 09 ff 15 a7 cb e7 fe 48 8b c8 e8 1f 7e ff ff eb 27 48 8b c8 49 bb 30 19 26 c6 f7 7f 00 00 39 09 ff 15 90 cb e7 fe 48 8b c8 e8 00 7e ff ff eb 08 48 8b c8 e8 e6 eb ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 fc 19 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 ca 1e ac 5e 48 8b f8 48 8b ce 33 d2 e8 1d 82 91 4f 48 8b d0 48 8b cf e8 da aa fc fe 48 8b cf e8 fa 6a a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7960298h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 02 96 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 93 10 ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7979310h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 10 93 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 78 10 ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79793f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f8 93 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5d 10 ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c79794a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 94 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 42 10 ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c79603e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 03 96 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 10 ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261938h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1183392h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6e cc e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d6 7e ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11833b2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e cc e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ae 7e ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqw ymm1,ymm0,ymm0                 ; VPCMPEQW ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 75 /r || encoded[4]{c5 fd 75 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 1f ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261920h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 19 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1183430h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 cb e7 fe}
0140h mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 1f ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261928h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1183459h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 cb e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 7e ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261930h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1183470h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 cb e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcba8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 7e ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e3998h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 eb ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fc 19 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 1e ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1d 82 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da aa fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 6a a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IExpr<Vector256<uint>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 08 07 96 c7 f7 7f 00 00 e8 63 0e ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 c8 95 97 c7 f7 7f 00 00 e8 48 0e ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 b0 96 97 c7 f7 7f 00 00 e8 2d 0e ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 60 97 97 c7 f7 7f 00 00 e8 12 0e ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 58 08 96 c7 f7 7f 00 00 e8 f7 0d ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 60 19 26 c6 f7 7f 00 00 39 09 ff 15 66 ca e7 fe 48 8b c8 e8 c6 7c ff ff c5 fd 10 70 08 48 8b cf 49 bb 68 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 46 ca e7 fe 48 8b c8 e8 9e 7c ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 d8 05 96 c7 f7 7f 00 00 e8 5a 1d ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 48 19 26 c6 f7 7f 00 00 39 09 ff 15 c8 c9 e7 fe 48 b9 d8 05 96 c7 f7 7f 00 00 e8 21 1d ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 50 19 26 c6 f7 7f 00 00 39 09 ff 15 9f c9 e7 fe 48 8b c8 e8 0f 7c ff ff eb 27 48 8b c8 49 bb 58 19 26 c6 f7 7f 00 00 39 09 ff 15 88 c9 e7 fe 48 8b c8 e8 f0 7b ff ff eb 08 48 8b c8 e8 96 f8 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 cc 17 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 9a 1c ac 5e 48 8b f8 48 8b ce 33 d2 e8 ed 7f 91 4f 48 8b d0 48 8b cf e8 aa a8 fc fe 48 8b cf e8 ca 68 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7960708h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 07 96 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 63 0e ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c79795c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 95 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 48 0e ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c79796b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 96 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d 0e ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7979760h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 97 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 0e ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c7960858h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 58 08 96 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 0d ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-118359ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 ca e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcbc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 7c ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11835bah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 ca e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcbc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9e 7c ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 1d ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261948h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 19 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1183638h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c8 c9 e7 fe}
0140h mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 1d ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261950h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1183661h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 9f c9 e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcbc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f 7c ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261958h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1183678h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 88 c9 e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcbc8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f0 7b ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e4878h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f8 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 17 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 1c ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed 7f 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 aa a8 fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 68 a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IExpr<Vector256<int>> expr)
; eval_g[503] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 78 0b 96 c7 f7 7f 00 00 e8 33 0c ac 5e 48 85 c0 0f 85 f0 00 00 00 48 8b d6 48 b9 80 98 97 c7 f7 7f 00 00 e8 18 0c ac 5e 48 85 c0 0f 85 0b 01 00 00 48 8b d6 48 b9 68 99 97 c7 f7 7f 00 00 e8 fd 0b ac 5e 48 85 c0 0f 85 0f 01 00 00 48 8b d6 48 b9 18 9a 97 c7 f7 7f 00 00 e8 e2 0b ac 5e 48 85 c0 0f 85 13 01 00 00 48 8b d6 48 b9 c8 0c 96 c7 f7 7f 00 00 e8 c7 0b ac 5e 48 8b f8 48 85 ff 0f 84 17 01 00 00 48 8b cf 49 bb 88 19 26 c6 f7 7f 00 00 39 09 ff 15 5e c8 e7 fe 48 8b c8 e8 b6 7a ff ff c5 fd 10 70 08 48 8b cf 49 bb 90 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 3e c8 e7 fe 48 8b c8 e8 8e 7a ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c5 fd 76 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 48 0a 96 c7 f7 7f 00 00 e8 2a 1b ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 70 19 26 c6 f7 7f 00 00 39 09 ff 15 c0 c7 e7 fe 48 b9 48 0a 96 c7 f7 7f 00 00 e8 f1 1a ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb 78 19 26 c6 f7 7f 00 00 39 09 ff 15 97 c7 e7 fe 48 8b c8 e8 ff 79 ff ff eb 27 48 8b c8 49 bb 80 19 26 c6 f7 7f 00 00 39 09 ff 15 80 c7 e7 fe 48 8b c8 e8 e0 79 ff ff eb 08 48 8b c8 e8 be f6 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 9c 15 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 6a 1a ac 5e 48 8b f8 48 8b ce 33 d2 e8 bd 7d 91 4f 48 8b d0 48 8b cf e8 7a a6 fc fe 48 8b cf e8 9a 66 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7960b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 78 0b 96 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 33 0c ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0126h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f0 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7979880h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 98 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 18 0c ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0b 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7979968h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 99 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fd 0b ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0f 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7979a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 18 9a 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 0b ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 13 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c7960cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 c8 0c 96 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 0b ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bch                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 17 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c6261988h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11837a2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5e c8 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcbe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 7a ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c6261990h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11837c2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3e c8 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcbe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8e 7a ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqd ymm1,ymm0,ymm0                 ; VPCMPEQD ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG 76 /r || encoded[4]{c5 fd 76 c8}
00fdh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0101h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0107h mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
0111h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 1b ac 5e}
0116h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011ch vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0121h jmp near ptr 01a2h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0126h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012eh mov r11,7ff7c6261970h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 19 26 c6 f7 7f 00 00}
0138h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013ah call qword ptr [rip-1183840h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c0 c7 e7 fe}
0140h mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
014ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 1a ac 5e}
014fh vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0155h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015ah jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
015fh mov r11,7ff7c6261978h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 19 26 c6 f7 7f 00 00}
0169h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016bh call qword ptr [rip-1183869h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 c7 e7 fe}
0171h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0174h call 7ff7c73dcbe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 79 ff ff}
0179h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017eh mov r11,7ff7c6261980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 19 26 c6 f7 7f 00 00}
0188h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018ah call qword ptr [rip-1183880h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 80 c7 e7 fe}
0190h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0193h call 7ff7c73dcbe8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 79 ff ff}
0198h jmp short 01a2h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019dh call 7ff7c73e48d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 be f6 ff ff}
01a2h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a3h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01a9h vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01afh vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b2h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01b9h pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bah pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bbh ret                                     ; RET || C3 || encoded[1]{c3}
01bch mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01bfh call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c 15 a1 5e}
01c4h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c7h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a 1a ac 5e}
01d6h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01d9h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01dch xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01deh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd 7d 91 4f}
01e3h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e9h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a a6 fc fe}
01eeh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f1h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 66 a3 5e}
01f6h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IExpr<Vector256<ulong>> expr)
; eval_g[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 68 56 96 c7 f7 7f 00 00 e8 03 0a ac 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 38 9b 97 c7 f7 7f 00 00 e8 e8 09 ac 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 20 9c 97 c7 f7 7f 00 00 e8 cd 09 ac 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 d0 9c 97 c7 f7 7f 00 00 e8 b2 09 ac 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 68 c6 96 c7 f7 7f 00 00 e8 97 09 ac 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb b0 19 26 c6 f7 7f 00 00 39 09 ff 15 56 c6 e7 fe 48 8b c8 e8 16 79 ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 36 c6 e7 fe 48 8b c8 e8 ee 78 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 38 55 96 c7 f7 7f 00 00 e8 f9 18 ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb 98 19 26 c6 f7 7f 00 00 39 09 ff 15 b7 c5 e7 fe 48 b9 38 55 96 c7 f7 7f 00 00 e8 c0 18 ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb a0 19 26 c6 f7 7f 00 00 39 09 ff 15 8e c5 e7 fe 48 8b c8 e8 5e 78 ff ff eb 27 48 8b c8 49 bb a8 19 26 c6 f7 7f 00 00 39 09 ff 15 77 c5 e7 fe 48 8b c8 e8 3f 78 ff ff eb 08 48 8b c8 e8 e5 f4 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 6b 13 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 39 18 ac 5e 48 8b f8 48 8b ce 33 d2 e8 8c 7b 91 4f 48 8b d0 48 8b cf e8 49 a4 fc fe 48 8b cf e8 69 64 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7965668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 56 96 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 0a ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7979b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 9b 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e8 09 ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7979c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 9c 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd 09 ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7979cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 9c 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 09 ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c796c668h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 c6 96 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 97 09 ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62619b0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-11839aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 c6 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcc78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 16 79 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62619b8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-11839cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 c6 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcc78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ee 78 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 18 ac 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c6261998h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 19 26 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-1183a49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 c5 e7 fe}
0141h mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 18 ac 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c62619a0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 19 26 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-1183a72h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8e c5 e7 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c73dcc78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5e 78 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c62619a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 19 26 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-1183a89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 c5 e7 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c73dcc78h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 78 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c73e4928h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e5 f4 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 13 a1 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 18 ac 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c 7b 91 4f}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 49 a4 fc fe}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 64 a3 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IExpr<Vector256<long>> expr)
; eval_g[504] = {57 56 48 81 ec 88 00 00 00 c5 f8 77 c5 f8 29 74 24 70 c5 f8 29 7c 24 60 48 8b f1 48 8b d6 48 b9 e8 0f 96 c7 f7 7f 00 00 e8 d3 07 ac 5e 48 85 c0 0f 85 f1 00 00 00 48 8b d6 48 b9 f0 9d 97 c7 f7 7f 00 00 e8 b8 07 ac 5e 48 85 c0 0f 85 0c 01 00 00 48 8b d6 48 b9 d8 9e 97 c7 f7 7f 00 00 e8 9d 07 ac 5e 48 85 c0 0f 85 10 01 00 00 48 8b d6 48 b9 88 9f 97 c7 f7 7f 00 00 e8 82 07 ac 5e 48 85 c0 0f 85 14 01 00 00 48 8b d6 48 b9 38 11 96 c7 f7 7f 00 00 e8 67 07 ac 5e 48 8b f8 48 85 ff 0f 84 18 01 00 00 48 8b cf 49 bb d8 19 26 c6 f7 7f 00 00 39 09 ff 15 4e c4 e7 fe 48 8b c8 e8 06 77 ff ff c5 fd 10 70 08 48 8b cf 49 bb e0 19 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 2e c4 e7 fe 48 8b c8 e8 de 76 ff ff c5 fd 10 40 08 c4 e3 4d 18 f7 01 c5 cd ef c0 c4 e2 7d 29 c8 c5 fd ef c1 c5 fd 11 44 24 20 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 c9 16 ac 5e c5 fd 10 44 24 20 c5 fd 11 40 08 e9 7c 00 00 00 48 8d 54 24 40 48 8b c8 49 bb c0 19 26 c6 f7 7f 00 00 39 09 ff 15 af c3 e7 fe 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 90 16 ac 5e c5 fd 10 44 24 40 c5 fd 11 40 08 eb 46 48 8b c8 49 bb c8 19 26 c6 f7 7f 00 00 39 09 ff 15 86 c3 e7 fe 48 8b c8 e8 4e 76 ff ff eb 27 48 8b c8 49 bb d0 19 26 c6 f7 7f 00 00 39 09 ff 15 6f c3 e7 fe 48 8b c8 e8 2f 76 ff ff eb 08 48 8b c8 e8 0d f3 ff ff 90 c5 f8 28 74 24 70 c5 f8 28 7c 24 60 c5 f8 77 48 81 c4 88 00 00 00 5e 5f c3 48 8b ce e8 3b 11 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 09 16 ac 5e 48 8b f8 48 8b ce 33 d2 e8 5c 79 91 4f 48 8b d0 48 8b cf e8 19 a2 fc fe 48 8b cf e8 39 62 a3 5e cc}
; TermCode = INTRx2
0000h push rdi                                ; PUSH r64 || 50+ro || encoded[1]{57}
0001h push rsi                                ; PUSH r64 || 50+ro || encoded[1]{56}
0002h sub rsp,88h                             ; SUB r/m64, imm32 || REX.W 81 /5 id || encoded[7]{48 81 ec 88 00 00 00}
0009h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
000ch vmovaps [rsp+70h],xmm6                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 74 24 70}
0012h vmovaps [rsp+60h],xmm7                  ; VMOVAPS xmm2/m128, xmm1 || VEX.128.0F.WIG 29 /r || encoded[6]{c5 f8 29 7c 24 60}
0018h mov rsi,rcx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f1}
001bh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
001eh mov rcx,7ff7c7960fe8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 0f 96 c7 f7 7f 00 00}
0028h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 07 ac 5e}
002dh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0030h jne near ptr 0127h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f1 00 00 00}
0036h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0039h mov rcx,7ff7c7979df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 9d 97 c7 f7 7f 00 00}
0043h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b8 07 ac 5e}
0048h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
004bh jne near ptr 015dh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 0c 01 00 00}
0051h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0054h mov rcx,7ff7c7979ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 9e 97 c7 f7 7f 00 00}
005eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d 07 ac 5e}
0063h test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0066h jne near ptr 017ch                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 10 01 00 00}
006ch mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
006fh mov rcx,7ff7c7979f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 9f 97 c7 f7 7f 00 00}
0079h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 82 07 ac 5e}
007eh test rax,rax                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 c0}
0081h jne near ptr 019bh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 14 01 00 00}
0087h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
008ah mov rcx,7ff7c7961138h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 11 96 c7 f7 7f 00 00}
0094h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 07 ac 5e}
0099h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
009ch test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
009fh je near ptr 01bdh                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 18 01 00 00}
00a5h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00a8h mov r11,7ff7c62619d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 19 26 c6 f7 7f 00 00}
00b2h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00b4h call qword ptr [rip-1183bb2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4e c4 e7 fe}
00bah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00bdh call 7ff7c73dcc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 77 ff ff}
00c2h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00c7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00cah mov r11,7ff7c62619e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 19 26 c6 f7 7f 00 00}
00d4h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00dah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00dch call qword ptr [rip-1183bd2h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2e c4 e7 fe}
00e2h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00e5h call 7ff7c73dcc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 de 76 ff ff}
00eah vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
00efh vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
00f5h vpxor ymm0,ymm6,ymm0                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 cd ef c0}
00f9h vpcmpeqq ymm1,ymm0,ymm0                 ; VPCMPEQQ ymm1, ymm2, ymm3/m256 || VEX.256.66.0F38.WIG 29 /r || encoded[5]{c4 e2 7d 29 c8}
00feh vpxor ymm0,ymm0,ymm1                    ; VPXOR ymm1, ymm2, ymm3/m256 || VEX.256.66.0F.WIG EF /r || encoded[4]{c5 fd ef c1}
0102h vmovupd [rsp+20h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 20}
0108h mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
0112h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 16 ac 5e}
0117h vmovupd ymm0,[rsp+20h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 20}
011dh vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
0122h jmp near ptr 01a3h                      ; JMP rel32 || E9 cd || encoded[5]{e9 7c 00 00 00}
0127h lea rdx,[rsp+40h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 54 24 40}
012ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012fh mov r11,7ff7c62619c0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 19 26 c6 f7 7f 00 00}
0139h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
013bh call qword ptr [rip-1183c51h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af c3 e7 fe}
0141h mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
014bh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 90 16 ac 5e}
0150h vmovupd ymm0,[rsp+40h]                  ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[6]{c5 fd 10 44 24 40}
0156h vmovupd [rax+8],ymm0                    ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[5]{c5 fd 11 40 08}
015bh jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 46}
015dh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0160h mov r11,7ff7c62619c8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 19 26 c6 f7 7f 00 00}
016ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
016ch call qword ptr [rip-1183c7ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 c3 e7 fe}
0172h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0175h call 7ff7c73dcc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4e 76 ff ff}
017ah jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 27}
017ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
017fh mov r11,7ff7c62619d0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 19 26 c6 f7 7f 00 00}
0189h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
018bh call qword ptr [rip-1183c91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f c3 e7 fe}
0191h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0194h call 7ff7c73dcc98h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 76 ff ff}
0199h jmp short 01a3h                         ; JMP rel8 || EB cb || encoded[2]{eb 08}
019bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
019eh call 7ff7c73e4980h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0d f3 ff ff}
01a3h nop                                     ; NOP || o32 90 || encoded[1]{90}
01a4h vmovaps xmm6,[rsp+70h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 74 24 70}
01aah vmovaps xmm7,[rsp+60h]                  ; VMOVAPS xmm1, xmm2/m128 || VEX.128.0F.WIG 28 /r || encoded[6]{c5 f8 28 7c 24 60}
01b0h vzeroupper                              ; VZEROUPPER || VEX.128.0F.WIG 77 || encoded[3]{c5 f8 77}
01b3h add rsp,88h                             ; ADD r/m64, imm32 || REX.W 81 /0 id || encoded[7]{48 81 c4 88 00 00 00}
01bah pop rsi                                 ; POP r64 || 58+ro || encoded[1]{5e}
01bbh pop rdi                                 ; POP r64 || 58+ro || encoded[1]{5f}
01bch ret                                     ; RET || C3 || encoded[1]{c3}
01bdh mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01c0h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b 11 a1 5e}
01c5h mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
01c8h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
01d2h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 09 16 ac 5e}
01d7h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
01dah mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
01ddh xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
01dfh call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c 79 91 4f}
01e4h mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
01e7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01eah call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 a2 fc fe}
01efh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01f2h call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 39 62 a3 5e}
01f7h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<byte>> eval<byte>(IOperator<Vector128<byte>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 08 a6 97 c7 f7 7f 00 00 e8 9b 05 ac 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 00 a8 97 c7 f7 7f 00 00 e8 7d 05 ac 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 28 aa 97 c7 f7 7f 00 00 e8 5f 05 ac 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 b0 ab 97 c7 f7 7f 00 00 e8 41 05 ac 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 28 1a 26 c6 f7 7f 00 00 39 09 ff 15 78 c2 e7 fe 8b d8 48 8b cf 49 bb 30 1a 26 c6 f7 7f 00 00 39 09 ff 15 69 c2 e7 fe 48 8b c8 e8 21 d6 ff ff c5 f9 10 70 08 48 8b cf 49 bb 38 1a 26 c6 f7 7f 00 00 39 09 ff 15 4f c2 e7 fe 48 8b c8 e8 ff d5 ff ff c5 f9 10 78 08 48 8b cf 49 bb 40 1a 26 c6 f7 7f 00 00 39 09 ff 15 35 c2 e7 fe 48 8b c8 e8 dd d5 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 46 91 fc ff 48 b9 08 ce 94 c7 f7 7f 00 00 e8 57 14 ac 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 19 26 c6 f7 7f 00 00 39 09 ff 15 51 c1 e7 fe 8b e8 48 8b cf 49 bb f0 19 26 c6 f7 7f 00 00 39 09 ff 15 42 c1 e7 fe 48 8b c8 e8 3a d5 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 eb 10 fc ff 48 b9 08 ce 94 c7 f7 7f 00 00 e8 cc 13 ac 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 19 26 c6 f7 7f 00 00 39 09 ff 15 d3 c0 e7 fe 8b f0 48 8b cb 49 bb 00 1a 26 c6 f7 7f 00 00 39 09 ff 15 c4 c0 e7 fe 48 8b c8 e8 ac d4 ff ff c5 f9 10 70 08 48 8b cb 49 bb 08 1a 26 c6 f7 7f 00 00 39 09 ff 15 aa c0 e7 fe 48 8b c8 e8 8a d4 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 00 52 fc ff 48 b9 08 ce 94 c7 f7 7f 00 00 e8 11 13 ac 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 1a 26 c6 f7 7f 00 00 39 09 ff 15 30 c0 e7 fe 8b f0 48 8b cd 49 bb 18 1a 26 c6 f7 7f 00 00 39 09 ff 15 21 c0 e7 fe 48 8b c8 e8 f1 d3 ff ff c5 f9 10 70 08 48 8b cd 49 bb 20 1a 26 c6 f7 7f 00 00 39 09 ff 15 07 c0 e7 fe 48 8b c8 e8 37 3b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 13 f1 ff ff 48 b9 08 ce 94 c7 f7 7f 00 00 e8 64 12 ac 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 0d a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 12 ac 5e 48 8b f8 48 8b ce 33 d2 e8 74 75 91 4f 48 8b d0 48 8b cf e8 31 9e fc fe 48 8b cf e8 51 5e a3 5e cc}
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
0026h mov rcx,7ff7c797a608h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 a6 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 05 ac 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797a800h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 00 a8 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 05 ac 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797aa28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 aa 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 05 ac 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797abb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b0 ab 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 05 ac 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261a28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1183d88h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 78 c2 e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261a30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1183d97h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 69 c2 e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 d6 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261a38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1183db1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4f c2 e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff d5 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261a40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1a 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1183dcbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 35 c2 e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd d5 ff ff}
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
0145h call 7ff7c73ae990h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 91 fc ff}
014ah mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 14 ac 5e}
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
0185h mov r11,7ff7c62619e8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 19 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1183eafh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 51 c1 e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c62619f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 19 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1183ebeh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 42 c1 e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a d5 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a69c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 10 fc ff}
01d5h mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 13 ac 5e}
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
0213h mov r11,7ff7c62619f8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 19 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1183f2dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d3 c0 e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261a00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1183f3ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c4 c0 e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ac d4 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261a08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1a 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1183f56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa c0 e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a d4 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73aab90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 00 52 fc ff}
0290h mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 13 ac 5e}
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
02ceh mov r11,7ff7c6261a10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1a 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1183fd0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 30 c0 e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261a18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1a 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1183fdfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 21 c0 e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e2df0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d3 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261a20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1a 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1183ff9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 c0 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 3b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e4b50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 13 f1 ff ff}
033dh mov rcx,7ff7c794ce08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 ce 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 12 ac 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 0d a1 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 12 ac 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 75 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 9e fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 5e a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<sbyte>> eval<sbyte>(IOperator<Vector128<sbyte>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 b7 97 c7 f7 7f 00 00 e8 9b 01 ac 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 b9 97 c7 f7 7f 00 00 e8 7d 01 ac 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 bb 97 c7 f7 7f 00 00 e8 5f 01 ac 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 bd 97 c7 f7 7f 00 00 e8 41 01 ac 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 88 1a 26 c6 f7 7f 00 00 39 09 ff 15 d8 be e7 fe 8b d8 48 8b cf 49 bb 90 1a 26 c6 f7 7f 00 00 39 09 ff 15 c9 be e7 fe 48 8b c8 e8 11 d4 ff ff c5 f9 10 70 08 48 8b cf 49 bb 98 1a 26 c6 f7 7f 00 00 39 09 ff 15 af be e7 fe 48 8b c8 e8 ef d3 ff ff c5 f9 10 78 08 48 8b cf 49 bb a0 1a 26 c6 f7 7f 00 00 39 09 ff 15 95 be e7 fe 48 8b c8 e8 cd d3 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 c6 8d fc ff 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 57 10 ac 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 1a 26 c6 f7 7f 00 00 39 09 ff 15 b1 bd e7 fe 8b e8 48 8b cf 49 bb 50 1a 26 c6 f7 7f 00 00 39 09 ff 15 a2 bd e7 fe 48 8b c8 e8 2a d3 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b 0e fc ff 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 cc 0f ac 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 1a 26 c6 f7 7f 00 00 39 09 ff 15 33 bd e7 fe 8b f0 48 8b cb 49 bb 60 1a 26 c6 f7 7f 00 00 39 09 ff 15 24 bd e7 fe 48 8b c8 e8 9c d2 ff ff c5 f9 10 70 08 48 8b cb 49 bb 68 1a 26 c6 f7 7f 00 00 39 09 ff 15 0a bd e7 fe 48 8b c8 e8 7a d2 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 e0 50 fc ff 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 11 0f ac 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 1a 26 c6 f7 7f 00 00 39 09 ff 15 90 bc e7 fe 8b f0 48 8b cd 49 bb 78 1a 26 c6 f7 7f 00 00 39 09 ff 15 81 bc e7 fe 48 8b c8 e8 e1 d1 ff ff c5 f9 10 70 08 48 8b cd 49 bb 80 1a 26 c6 f7 7f 00 00 39 09 ff 15 67 bc e7 fe 48 8b c8 e8 37 37 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 ab ed ff ff 48 b9 d8 d2 94 c7 f7 7f 00 00 e8 64 0e ac 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 09 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 0e ac 5e 48 8b f8 48 8b ce 33 d2 e8 74 71 91 4f 48 8b d0 48 8b cf e8 31 9a fc fe 48 8b cf e8 51 5a a3 5e cc}
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
0026h mov rcx,7ff7c797b788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 b7 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b 01 ac 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797b980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 b9 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d 01 ac 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797bba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 bb 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f 01 ac 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797bd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 bd 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 01 ac 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261a88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1184128h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d8 be e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261a90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1184137h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c9 be e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 d4 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261a98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1184151h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 af be e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef d3 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261aa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1a 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-118416bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 95 be e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cd d3 ff ff}
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
0145h call 7ff7c73aea10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 8d fc ff}
014ah mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 10 ac 5e}
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
0185h mov r11,7ff7c6261a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1a 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-118424fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b1 bd e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261a50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1a 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-118425eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a2 bd e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a d3 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a6b00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 0e fc ff}
01d5h mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 0f ac 5e}
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
0213h mov r11,7ff7c6261a58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1a 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-11842cdh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 33 bd e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261a60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-11842dch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 24 bd e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9c d2 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261a68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1a 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-11842f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a bd e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a d2 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73aae70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e0 50 fc ff}
0290h mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 0f ac 5e}
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
02ceh mov r11,7ff7c6261a70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1a 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1184370h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 90 bc e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261a78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1a 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-118437fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 81 bc e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e2fe0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 d1 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261a80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1a 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1184399h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 bc e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 37 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e4be8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ed ff ff}
033dh mov rcx,7ff7c794d2d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 d2 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 0e ac 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 09 a1 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 0e ac 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 71 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 9a fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 5a a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ushort>> eval<ushort>(IOperator<Vector128<ushort>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 bf 97 c7 f7 7f 00 00 e8 9b f9 ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 c1 97 c7 f7 7f 00 00 e8 7d f9 ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 c3 97 c7 f7 7f 00 00 e8 5f f9 ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 c5 97 c7 f7 7f 00 00 e8 41 f9 ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb e8 1a 26 c6 f7 7f 00 00 39 09 ff 15 38 b7 e7 fe 8b d8 48 8b cf 49 bb f0 1a 26 c6 f7 7f 00 00 39 09 ff 15 29 b7 e7 fe 48 8b c8 e8 01 ce ff ff c5 f9 10 70 08 48 8b cf 49 bb f8 1a 26 c6 f7 7f 00 00 39 09 ff 15 0f b7 e7 fe 48 8b c8 e8 df cd ff ff c5 f9 10 78 08 48 8b cf 49 bb 00 1b 26 c6 f7 7f 00 00 39 09 ff 15 f5 b6 e7 fe 48 8b c8 e8 bd cd ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 46 86 fc ff 48 b9 48 d7 94 c7 f7 7f 00 00 e8 57 08 ac 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 1a 26 c6 f7 7f 00 00 39 09 ff 15 11 b6 e7 fe 8b e8 48 8b cf 49 bb b0 1a 26 c6 f7 7f 00 00 39 09 ff 15 02 b6 e7 fe 48 8b c8 e8 1a cd ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b 07 fc ff 48 b9 48 d7 94 c7 f7 7f 00 00 e8 cc 07 ac 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 1a 26 c6 f7 7f 00 00 39 09 ff 15 93 b5 e7 fe 8b f0 48 8b cb 49 bb c0 1a 26 c6 f7 7f 00 00 39 09 ff 15 84 b5 e7 fe 48 8b c8 e8 8c cc ff ff c5 f9 10 70 08 48 8b cb 49 bb c8 1a 26 c6 f7 7f 00 00 39 09 ff 15 6a b5 e7 fe 48 8b c8 e8 6a cc ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 c0 4b fc ff 48 b9 48 d7 94 c7 f7 7f 00 00 e8 11 07 ac 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 1a 26 c6 f7 7f 00 00 39 09 ff 15 f0 b4 e7 fe 8b f0 48 8b cd 49 bb d8 1a 26 c6 f7 7f 00 00 39 09 ff 15 e1 b4 e7 fe 48 8b c8 e8 d1 cb ff ff c5 f9 10 70 08 48 8b cd 49 bb e0 1a 26 c6 f7 7f 00 00 39 09 ff 15 c7 b4 e7 fe 48 8b c8 e8 37 2f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 03 f9 ff ff 48 b9 48 d7 94 c7 f7 7f 00 00 e8 64 06 ac 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 01 a1 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 06 ac 5e 48 8b f8 48 8b ce 33 d2 e8 74 69 91 4f 48 8b d0 48 8b cf e8 31 92 fc fe 48 8b cf e8 51 52 a3 5e cc}
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
0026h mov rcx,7ff7c797bf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 bf 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f9 ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797c180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c1 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f9 ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797c3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 c3 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f9 ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797c530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 c5 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f9 ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261ae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1a 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-11848c8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 38 b7 e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261af0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1a 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-11848d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 b7 e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 ce ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261af8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1a 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-11848f1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0f b7 e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df cd ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261b00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-118490bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f5 b6 e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bd cd ff ff}
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
0145h call 7ff7c73aea90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 86 fc ff}
014ah mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 08 ac 5e}
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
0185h mov r11,7ff7c6261aa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1a 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-11849efh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 11 b6 e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261ab0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1a 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-11849feh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 02 b6 e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a cd ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a6c40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 07 fc ff}
01d5h mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 07 ac 5e}
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
0213h mov r11,7ff7c6261ab8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1a 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1184a6dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 93 b5 e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261ac0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1a 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1184a7ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 84 b5 e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8c cc ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261ac8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1a 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1184a96h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a b5 e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a cc ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73ab150h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c0 4b fc ff}
0290h mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 07 ac 5e}
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
02ceh mov r11,7ff7c6261ad0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1a 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1184b10h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f0 b4 e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261ad8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1a 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1184b1fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e1 b4 e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e31d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 cb ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261ae0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1a 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1184b39h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 b4 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 2f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e5f40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 03 f9 ff ff}
033dh mov rcx,7ff7c794d748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 d7 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 06 ac 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 01 a1 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 06 ac 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 69 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 92 fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 52 a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<short>> eval<short>(IOperator<Vector128<short>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 c7 97 c7 f7 7f 00 00 e8 9b f5 ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 c9 97 c7 f7 7f 00 00 e8 7d f5 ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 cb 97 c7 f7 7f 00 00 e8 5f f5 ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 cd 97 c7 f7 7f 00 00 e8 41 f5 ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 48 1b 26 c6 f7 7f 00 00 39 09 ff 15 98 b3 e7 fe 8b d8 48 8b cf 49 bb 50 1b 26 c6 f7 7f 00 00 39 09 ff 15 89 b3 e7 fe 48 8b c8 e8 f1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 58 1b 26 c6 f7 7f 00 00 39 09 ff 15 6f b3 e7 fe 48 8b c8 e8 cf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 60 1b 26 c6 f7 7f 00 00 39 09 ff 15 55 b3 e7 fe 48 8b c8 e8 ad cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 c6 86 fc ff 48 b9 b8 db 94 c7 f7 7f 00 00 e8 57 04 ac 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 1b 26 c6 f7 7f 00 00 39 09 ff 15 71 b2 e7 fe 8b e8 48 8b cf 49 bb 10 1b 26 c6 f7 7f 00 00 39 09 ff 15 62 b2 e7 fe 48 8b c8 e8 0a cb ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 ab 04 fc ff 48 b9 b8 db 94 c7 f7 7f 00 00 e8 cc 03 ac 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 1b 26 c6 f7 7f 00 00 39 09 ff 15 f3 b1 e7 fe 8b f0 48 8b cb 49 bb 20 1b 26 c6 f7 7f 00 00 39 09 ff 15 e4 b1 e7 fe 48 8b c8 e8 7c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb 28 1b 26 c6 f7 7f 00 00 39 09 ff 15 ca b1 e7 fe 48 8b c8 e8 5a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 a0 4a fc ff 48 b9 b8 db 94 c7 f7 7f 00 00 e8 11 03 ac 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 1b 26 c6 f7 7f 00 00 39 09 ff 15 50 b1 e7 fe 8b f0 48 8b cd 49 bb 38 1b 26 c6 f7 7f 00 00 39 09 ff 15 41 b1 e7 fe 48 8b c8 e8 c1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 40 1b 26 c6 f7 7f 00 00 39 09 ff 15 27 b1 e7 fe 48 8b c8 e8 37 2b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 6b f5 ff ff 48 b9 b8 db 94 c7 f7 7f 00 00 e8 64 02 ac 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 fd a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 02 ac 5e 48 8b f8 48 8b ce 33 d2 e8 74 65 91 4f 48 8b d0 48 8b cf e8 31 8e fc fe 48 8b cf e8 51 4e a3 5e cc}
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
0026h mov rcx,7ff7c797c788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 c7 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f5 ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797c980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 c9 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f5 ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797cba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 cb 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f5 ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797cd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 cd 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f5 ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261b48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1b 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1184c68h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 98 b3 e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261b50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1b 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1184c77h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 b3 e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261b58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1b 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1184c91h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6f b3 e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261b60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1184cabh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 55 b3 e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cb ff ff}
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
0145h call 7ff7c73aef10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 86 fc ff}
014ah mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 04 ac 5e}
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
0185h mov r11,7ff7c6261b08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1b 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1184d8fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 71 b2 e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261b10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1b 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1184d9eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 62 b2 e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cb ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a6d80h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab 04 fc ff}
01d5h mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc 03 ac 5e}
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
0213h mov r11,7ff7c6261b18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1b 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1184e0dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f3 b1 e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261b20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1b 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1184e1ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e4 b1 e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261b28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1184e36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca b1 e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73ab430h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a0 4a fc ff}
0290h mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 03 ac 5e}
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
02ceh mov r11,7ff7c6261b30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1184eb0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 50 b1 e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261b38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1184ebfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 41 b1 e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e33c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261b40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1b 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1184ed9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 b1 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 2b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e5fa8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b f5 ff ff}
033dh mov rcx,7ff7c794dbb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 db 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 02 ac 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 fd a0 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 02 ac 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 65 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8e fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 4e a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<uint>> eval<uint>(IOperator<Vector128<uint>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 cf 97 c7 f7 7f 00 00 e8 9b f1 ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 d1 97 c7 f7 7f 00 00 e8 7d f1 ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 d3 97 c7 f7 7f 00 00 e8 5f f1 ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 d5 97 c7 f7 7f 00 00 e8 41 f1 ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb a8 1b 26 c6 f7 7f 00 00 39 09 ff 15 f8 af e7 fe 8b d8 48 8b cf 49 bb b0 1b 26 c6 f7 7f 00 00 39 09 ff 15 e9 af e7 fe 48 8b c8 e8 f1 cd ff ff c5 f9 10 70 08 48 8b cf 49 bb b8 1b 26 c6 f7 7f 00 00 39 09 ff 15 cf af e7 fe 48 8b c8 e8 cf cd ff ff c5 f9 10 78 08 48 8b cf 49 bb c0 1b 26 c6 f7 7f 00 00 39 09 ff 15 b5 af e7 fe 48 8b c8 e8 ad cd ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 46 83 fc ff 48 b9 28 e0 94 c7 f7 7f 00 00 e8 57 00 ac 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 1b 26 c6 f7 7f 00 00 39 09 ff 15 d1 ae e7 fe 8b e8 48 8b cf 49 bb 70 1b 26 c6 f7 7f 00 00 39 09 ff 15 c2 ae e7 fe 48 8b c8 e8 0a cd ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 eb 05 fc ff 48 b9 28 e0 94 c7 f7 7f 00 00 e8 cc ff ab 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 1b 26 c6 f7 7f 00 00 39 09 ff 15 53 ae e7 fe 8b f0 48 8b cb 49 bb 80 1b 26 c6 f7 7f 00 00 39 09 ff 15 44 ae e7 fe 48 8b c8 e8 7c cc ff ff c5 f9 10 70 08 48 8b cb 49 bb 88 1b 26 c6 f7 7f 00 00 39 09 ff 15 2a ae e7 fe 48 8b c8 e8 5a cc ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 80 4d fc ff 48 b9 28 e0 94 c7 f7 7f 00 00 e8 11 ff ab 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 1b 26 c6 f7 7f 00 00 39 09 ff 15 b0 ad e7 fe 8b f0 48 8b cd 49 bb 98 1b 26 c6 f7 7f 00 00 39 09 ff 15 a1 ad e7 fe 48 8b c8 e8 c1 cb ff ff c5 f9 10 70 08 48 8b cd 49 bb a0 1b 26 c6 f7 7f 00 00 39 09 ff 15 87 ad e7 fe 48 8b c8 e8 37 27 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 d3 f1 ff ff 48 b9 28 e0 94 c7 f7 7f 00 00 e8 64 fe ab 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 f9 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 fe ab 5e 48 8b f8 48 8b ce 33 d2 e8 74 61 91 4f 48 8b d0 48 8b cf e8 31 8a fc fe 48 8b cf e8 51 4a a3 5e cc}
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
0026h mov rcx,7ff7c797cf88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 cf 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b f1 ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797d180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d1 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d f1 ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797d3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 d3 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f f1 ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797d530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 d5 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f1 ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261ba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1b 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1185008h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f8 af e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261bb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1b 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1185017h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 af e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 cd ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261bb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1b 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1185031h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cf af e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf cd ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261bc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1b 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-118504bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 af e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ad cd ff ff}
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
0145h call 7ff7c73aef90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 83 fc ff}
014ah mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 00 ac 5e}
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
0185h mov r11,7ff7c6261b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1b 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-118512fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d1 ae e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261b70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1b 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-118513eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c2 ae e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a cd ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a72c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb 05 fc ff}
01d5h mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc ff ab 5e}
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
0213h mov r11,7ff7c6261b78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1b 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-11851adh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 53 ae e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261b80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1b 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-11851bch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 44 ae e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7c cc ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261b88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-11851d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a ae e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a cc ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73abb10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 80 4d fc ff}
0290h mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 ff ab 5e}
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
02ceh mov r11,7ff7c6261b90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1185250h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b0 ad e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261b98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-118525fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a1 ad e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e39c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 cb ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261ba0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1b 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1185279h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 ad e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 27 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e6010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d3 f1 ff ff}
033dh mov rcx,7ff7c794e028h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 28 e0 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fe ab 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f9 a0 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 fe ab 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 61 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 8a fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 4a a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<int>> eval<int>(IOperator<Vector128<int>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 d7 97 c7 f7 7f 00 00 e8 9b ed ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 d9 97 c7 f7 7f 00 00 e8 7d ed ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 db 97 c7 f7 7f 00 00 e8 5f ed ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 dd 97 c7 f7 7f 00 00 e8 41 ed ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 08 1c 26 c6 f7 7f 00 00 39 09 ff 15 58 ac e7 fe 8b d8 48 8b cf 49 bb 10 1c 26 c6 f7 7f 00 00 39 09 ff 15 49 ac e7 fe 48 8b c8 e8 e1 cb ff ff c5 f9 10 70 08 48 8b cf 49 bb 18 1c 26 c6 f7 7f 00 00 39 09 ff 15 2f ac e7 fe 48 8b c8 e8 bf cb ff ff c5 f9 10 78 08 48 8b cf 49 bb 20 1c 26 c6 f7 7f 00 00 39 09 ff 15 15 ac e7 fe 48 8b c8 e8 9d cb ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 c6 7f fc ff 48 b9 98 e4 94 c7 f7 7f 00 00 e8 57 fc ab 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 1b 26 c6 f7 7f 00 00 39 09 ff 15 31 ab e7 fe 8b e8 48 8b cf 49 bb d0 1b 26 c6 f7 7f 00 00 39 09 ff 15 22 ab e7 fe 48 8b c8 e8 fa ca ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 2b 03 fc ff 48 b9 98 e4 94 c7 f7 7f 00 00 e8 cc fb ab 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 1b 26 c6 f7 7f 00 00 39 09 ff 15 b3 aa e7 fe 8b f0 48 8b cb 49 bb e0 1b 26 c6 f7 7f 00 00 39 09 ff 15 a4 aa e7 fe 48 8b c8 e8 6c ca ff ff c5 f9 10 70 08 48 8b cb 49 bb e8 1b 26 c6 f7 7f 00 00 39 09 ff 15 8a aa e7 fe 48 8b c8 e8 4a ca ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 60 4c fc ff 48 b9 98 e4 94 c7 f7 7f 00 00 e8 11 fb ab 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 1b 26 c6 f7 7f 00 00 39 09 ff 15 10 aa e7 fe 8b f0 48 8b cd 49 bb f8 1b 26 c6 f7 7f 00 00 39 09 ff 15 01 aa e7 fe 48 8b c8 e8 b1 c9 ff ff c5 f9 10 70 08 48 8b cd 49 bb 00 1c 26 c6 f7 7f 00 00 39 09 ff 15 e7 a9 e7 fe 48 8b c8 e8 37 23 ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 3b ee ff ff 48 b9 98 e4 94 c7 f7 7f 00 00 e8 64 fa ab 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 f5 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 fa ab 5e 48 8b f8 48 8b ce 33 d2 e8 74 5d 91 4f 48 8b d0 48 8b cf e8 31 86 fc fe 48 8b cf e8 51 46 a3 5e cc}
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
0026h mov rcx,7ff7c797d788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 d7 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b ed ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797d980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 d9 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d ed ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797dba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 db 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f ed ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797dd30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 dd 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 ed ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261c08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1c 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-11853a8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 58 ac e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261c10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1c 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-11853b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 ac e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 cb ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261c18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1c 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-11853d1h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2f ac e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf cb ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261c20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1c 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-11853ebh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 ac e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d cb ff ff}
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
0145h call 7ff7c73af010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 7f fc ff}
014ah mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 fc ab 5e}
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
0185h mov r11,7ff7c6261bc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1b 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-11854cfh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 31 ab e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261bd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1b 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-11854deh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 22 ab e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa ca ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a7400h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2b 03 fc ff}
01d5h mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc fb ab 5e}
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
0213h mov r11,7ff7c6261bd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1b 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-118554dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b3 aa e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261be0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1b 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-118555ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a4 aa e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6c ca ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261be8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1b 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1185576h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a aa e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4a ca ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73abdf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 60 4c fc ff}
0290h mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 fb ab 5e}
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
02ceh mov r11,7ff7c6261bf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1b 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-11855f0h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 10 aa e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261bf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1b 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-11855ffh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 01 aa e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e3bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 c9 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261c00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1c 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1185619h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 a9 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 23 ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e6078h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b ee ff ff}
033dh mov rcx,7ff7c794e498h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 98 e4 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 fa ab 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f5 a0 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 fa ab 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 5d 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 86 fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 46 a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<ulong>> eval<ulong>(IOperator<Vector128<ulong>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 df 97 c7 f7 7f 00 00 e8 9b e9 ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 e1 97 c7 f7 7f 00 00 e8 7d e9 ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 e3 97 c7 f7 7f 00 00 e8 5f e9 ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 e5 97 c7 f7 7f 00 00 e8 41 e9 ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb 68 1c 26 c6 f7 7f 00 00 39 09 ff 15 b8 a8 e7 fe 8b d8 48 8b cf 49 bb 70 1c 26 c6 f7 7f 00 00 39 09 ff 15 a9 a8 e7 fe 48 8b c8 e8 d1 c9 ff ff c5 f9 10 70 08 48 8b cf 49 bb 78 1c 26 c6 f7 7f 00 00 39 09 ff 15 8f a8 e7 fe 48 8b c8 e8 af c9 ff ff c5 f9 10 78 08 48 8b cf 49 bb 80 1c 26 c6 f7 7f 00 00 39 09 ff 15 75 a8 e7 fe 48 8b c8 e8 8d c9 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 46 7c fc ff 48 b9 e0 46 96 c7 f7 7f 00 00 e8 57 f8 ab 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 1c 26 c6 f7 7f 00 00 39 09 ff 15 91 a7 e7 fe 8b e8 48 8b cf 49 bb 30 1c 26 c6 f7 7f 00 00 39 09 ff 15 82 a7 e7 fe 48 8b c8 e8 ea c8 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 6b 00 fc ff 48 b9 e0 46 96 c7 f7 7f 00 00 e8 cc f7 ab 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 1c 26 c6 f7 7f 00 00 39 09 ff 15 13 a7 e7 fe 8b f0 48 8b cb 49 bb 40 1c 26 c6 f7 7f 00 00 39 09 ff 15 04 a7 e7 fe 48 8b c8 e8 5c c8 ff ff c5 f9 10 70 08 48 8b cb 49 bb 48 1c 26 c6 f7 7f 00 00 39 09 ff 15 ea a6 e7 fe 48 8b c8 e8 3a c8 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 40 4b fc ff 48 b9 e0 46 96 c7 f7 7f 00 00 e8 11 f7 ab 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 1c 26 c6 f7 7f 00 00 39 09 ff 15 70 a6 e7 fe 8b f0 48 8b cd 49 bb 58 1c 26 c6 f7 7f 00 00 39 09 ff 15 61 a6 e7 fe 48 8b c8 e8 a1 c7 ff ff c5 f9 10 70 08 48 8b cd 49 bb 60 1c 26 c6 f7 7f 00 00 39 09 ff 15 47 a6 e7 fe 48 8b c8 e8 37 1f ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 a3 ea ff ff 48 b9 e0 46 96 c7 f7 7f 00 00 e8 64 f6 ab 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 f1 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 f6 ab 5e 48 8b f8 48 8b ce 33 d2 e8 74 59 91 4f 48 8b d0 48 8b cf e8 31 82 fc fe 48 8b cf e8 51 42 a3 5e cc}
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
0026h mov rcx,7ff7c797df88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 df 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e9 ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797e180h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e1 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e9 ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797e3a8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 e3 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e9 ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797e530h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 e5 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e9 ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261c68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1c 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1185748h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b8 a8 e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261c70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1c 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1185757h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a9 a8 e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d1 c9 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261c78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1c 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1185771h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8f a8 e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c9 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261c80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1c 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-118578bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 a8 e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d c9 ff ff}
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
0145h call 7ff7c73af090h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 7c fc ff}
014ah mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f8 ab 5e}
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
0185h mov r11,7ff7c6261c28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1c 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-118586fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 91 a7 e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261c30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1c 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-118587eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 82 a7 e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea c8 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a7540h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b 00 fc ff}
01d5h mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f7 ab 5e}
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
0213h mov r11,7ff7c6261c38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1c 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-11858edh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 13 a7 e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261c40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1c 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-11858fch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 04 a7 e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5c c8 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261c48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1c 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1185916h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ea a6 e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a c8 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73ac0d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 40 4b fc ff}
0290h mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f7 ab 5e}
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
02ceh mov r11,7ff7c6261c50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1c 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1185990h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 70 a6 e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261c58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1c 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-118599fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 61 a6 e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e3da0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 c7 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261c60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1c 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-11859b9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 a6 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 1f ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e60e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a3 ea ff ff}
033dh mov rcx,7ff7c79646e0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e0 46 96 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f6 ab 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 f1 a0 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f6 ab 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 59 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 82 fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 42 a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector128<long>> eval<long>(IOperator<Vector128<long>> expr)
; eval_g[944] = {57 56 55 53 48 81 ec c8 00 00 00 c5 f8 77 c5 f8 29 b4 24 b0 00 00 00 c5 f8 29 bc 24 a0 00 00 00 48 8b f1 48 8b d6 48 b9 88 e7 97 c7 f7 7f 00 00 e8 9b e5 ab 5e 48 8b f8 48 85 ff 0f 85 41 01 00 00 48 8b d6 48 b9 80 e9 97 c7 f7 7f 00 00 e8 7d e5 ab 5e 48 8b d8 48 85 db 0f 85 b1 01 00 00 48 8b d6 48 b9 a8 eb 97 c7 f7 7f 00 00 e8 5f e5 ab 5e 48 8b e8 48 85 ed 0f 85 4e 02 00 00 48 8b d6 48 b9 30 ed 97 c7 f7 7f 00 00 e8 41 e5 ab 5e 48 8b f8 48 85 ff 0f 84 da 02 00 00 48 8b cf 49 bb c8 1c 26 c6 f7 7f 00 00 39 09 ff 15 18 a5 e7 fe 8b d8 48 8b cf 49 bb d0 1c 26 c6 f7 7f 00 00 39 09 ff 15 09 a5 e7 fe 48 8b c8 e8 c1 c7 ff ff c5 f9 10 70 08 48 8b cf 49 bb d8 1c 26 c6 f7 7f 00 00 39 09 ff 15 ef a4 e7 fe 48 8b c8 e8 9f c7 ff ff c5 f9 10 78 08 48 8b cf 49 bb e0 1c 26 c6 f7 7f 00 00 39 09 ff 15 d5 a4 e7 fe 48 8b c8 e8 7d c7 ff ff c5 f9 10 40 08 48 8d 4c 24 60 8b d3 c5 f9 29 74 24 50 c5 f9 29 7c 24 40 c5 f9 29 44 24 30 4c 8d 44 24 50 4c 8d 4c 24 40 48 8d 44 24 30 48 89 44 24 20 e8 c6 78 fc ff 48 b9 08 e9 94 c7 f7 7f 00 00 e8 57 f4 ab 5e c5 f9 28 44 24 60 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 1c 26 c6 f7 7f 00 00 39 09 ff 15 f1 a3 e7 fe 8b e8 48 8b cf 49 bb 90 1c 26 c6 f7 7f 00 00 39 09 ff 15 e2 a3 e7 fe 48 8b c8 e8 da c6 ff ff c5 f9 10 40 08 48 8d 8c 24 90 00 00 00 8b d5 c5 f9 29 44 24 50 4c 8d 44 24 50 e8 ab fd fb ff 48 b9 08 e9 94 c7 f7 7f 00 00 e8 cc f3 ab 5e c5 f9 28 84 24 90 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 1c 26 c6 f7 7f 00 00 39 09 ff 15 73 a3 e7 fe 8b f0 48 8b cb 49 bb a0 1c 26 c6 f7 7f 00 00 39 09 ff 15 64 a3 e7 fe 48 8b c8 e8 4c c6 ff ff c5 f9 10 70 08 48 8b cb 49 bb a8 1c 26 c6 f7 7f 00 00 39 09 ff 15 4a a3 e7 fe 48 8b c8 e8 2a c6 ff ff c5 f9 10 40 08 48 8d 8c 24 80 00 00 00 8b d6 c5 f9 29 74 24 50 c5 f9 29 44 24 40 4c 8d 44 24 50 4c 8d 4c 24 40 e8 20 4a fc ff 48 b9 08 e9 94 c7 f7 7f 00 00 e8 11 f3 ab 5e c5 f9 28 84 24 80 00 00 00 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 1c 26 c6 f7 7f 00 00 39 09 ff 15 d0 a2 e7 fe 8b f0 48 8b cd 49 bb b8 1c 26 c6 f7 7f 00 00 39 09 ff 15 c1 a2 e7 fe 48 8b c8 e8 91 c5 ff ff c5 f9 10 70 08 48 8b cd 49 bb c0 1c 26 c6 f7 7f 00 00 39 09 ff 15 a7 a2 e7 fe 48 8b c8 e8 37 1b ff ff 48 8d 4c 24 70 8b d6 c5 f9 29 74 24 50 4c 8d 44 24 50 44 0f b6 48 08 e8 0b e7 ff ff 48 b9 08 e9 94 c7 f7 7f 00 00 e8 64 f2 ab 5e c5 f9 28 44 24 70 c5 f9 11 40 08 c5 f8 28 b4 24 b0 00 00 00 c5 f8 28 bc 24 a0 00 00 00 48 81 c4 c8 00 00 00 5b 5d 5e 5f c3 48 8b ce e8 53 ed a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 21 f2 ab 5e 48 8b f8 48 8b ce 33 d2 e8 74 55 91 4f 48 8b d0 48 8b cf e8 31 7e fc fe 48 8b cf e8 51 3e a3 5e cc}
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
0026h mov rcx,7ff7c797e788h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 88 e7 97 c7 f7 7f 00 00}
0030h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b e5 ab 5e}
0035h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0038h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
003bh jne near ptr 0182h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 41 01 00 00}
0041h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0044h mov rcx,7ff7c797e980h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 80 e9 97 c7 f7 7f 00 00}
004eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d e5 ab 5e}
0053h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0056h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
0059h jne near ptr 0210h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b1 01 00 00}
005fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0062h mov rcx,7ff7c797eba8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 a8 eb 97 c7 f7 7f 00 00}
006ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f e5 ab 5e}
0071h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0074h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0077h jne near ptr 02cbh                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 4e 02 00 00}
007dh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0080h mov rcx,7ff7c797ed30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 30 ed 97 c7 f7 7f 00 00}
008ah call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 e5 ab 5e}
008fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0092h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
0095h je near ptr 0375h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 da 02 00 00}
009bh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
009eh mov r11,7ff7c6261cc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1c 26 c6 f7 7f 00 00}
00a8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00aah call qword ptr [rip-1185ae8h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 18 a5 e7 fe}
00b0h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00b2h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b5h mov r11,7ff7c6261cd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1c 26 c6 f7 7f 00 00}
00bfh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00c1h call qword ptr [rip-1185af7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 09 a5 e7 fe}
00c7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00cah call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c1 c7 ff ff}
00cfh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
00d4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00d7h mov r11,7ff7c6261cd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1c 26 c6 f7 7f 00 00}
00e1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00e3h call qword ptr [rip-1185b11h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ef a4 e7 fe}
00e9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00ech call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c7 ff ff}
00f1h vmovupd xmm7,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 78 08}
00f6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00f9h mov r11,7ff7c6261ce0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1c 26 c6 f7 7f 00 00}
0103h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0105h call qword ptr [rip-1185b2bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 a4 e7 fe}
010bh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
010eh call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d c7 ff ff}
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
0145h call 7ff7c73af110h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 78 fc ff}
014ah mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
0154h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 57 f4 ab 5e}
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
0185h mov r11,7ff7c6261c88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1c 26 c6 f7 7f 00 00}
018fh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0191h call qword ptr [rip-1185c0fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f1 a3 e7 fe}
0197h mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
0199h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
019ch mov r11,7ff7c6261c90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1c 26 c6 f7 7f 00 00}
01a6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01a8h call qword ptr [rip-1185c1eh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e2 a3 e7 fe}
01aeh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01b1h call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da c6 ff ff}
01b6h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
01bbh lea rcx,[rsp+90h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 90 00 00 00}
01c3h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
01c5h vmovapd [rsp+50h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 50}
01cbh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
01d0h call 7ff7c73a7680h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab fd fb ff}
01d5h mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
01dfh call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cc f3 ab 5e}
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
0213h mov r11,7ff7c6261c98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1c 26 c6 f7 7f 00 00}
021dh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
021fh call qword ptr [rip-1185c8dh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 73 a3 e7 fe}
0225h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0227h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
022ah mov r11,7ff7c6261ca0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1c 26 c6 f7 7f 00 00}
0234h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0236h call qword ptr [rip-1185c9ch]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 64 a3 e7 fe}
023ch mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
023fh call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4c c6 ff ff}
0244h vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0249h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
024ch mov r11,7ff7c6261ca8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1c 26 c6 f7 7f 00 00}
0256h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0258h call qword ptr [rip-1185cb6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a a3 e7 fe}
025eh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0261h call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a c6 ff ff}
0266h vmovupd xmm0,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 40 08}
026bh lea rcx,[rsp+80h]                       ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 80 00 00 00}
0273h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0275h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
027bh vmovapd [rsp+40h],xmm0                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 44 24 40}
0281h lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0286h lea r9,[rsp+40h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 40}
028bh call 7ff7c73ac3b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 20 4a fc ff}
0290h mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
029ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 11 f3 ab 5e}
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
02ceh mov r11,7ff7c6261cb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1c 26 c6 f7 7f 00 00}
02d8h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02dah call qword ptr [rip-1185d30h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d0 a2 e7 fe}
02e0h mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
02e2h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
02e5h mov r11,7ff7c6261cb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1c 26 c6 f7 7f 00 00}
02efh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02f1h call qword ptr [rip-1185d3fh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c1 a2 e7 fe}
02f7h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02fah call 7ff7c73e3f90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c5 ff ff}
02ffh vmovupd xmm6,[rax+8]                    ; VMOVUPD xmm1, xmm2/m128 || VEX.128.66.0F.WIG 10 /r || encoded[5]{c5 f9 10 70 08}
0304h mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0307h mov r11,7ff7c6261cc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1c 26 c6 f7 7f 00 00}
0311h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0313h call qword ptr [rip-1185d59h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 a2 e7 fe}
0319h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
031ch call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 37 1b ff ff}
0321h lea rcx,[rsp+70h]                       ; LEA r64, m || REX.W 8D /r || encoded[5]{48 8d 4c 24 70}
0326h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
0328h vmovapd [rsp+50h],xmm6                  ; VMOVAPD xmm2/m128, xmm1 || VEX.128.66.0F.WIG 29 /r || encoded[6]{c5 f9 29 74 24 50}
032eh lea r8,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 50}
0333h movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
0338h call 7ff7c73e6148h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b e7 ff ff}
033dh mov rcx,7ff7c794e908h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 08 e9 94 c7 f7 7f 00 00}
0347h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 64 f2 ab 5e}
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
0378h call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 53 ed a0 5e}
037dh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0380h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
038ah call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 f2 ab 5e}
038fh mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0392h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0395h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0397h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 74 55 91 4f}
039ch mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
039fh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03a2h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 31 7e fc fe}
03a7h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
03aah call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 3e a3 5e}
03afh int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<byte>> eval<byte>(IOperator<Vector256<byte>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 40 f5 97 c7 f7 7f 00 00 e8 89 dd ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 38 f7 97 c7 f7 7f 00 00 e8 6b dd ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 60 f9 97 c7 f7 7f 00 00 e8 4d dd ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 e8 fa 97 c7 f7 7f 00 00 e8 2f dd ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 28 1d 26 c6 f7 7f 00 00 39 09 ff 15 66 9d e7 fe 8b d8 48 8b cf 49 bb 30 1d 26 c6 f7 7f 00 00 39 09 ff 15 57 9d e7 fe 48 8b c8 e8 9f c1 ff ff c5 fd 10 70 08 48 8b cf 49 bb 38 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 37 9d e7 fe 48 8b c8 e8 77 c1 ff ff c5 7d 10 40 08 48 8b cf 49 bb 40 1d 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 17 9d e7 fe 48 8b c8 e8 4f c1 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 19 71 fc ff 48 b9 90 f3 94 c7 f7 7f 00 00 e8 2a ec ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb e8 1c 26 c6 f7 7f 00 00 39 09 ff 15 0c 9c e7 fe 8b e8 48 8b cf 49 bb f0 1c 26 c6 f7 7f 00 00 39 09 ff 15 fd 9b e7 fe 48 8b c8 e8 85 c0 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 a6 f6 fb ff 48 b9 90 f3 94 c7 f7 7f 00 00 e8 87 eb ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb f8 1c 26 c6 f7 7f 00 00 39 09 ff 15 79 9b e7 fe 8b f0 48 8b cb 49 bb 00 1d 26 c6 f7 7f 00 00 39 09 ff 15 6a 9b e7 fe 48 8b c8 e8 e2 bf ff ff c5 fd 10 70 08 48 8b cb 49 bb 08 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 4a 9b e7 fe 48 8b c8 e8 ba bf ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 9a 48 fc ff 48 b9 90 f3 94 c7 f7 7f 00 00 e8 ab ea ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 10 1d 26 c6 f7 7f 00 00 39 09 ff 15 b5 9a e7 fe 8b f0 48 8b cd 49 bb 18 1d 26 c6 f7 7f 00 00 39 09 ff 15 a6 9a e7 fe 48 8b c8 e8 06 bf ff ff c5 fd 10 70 08 48 8b cd 49 bb 20 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 86 9a e7 fe 48 8b c8 e8 b6 12 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 59 f8 ff ff 48 b9 90 f3 94 c7 f7 7f 00 00 e8 da e9 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 b1 e4 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 7f e9 ab 5e 48 8b f8 48 8b ce 33 d2 e8 d2 4c 91 4f 48 8b d0 48 8b cf e8 8f 75 fc fe 48 8b cf e8 af 35 a3 5e cc}
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
0038h mov rcx,7ff7c797f540h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 f5 97 c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 dd ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c797f738h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 f7 97 c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6b dd ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c797f960h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f9 97 c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4d dd ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c797fae8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 e8 fa 97 c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f dd ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261d28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-118629ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 9d e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261d30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-11862a9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 9d e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f c1 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261d38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-11862c9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 9d e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 c1 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261d40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1d 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-11862e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 9d e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f c1 ff ff}
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
0172h call 7ff7c73af190h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 71 fc ff}
0177h mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a ec ab 5e}
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
01cah mov r11,7ff7c6261ce8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1c 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-11863f4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0c 9c e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1c 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1186403h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fd 9b e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 c0 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a77c0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 f6 fb ff}
021ah mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 87 eb ab 5e}
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
026dh mov r11,7ff7c6261cf8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1c 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1186487h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 79 9b e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261d00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1186496h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 9b e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 bf ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261d08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1d 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11864b6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 4a 9b e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba bf ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73aca90h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9a 48 fc ff}
02f6h mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ea ab 5e}
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
0349h mov r11,7ff7c6261d10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1d 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-118654bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b5 9a e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261d18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1d 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-118655ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 9a e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e4180h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 bf ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261d20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1d 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-118657ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 9a e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b6 12 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7b20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 f8 ff ff}
03c7h mov rcx,7ff7c794f390h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 90 f3 94 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 da e9 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 e4 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f e9 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d2 4c 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 75 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af 35 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<sbyte>> eval<sbyte>(IOperator<Vector256<sbyte>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 07 9a c7 f7 7f 00 00 e8 d9 d8 ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 09 9a c7 f7 7f 00 00 e8 bb d8 ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 0b 9a c7 f7 7f 00 00 e8 9d d8 ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 0c 9a c7 f7 7f 00 00 e8 7f d8 ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 88 1d 26 c6 f7 7f 00 00 39 09 ff 15 16 99 e7 fe 8b d8 48 8b cf 49 bb 90 1d 26 c6 f7 7f 00 00 39 09 ff 15 07 99 e7 fe 48 8b c8 e8 1f bf ff ff c5 fd 10 70 08 48 8b cf 49 bb 98 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 e7 98 e7 fe 48 8b c8 e8 f7 be ff ff c5 7d 10 40 08 48 8b cf 49 bb a0 1d 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 c7 98 e7 fe 48 8b c8 e8 cf be ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 e9 6c fc ff 48 b9 60 f8 94 c7 f7 7f 00 00 e8 7a e7 ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 48 1d 26 c6 f7 7f 00 00 39 09 ff 15 bc 97 e7 fe 8b e8 48 8b cf 49 bb 50 1d 26 c6 f7 7f 00 00 39 09 ff 15 ad 97 e7 fe 48 8b c8 e8 05 be ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 46 f3 fb ff 48 b9 60 f8 94 c7 f7 7f 00 00 e8 d7 e6 ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 58 1d 26 c6 f7 7f 00 00 39 09 ff 15 29 97 e7 fe 8b f0 48 8b cb 49 bb 60 1d 26 c6 f7 7f 00 00 39 09 ff 15 1a 97 e7 fe 48 8b c8 e8 62 bd ff ff c5 fd 10 70 08 48 8b cb 49 bb 68 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 fa 96 e7 fe 48 8b c8 e8 3a bd ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ca 46 fc ff 48 b9 60 f8 94 c7 f7 7f 00 00 e8 fb e5 ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 70 1d 26 c6 f7 7f 00 00 39 09 ff 15 65 96 e7 fe 8b f0 48 8b cd 49 bb 78 1d 26 c6 f7 7f 00 00 39 09 ff 15 56 96 e7 fe 48 8b c8 e8 86 bc ff ff c5 fd 10 70 08 48 8b cd 49 bb 80 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 36 96 e7 fe 48 8b c8 e8 06 0e ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 41 f4 ff ff 48 b9 60 f8 94 c7 f7 7f 00 00 e8 2a e5 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 01 e0 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 cf e4 ab 5e 48 8b f8 48 8b ce 33 d2 e8 22 48 91 4f 48 8b d0 48 8b cf e8 df 70 fc fe 48 8b cf e8 ff 30 a3 5e cc}
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
0038h mov rcx,7ff7c79a0748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 07 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 d8 ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a0940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 09 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bb d8 ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a0b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 0b 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9d d8 ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a0cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 0c 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f d8 ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261d88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-11866eah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 16 99 e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261d90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-11866f9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 99 e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f bf ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261d98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1186719h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 98 e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 be ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261da0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1d 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1186739h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 98 e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf be ff ff}
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
0172h call 7ff7c73af210h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e9 6c fc ff}
0177h mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a e7 ab 5e}
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
01cah mov r11,7ff7c6261d48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1d 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1186844h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bc 97 e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261d50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1d 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1186853h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ad 97 e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 be ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a7910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 f3 fb ff}
021ah mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d7 e6 ab 5e}
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
026dh mov r11,7ff7c6261d58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1d 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11868d7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 29 97 e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261d60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-11868e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 97 e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bd ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261d68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1d 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1186906h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 fa 96 e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bd ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73acd70h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca 46 fc ff}
02f6h mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb e5 ab 5e}
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
0349h mov r11,7ff7c6261d70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1d 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-118699bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 65 96 e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261d78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1d 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-11869aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 96 e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e43b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bc ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261d80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1d 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11869cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 96 e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 0e ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7bb8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 f4 ff ff}
03c7h mov rcx,7ff7c794f860h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 60 f8 94 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a e5 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 01 e0 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf e4 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 22 48 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 70 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ff 30 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ushort>> eval<ushort>(IOperator<Vector256<ushort>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 0f 9a c7 f7 7f 00 00 e8 29 d4 ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 11 9a c7 f7 7f 00 00 e8 0b d4 ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 13 9a c7 f7 7f 00 00 e8 ed d3 ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 14 9a c7 f7 7f 00 00 e8 cf d3 ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb e8 1d 26 c6 f7 7f 00 00 39 09 ff 15 c6 94 e7 fe 8b d8 48 8b cf 49 bb f0 1d 26 c6 f7 7f 00 00 39 09 ff 15 b7 94 e7 fe 48 8b c8 e8 9f bc ff ff c5 fd 10 70 08 48 8b cf 49 bb f8 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 97 94 e7 fe 48 8b c8 e8 77 bc ff ff c5 7d 10 40 08 48 8b cf 49 bb 00 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 77 94 e7 fe 48 8b c8 e8 4f bc ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 b9 68 fc ff 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 ca e2 ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb a8 1d 26 c6 f7 7f 00 00 39 09 ff 15 6c 93 e7 fe 8b e8 48 8b cf 49 bb b0 1d 26 c6 f7 7f 00 00 39 09 ff 15 5d 93 e7 fe 48 8b c8 e8 85 bb ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 e6 ef fb ff 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 27 e2 ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb b8 1d 26 c6 f7 7f 00 00 39 09 ff 15 d9 92 e7 fe 8b f0 48 8b cb 49 bb c0 1d 26 c6 f7 7f 00 00 39 09 ff 15 ca 92 e7 fe 48 8b c8 e8 e2 ba ff ff c5 fd 10 70 08 48 8b cb 49 bb c8 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 aa 92 e7 fe 48 8b c8 e8 ba ba ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 fa 48 fc ff 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 4b e1 ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb d0 1d 26 c6 f7 7f 00 00 39 09 ff 15 15 92 e7 fe 8b f0 48 8b cd 49 bb d8 1d 26 c6 f7 7f 00 00 39 09 ff 15 06 92 e7 fe 48 8b c8 e8 06 ba ff ff c5 fd 10 70 08 48 8b cd 49 bb e0 1d 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 e6 91 e7 fe 48 8b c8 e8 56 09 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 f9 ef ff ff 48 b9 d0 fc 94 c7 f7 7f 00 00 e8 7a e0 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 51 db a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 1f e0 ab 5e 48 8b f8 48 8b ce 33 d2 e8 72 43 91 4f 48 8b d0 48 8b cf e8 2f 6c fc fe 48 8b cf e8 4f 2c a3 5e cc}
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
0038h mov rcx,7ff7c79a0f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0f 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 d4 ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a1140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 11 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0b d4 ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a1368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 13 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ed d3 ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a14f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 14 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf d3 ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261de8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1d 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1186b3ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 94 e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261df0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1d 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1186b49h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b7 94 e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bc ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261df8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1d 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1186b69h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 97 94 e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bc ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261e00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1186b89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 94 e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bc ff ff}
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
0172h call 7ff7c73af290h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 68 fc ff}
0177h mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca e2 ab 5e}
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
01cah mov r11,7ff7c6261da8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1d 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1186c94h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6c 93 e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261db0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1d 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1186ca3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5d 93 e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 bb ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a7a60h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 ef fb ff}
021ah mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 27 e2 ab 5e}
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
026dh mov r11,7ff7c6261db8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1d 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1186d27h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d9 92 e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261dc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1d 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1186d36h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ca 92 e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 ba ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261dc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1d 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1186d56h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 aa 92 e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba ba ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ad450h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fa 48 fc ff}
02f6h mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b e1 ab 5e}
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
0349h mov r11,7ff7c6261dd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1d 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1186debh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 15 92 e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261dd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1d 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1186dfah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 06 92 e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e45e0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 ba ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261de0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1d 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1186e1ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e6 91 e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 56 09 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7c20h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 ef ff ff}
03c7h mov rcx,7ff7c794fcd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d0 fc 94 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7a e0 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 51 db a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f e0 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 72 43 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2f 6c fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f 2c a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<short>> eval<short>(IOperator<Vector256<short>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 17 9a c7 f7 7f 00 00 e8 79 cf ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 19 9a c7 f7 7f 00 00 e8 5b cf ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 1b 9a c7 f7 7f 00 00 e8 3d cf ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 1c 9a c7 f7 7f 00 00 e8 1f cf ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 48 1e 26 c6 f7 7f 00 00 39 09 ff 15 76 90 e7 fe 8b d8 48 8b cf 49 bb 50 1e 26 c6 f7 7f 00 00 39 09 ff 15 67 90 e7 fe 48 8b c8 e8 1f be ff ff c5 fd 10 70 08 48 8b cf 49 bb 58 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 47 90 e7 fe 48 8b c8 e8 f7 bd ff ff c5 7d 10 40 08 48 8b cf 49 bb 60 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 27 90 e7 fe 48 8b c8 e8 cf bd ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 89 64 fc ff 48 b9 68 01 96 c7 f7 7f 00 00 e8 1a de ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 08 1e 26 c6 f7 7f 00 00 39 09 ff 15 1c 8f e7 fe 8b e8 48 8b cf 49 bb 10 1e 26 c6 f7 7f 00 00 39 09 ff 15 0d 8f e7 fe 48 8b c8 e8 05 bd ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 86 ec fb ff 48 b9 68 01 96 c7 f7 7f 00 00 e8 77 dd ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 18 1e 26 c6 f7 7f 00 00 39 09 ff 15 89 8e e7 fe 8b f0 48 8b cb 49 bb 20 1e 26 c6 f7 7f 00 00 39 09 ff 15 7a 8e e7 fe 48 8b c8 e8 62 bc ff ff c5 fd 10 70 08 48 8b cb 49 bb 28 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 5a 8e e7 fe 48 8b c8 e8 3a bc ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 2a 47 fc ff 48 b9 68 01 96 c7 f7 7f 00 00 e8 9b dc ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 30 1e 26 c6 f7 7f 00 00 39 09 ff 15 c5 8d e7 fe 8b f0 48 8b cd 49 bb 38 1e 26 c6 f7 7f 00 00 39 09 ff 15 b6 8d e7 fe 48 8b c8 e8 86 bb ff ff c5 fd 10 70 08 48 8b cd 49 bb 40 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 96 8d e7 fe 48 8b c8 e8 a6 04 ff ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 b1 eb ff ff 48 b9 68 01 96 c7 f7 7f 00 00 e8 ca db ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 a1 d6 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 6f db ab 5e 48 8b f8 48 8b ce 33 d2 e8 c2 3e 91 4f 48 8b d0 48 8b cf e8 7f 67 fc fe 48 8b cf e8 9f 27 a3 5e cc}
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
0038h mov rcx,7ff7c79a1748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 17 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 79 cf ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a1940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 19 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5b cf ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a1b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 1b 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3d cf ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a1cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 1c 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f cf ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261e48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1e 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1186f8ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 90 e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261e50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1e 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1186f99h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 67 90 e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f be ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261e58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1e 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1186fb9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 47 90 e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 bd ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261e60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1186fd9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 90 e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf bd ff ff}
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
0172h call 7ff7c73af310h                      ; CALL rel32 || E8 cd || encoded[5]{e8 89 64 fc ff}
0177h mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a de ab 5e}
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
01cah mov r11,7ff7c6261e08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1e 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-11870e4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1c 8f e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261e10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1e 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-11870f3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0d 8f e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 bd ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a7bb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 ec fb ff}
021ah mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 dd ab 5e}
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
026dh mov r11,7ff7c6261e18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1e 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1187177h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 89 8e e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261e20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1e 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1187186h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7a 8e e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 bc ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261e28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11871a6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 5a 8e e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a bc ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ad730h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2a 47 fc ff}
02f6h mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b dc ab 5e}
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
0349h mov r11,7ff7c6261e30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-118723bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c5 8d e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261e38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-118724ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 b6 8d e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e4c10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 bb ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261e40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1e 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-118726ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 96 8d e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a6 04 ff ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7c88h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b1 eb ff ff}
03c7h mov rcx,7ff7c7960168h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 01 96 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ca db ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 a1 d6 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f db ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c2 3e 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7f 67 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f 27 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<uint>> eval<uint>(IOperator<Vector256<uint>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 1f 9a c7 f7 7f 00 00 e8 c9 ca ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 21 9a c7 f7 7f 00 00 e8 ab ca ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 23 9a c7 f7 7f 00 00 e8 8d ca ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 24 9a c7 f7 7f 00 00 e8 6f ca ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb a8 1e 26 c6 f7 7f 00 00 39 09 ff 15 26 8c e7 fe 8b d8 48 8b cf 49 bb b0 1e 26 c6 f7 7f 00 00 39 09 ff 15 17 8c e7 fe 48 8b c8 e8 9f bb ff ff c5 fd 10 70 08 48 8b cf 49 bb b8 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 f7 8b e7 fe 48 8b c8 e8 77 bb ff ff c5 7d 10 40 08 48 8b cf 49 bb c0 1e 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 d7 8b e7 fe 48 8b c8 e8 4f bb ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 59 60 fc ff 48 b9 d8 05 96 c7 f7 7f 00 00 e8 6a d9 ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 68 1e 26 c6 f7 7f 00 00 39 09 ff 15 cc 8a e7 fe 8b e8 48 8b cf 49 bb 70 1e 26 c6 f7 7f 00 00 39 09 ff 15 bd 8a e7 fe 48 8b c8 e8 85 ba ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 26 e9 fb ff 48 b9 d8 05 96 c7 f7 7f 00 00 e8 c7 d8 ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 78 1e 26 c6 f7 7f 00 00 39 09 ff 15 39 8a e7 fe 8b f0 48 8b cb 49 bb 80 1e 26 c6 f7 7f 00 00 39 09 ff 15 2a 8a e7 fe 48 8b c8 e8 e2 b9 ff ff c5 fd 10 70 08 48 8b cb 49 bb 88 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 0a 8a e7 fe 48 8b c8 e8 ba b9 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 5a 45 fc ff 48 b9 d8 05 96 c7 f7 7f 00 00 e8 eb d7 ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 90 1e 26 c6 f7 7f 00 00 39 09 ff 15 75 89 e7 fe 8b f0 48 8b cd 49 bb 98 1e 26 c6 f7 7f 00 00 39 09 ff 15 66 89 e7 fe 48 8b c8 e8 06 b9 ff ff c5 fd 10 70 08 48 8b cd 49 bb a0 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 46 89 e7 fe 48 8b c8 e8 f6 ff fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 69 e7 ff ff 48 b9 d8 05 96 c7 f7 7f 00 00 e8 1a d7 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 f1 d1 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 bf d6 ab 5e 48 8b f8 48 8b ce 33 d2 e8 12 3a 91 4f 48 8b d0 48 8b cf e8 cf 62 fc fe 48 8b cf e8 ef 22 a3 5e cc}
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
0038h mov rcx,7ff7c79a1f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 1f 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 ca ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a2140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 21 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ab ca ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a2368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 23 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8d ca ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a24f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 24 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f ca ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261ea8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1e 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-11873dah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 26 8c e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261eb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1e 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-11873e9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 17 8c e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f bb ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1e 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1187409h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f7 8b e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 bb ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261ec0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1e 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1187429h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d7 8b e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f bb ff ff}
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
0172h call 7ff7c73af390h                      ; CALL rel32 || E8 cd || encoded[5]{e8 59 60 fc ff}
0177h mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d9 ab 5e}
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
01cah mov r11,7ff7c6261e68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1e 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1187534h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cc 8a e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261e70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1e 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1187543h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 bd 8a e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 ba ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a7d00h                      ; CALL rel32 || E8 cd || encoded[5]{e8 26 e9 fb ff}
021ah mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c7 d8 ab 5e}
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
026dh mov r11,7ff7c6261e78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1e 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11875c7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 39 8a e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261e80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1e 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-11875d6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2a 8a e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b9 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261e88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11875f6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 0a 8a e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b9 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ada10h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a 45 fc ff}
02f6h mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 eb d7 ab 5e}
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
0349h mov r11,7ff7c6261e90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-118768bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 75 89 e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261e98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-118769ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 66 89 e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e4e40h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b9 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261ea0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1e 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11876bah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 46 89 e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f6 ff fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7cf0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 e7 ff ff}
03c7h mov rcx,7ff7c79605d8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 d8 05 96 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1a d7 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f1 d1 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf d6 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 12 3a 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf 62 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ef 22 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<int>> eval<int>(IOperator<Vector256<int>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 27 9a c7 f7 7f 00 00 e8 19 c6 ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 29 9a c7 f7 7f 00 00 e8 fb c5 ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 2b 9a c7 f7 7f 00 00 e8 dd c5 ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 2c 9a c7 f7 7f 00 00 e8 bf c5 ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 08 1f 26 c6 f7 7f 00 00 39 09 ff 15 d6 87 e7 fe 8b d8 48 8b cf 49 bb 10 1f 26 c6 f7 7f 00 00 39 09 ff 15 c7 87 e7 fe 48 8b c8 e8 1f b9 ff ff c5 fd 10 70 08 48 8b cf 49 bb 18 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 a7 87 e7 fe 48 8b c8 e8 f7 b8 ff ff c5 7d 10 40 08 48 8b cf 49 bb 20 1f 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 87 87 e7 fe 48 8b c8 e8 cf b8 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 29 5c fc ff 48 b9 48 0a 96 c7 f7 7f 00 00 e8 ba d4 ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb c8 1e 26 c6 f7 7f 00 00 39 09 ff 15 7c 86 e7 fe 8b e8 48 8b cf 49 bb d0 1e 26 c6 f7 7f 00 00 39 09 ff 15 6d 86 e7 fe 48 8b c8 e8 05 b8 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 c6 e5 fb ff 48 b9 48 0a 96 c7 f7 7f 00 00 e8 17 d4 ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb d8 1e 26 c6 f7 7f 00 00 39 09 ff 15 e9 85 e7 fe 8b f0 48 8b cb 49 bb e0 1e 26 c6 f7 7f 00 00 39 09 ff 15 da 85 e7 fe 48 8b c8 e8 62 b7 ff ff c5 fd 10 70 08 48 8b cb 49 bb e8 1e 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 ba 85 e7 fe 48 8b c8 e8 3a b7 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 8a 47 fc ff 48 b9 48 0a 96 c7 f7 7f 00 00 e8 3b d3 ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb f0 1e 26 c6 f7 7f 00 00 39 09 ff 15 25 85 e7 fe 8b f0 48 8b cd 49 bb f8 1e 26 c6 f7 7f 00 00 39 09 ff 15 16 85 e7 fe 48 8b c8 e8 86 b6 ff ff c5 fd 10 70 08 48 8b cd 49 bb 00 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 f6 84 e7 fe 48 8b c8 e8 46 fb fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 21 e3 ff ff 48 b9 48 0a 96 c7 f7 7f 00 00 e8 6a d2 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 41 cd a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 0f d2 ab 5e 48 8b f8 48 8b ce 33 d2 e8 62 35 91 4f 48 8b d0 48 8b cf e8 1f 5e fc fe 48 8b cf e8 3f 1e a3 5e cc}
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
0038h mov rcx,7ff7c79a2748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 27 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 19 c6 ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a2940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 29 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 fb c5 ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a2b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 2b 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 dd c5 ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a2cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 2c 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf c5 ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261f08h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 08 1f 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-118782ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d6 87 e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261f10h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 10 1f 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1187839h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c7 87 e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b9 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261f18h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 18 1f 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1187859h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a7 87 e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b8 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261f20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 20 1f 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1187879h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 87 87 e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b8 ff ff}
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
0172h call 7ff7c73af410h                      ; CALL rel32 || E8 cd || encoded[5]{e8 29 5c fc ff}
0177h mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba d4 ab 5e}
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
01cah mov r11,7ff7c6261ec8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1e 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1187984h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 7c 86 e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261ed0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1e 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1187993h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6d 86 e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b8 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a7e50h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c6 e5 fb ff}
021ah mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 17 d4 ab 5e}
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
026dh mov r11,7ff7c6261ed8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1e 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1187a17h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e9 85 e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261ee0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1e 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1187a26h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 da 85 e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b7 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261ee8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e8 1e 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1187a46h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 ba 85 e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b7 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ae0f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8a 47 fc ff}
02f6h mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3b d3 ab 5e}
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
0349h mov r11,7ff7c6261ef0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f0 1e 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1187adbh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 25 85 e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261ef8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb f8 1e 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1187aeah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 16 85 e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e5070h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b6 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261f00h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 00 1f 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1187b0ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 f6 84 e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 46 fb fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7d58h                      ; CALL rel32 || E8 cd || encoded[5]{e8 21 e3 ff ff}
03c7h mov rcx,7ff7c7960a48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 0a 96 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6a d2 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 41 cd a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f d2 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 35 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f 5e fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3f 1e a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<ulong>> eval<ulong>(IOperator<Vector256<ulong>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 2f 9a c7 f7 7f 00 00 e8 69 c1 ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 31 9a c7 f7 7f 00 00 e8 4b c1 ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 33 9a c7 f7 7f 00 00 e8 2d c1 ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 34 9a c7 f7 7f 00 00 e8 0f c1 ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb 68 1f 26 c6 f7 7f 00 00 39 09 ff 15 86 83 e7 fe 8b d8 48 8b cf 49 bb 70 1f 26 c6 f7 7f 00 00 39 09 ff 15 77 83 e7 fe 48 8b c8 e8 9f b6 ff ff c5 fd 10 70 08 48 8b cf 49 bb 78 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 57 83 e7 fe 48 8b c8 e8 77 b6 ff ff c5 7d 10 40 08 48 8b cf 49 bb 80 1f 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 37 83 e7 fe 48 8b c8 e8 4f b6 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 f9 5b fc ff 48 b9 38 55 96 c7 f7 7f 00 00 e8 0a d0 ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 28 1f 26 c6 f7 7f 00 00 39 09 ff 15 2c 82 e7 fe 8b e8 48 8b cf 49 bb 30 1f 26 c6 f7 7f 00 00 39 09 ff 15 1d 82 e7 fe 48 8b c8 e8 85 b5 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 66 e6 fb ff 48 b9 38 55 96 c7 f7 7f 00 00 e8 67 cf ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 38 1f 26 c6 f7 7f 00 00 39 09 ff 15 99 81 e7 fe 8b f0 48 8b cb 49 bb 40 1f 26 c6 f7 7f 00 00 39 09 ff 15 8a 81 e7 fe 48 8b c8 e8 e2 b4 ff ff c5 fd 10 70 08 48 8b cb 49 bb 48 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 6a 81 e7 fe 48 8b c8 e8 ba b4 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ba 45 fc ff 48 b9 38 55 96 c7 f7 7f 00 00 e8 8b ce ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb 50 1f 26 c6 f7 7f 00 00 39 09 ff 15 d5 80 e7 fe 8b f0 48 8b cd 49 bb 58 1f 26 c6 f7 7f 00 00 39 09 ff 15 c6 80 e7 fe 48 8b c8 e8 06 b4 ff ff c5 fd 10 70 08 48 8b cd 49 bb 60 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 a6 80 e7 fe 48 8b c8 e8 96 f6 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 d9 de ff ff 48 b9 38 55 96 c7 f7 7f 00 00 e8 ba cd ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 91 c8 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 5f cd ab 5e 48 8b f8 48 8b ce 33 d2 e8 b2 30 91 4f 48 8b d0 48 8b cf e8 6f 59 fc fe 48 8b cf e8 8f 19 a3 5e cc}
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
0038h mov rcx,7ff7c79a2f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 2f 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 69 c1 ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a3140h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 31 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4b c1 ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a3368h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 33 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 2d c1 ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a34f0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 34 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0f c1 ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261f68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 68 1f 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-1187c7ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 86 83 e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261f70h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 70 1f 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-1187c89h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 77 83 e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9f b6 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261f78h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 78 1f 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-1187ca9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 57 83 e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 77 b6 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261f80h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 80 1f 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1187cc9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 37 83 e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 4f b6 ff ff}
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
0172h call 7ff7c73af890h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f9 5b fc ff}
0177h mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a d0 ab 5e}
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
01cah mov r11,7ff7c6261f28h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 28 1f 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1187dd4h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 2c 82 e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261f30h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 30 1f 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1187de3h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1d 82 e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 85 b5 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a83a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 66 e6 fb ff}
021ah mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 67 cf ab 5e}
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
026dh mov r11,7ff7c6261f38h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 38 1f 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-1187e67h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 99 81 e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261f40h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 40 1f 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-1187e76h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 8a 81 e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e2 b4 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261f48h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 48 1f 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-1187e96h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 6a 81 e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba b4 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ae3d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba 45 fc ff}
02f6h mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8b ce ab 5e}
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
0349h mov r11,7ff7c6261f50h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 50 1f 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-1187f2bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 d5 80 e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261f58h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 58 1f 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-1187f3ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 c6 80 e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e52a0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 b4 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261f60h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 60 1f 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-1187f5ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 a6 80 e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 96 f6 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7dc0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 d9 de ff ff}
03c7h mov rcx,7ff7c7965538h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 38 55 96 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ba cd ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 c8 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f cd ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b2 30 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 6f 59 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 8f 19 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
------------------------------------------------------------------------------------------------------------------------
; LiteralExpr<Vector256<long>> eval<long>(IOperator<Vector256<long>> expr)
; eval_g[1106] = {57 56 55 53 48 81 ec 68 01 00 00 c5 f8 77 c5 f8 29 b4 24 50 01 00 00 c5 f8 29 bc 24 40 01 00 00 c5 78 29 84 24 30 01 00 00 c5 78 29 8c 24 20 01 00 00 48 8b f1 48 8b d6 48 b9 48 37 9a c7 f7 7f 00 00 e8 b9 bc ab 5e 48 8b f8 48 85 ff 0f 85 74 01 00 00 48 8b d6 48 b9 40 39 9a c7 f7 7f 00 00 e8 9b bc ab 5e 48 8b d8 48 85 db 0f 85 f9 01 00 00 48 8b d6 48 b9 68 3b 9a c7 f7 7f 00 00 e8 7d bc ab 5e 48 8b e8 48 85 ed 0f 85 b7 02 00 00 48 8b d6 48 b9 f0 3c 9a c7 f7 7f 00 00 e8 5f bc ab 5e 48 8b f8 48 85 ff 0f 84 6a 03 00 00 48 8b cf 49 bb c8 1f 26 c6 f7 7f 00 00 39 09 ff 15 36 7f e7 fe 8b d8 48 8b cf 49 bb d0 1f 26 c6 f7 7f 00 00 39 09 ff 15 27 7f e7 fe 48 8b c8 e8 1f b4 ff ff c5 fd 10 70 08 48 8b cf 49 bb d8 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 07 7f e7 fe 48 8b c8 e8 f7 b3 ff ff c5 7d 10 40 08 48 8b cf 49 bb e0 1f 26 c6 f7 7f 00 00 c4 43 7d 19 c1 01 39 09 ff 15 e7 7e e7 fe 48 8b c8 e8 cf b3 ff ff c5 fd 10 40 08 48 8d 8c 24 90 00 00 00 8b d3 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c4 43 3d 18 c1 01 c5 7d 11 44 24 50 c5 fd 11 44 24 30 4c 8d 44 24 70 4c 8d 4c 24 50 48 8d 44 24 30 48 89 44 24 20 e8 c9 57 fc ff 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 5a cb ab 5e c5 fd 10 84 24 90 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cf 49 bb 88 1f 26 c6 f7 7f 00 00 39 09 ff 15 dc 7d e7 fe 8b e8 48 8b cf 49 bb 90 1f 26 c6 f7 7f 00 00 39 09 ff 15 cd 7d e7 fe 48 8b c8 e8 05 b3 ff ff c5 fd 10 40 08 48 8d 8c 24 f0 00 00 00 8b d5 c5 fd 11 44 24 70 4c 8d 44 24 70 e8 06 e3 fb ff 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 b7 ca ab 5e c5 fd 10 84 24 f0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cb 49 bb 98 1f 26 c6 f7 7f 00 00 39 09 ff 15 49 7d e7 fe 8b f0 48 8b cb 49 bb a0 1f 26 c6 f7 7f 00 00 39 09 ff 15 3a 7d e7 fe 48 8b c8 e8 62 b2 ff ff c5 fd 10 70 08 48 8b cb 49 bb a8 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 1a 7d e7 fe 48 8b c8 e8 3a b2 ff ff c5 fd 10 40 08 48 8d 8c 24 d0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 c5 fd 11 44 24 50 4c 8d 44 24 70 4c 8d 4c 24 50 e8 ea 43 fc ff 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 db c9 ab 5e c5 fd 10 84 24 d0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b cd 49 bb b0 1f 26 c6 f7 7f 00 00 39 09 ff 15 85 7c e7 fe 8b f0 48 8b cd 49 bb b8 1f 26 c6 f7 7f 00 00 39 09 ff 15 76 7c e7 fe 48 8b c8 e8 86 b1 ff ff c5 fd 10 70 08 48 8b cd 49 bb c0 1f 26 c6 f7 7f 00 00 c4 e3 7d 19 f7 01 39 09 ff 15 56 7c e7 fe 48 8b c8 e8 e6 f1 fe ff 48 8d 8c 24 b0 00 00 00 8b d6 c4 e3 4d 18 f7 01 c5 fd 11 74 24 70 4c 8d 44 24 70 44 0f b6 48 08 e8 91 da ff ff 48 b9 b8 0e 96 c7 f7 7f 00 00 e8 0a c9 ab 5e c5 fd 10 84 24 b0 00 00 00 c5 fd 11 40 08 c5 f8 28 b4 24 50 01 00 00 c5 f8 28 bc 24 40 01 00 00 c5 78 28 84 24 30 01 00 00 c5 78 28 8c 24 20 01 00 00 c5 f8 77 48 81 c4 68 01 00 00 5b 5d 5e 5f c3 48 8b ce e8 e1 c3 a0 5e 48 8b f0 48 b9 20 fc 71 c6 f7 7f 00 00 e8 af c8 ab 5e 48 8b f8 48 8b ce 33 d2 e8 02 2c 91 4f 48 8b d0 48 8b cf e8 bf 54 fc fe 48 8b cf e8 df 14 a3 5e cc}
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
0038h mov rcx,7ff7c79a3748h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 48 37 9a c7 f7 7f 00 00}
0042h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b9 bc ab 5e}
0047h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
004ah test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
004dh jne near ptr 01c7h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 74 01 00 00}
0053h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0056h mov rcx,7ff7c79a3940h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 40 39 9a c7 f7 7f 00 00}
0060h call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 9b bc ab 5e}
0065h mov rbx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d8}
0068h test rbx,rbx                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 db}
006bh jne near ptr 026ah                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 f9 01 00 00}
0071h mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0074h mov rcx,7ff7c79a3b68h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 68 3b 9a c7 f7 7f 00 00}
007eh call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 7d bc ab 5e}
0083h mov rbp,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b e8}
0086h test rbp,rbp                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ed}
0089h jne near ptr 0346h                      ; JNE rel32 || 0F 85 cd || encoded[6]{0f 85 b7 02 00 00}
008fh mov rdx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d6}
0092h mov rcx,7ff7c79a3cf0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 f0 3c 9a c7 f7 7f 00 00}
009ch call 7ff825ea5cd0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5f bc ab 5e}
00a1h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
00a4h test rdi,rdi                            ; TEST r/m64, r64 || REX.W 85 /r || encoded[3]{48 85 ff}
00a7h je near ptr 0417h                       ; JE rel32 || 0F 84 cd || encoded[6]{0f 84 6a 03 00 00}
00adh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00b0h mov r11,7ff7c6261fc8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c8 1f 26 c6 f7 7f 00 00}
00bah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00bch call qword ptr [rip-11880cah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 36 7f e7 fe}
00c2h mov ebx,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d8}
00c4h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00c7h mov r11,7ff7c6261fd0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d0 1f 26 c6 f7 7f 00 00}
00d1h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00d3h call qword ptr [rip-11880d9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 27 7f e7 fe}
00d9h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
00dch call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 1f b4 ff ff}
00e1h vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
00e6h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
00e9h mov r11,7ff7c6261fd8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb d8 1f 26 c6 f7 7f 00 00}
00f3h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
00f9h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
00fbh call qword ptr [rip-11880f9h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 07 7f e7 fe}
0101h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0104h call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 f7 b3 ff ff}
0109h vmovupd ymm8,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 7d 10 40 08}
010eh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0111h mov r11,7ff7c6261fe0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb e0 1f 26 c6 f7 7f 00 00}
011bh vextractf128 xmm9,ymm8,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 43 7d 19 c1 01}
0121h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0123h call qword ptr [rip-1188119h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 e7 7e e7 fe}
0129h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
012ch call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 cf b3 ff ff}
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
0172h call 7ff7c73af910h                      ; CALL rel32 || E8 cd || encoded[5]{e8 c9 57 fc ff}
0177h mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
0181h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 5a cb ab 5e}
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
01cah mov r11,7ff7c6261f88h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 88 1f 26 c6 f7 7f 00 00}
01d4h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01d6h call qword ptr [rip-1188224h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 dc 7d e7 fe}
01dch mov ebp,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b e8}
01deh mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
01e1h mov r11,7ff7c6261f90h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 90 1f 26 c6 f7 7f 00 00}
01ebh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
01edh call qword ptr [rip-1188233h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 cd 7d e7 fe}
01f3h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
01f6h call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 05 b3 ff ff}
01fbh vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
0200h lea rcx,[rsp+0f0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 f0 00 00 00}
0208h mov edx,ebp                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d5}
020ah vmovupd [rsp+70h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 70}
0210h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
0215h call 7ff7c73a84f0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 06 e3 fb ff}
021ah mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
0224h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 b7 ca ab 5e}
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
026dh mov r11,7ff7c6261f98h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb 98 1f 26 c6 f7 7f 00 00}
0277h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0279h call qword ptr [rip-11882b7h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 49 7d e7 fe}
027fh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
0281h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
0284h mov r11,7ff7c6261fa0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a0 1f 26 c6 f7 7f 00 00}
028eh cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0290h call qword ptr [rip-11882c6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 3a 7d e7 fe}
0296h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0299h call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 62 b2 ff ff}
029eh vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
02a3h mov rcx,rbx                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cb}
02a6h mov r11,7ff7c6261fa8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb a8 1f 26 c6 f7 7f 00 00}
02b0h vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
02b6h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
02b8h call qword ptr [rip-11882e6h]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 1a 7d e7 fe}
02beh mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
02c1h call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 3a b2 ff ff}
02c6h vmovupd ymm0,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 40 08}
02cbh lea rcx,[rsp+0d0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 d0 00 00 00}
02d3h mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
02d5h vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
02dbh vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
02e1h vmovupd [rsp+50h],ymm0                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 44 24 50}
02e7h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
02ech lea r9,[rsp+50h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 4c 24 50}
02f1h call 7ff7c73ae6b0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 ea 43 fc ff}
02f6h mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
0300h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 db c9 ab 5e}
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
0349h mov r11,7ff7c6261fb0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b0 1f 26 c6 f7 7f 00 00}
0353h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0355h call qword ptr [rip-118837bh]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 85 7c e7 fe}
035bh mov esi,eax                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b f0}
035dh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0360h mov r11,7ff7c6261fb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb b8 1f 26 c6 f7 7f 00 00}
036ah cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
036ch call qword ptr [rip-118838ah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 76 7c e7 fe}
0372h mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
0375h call 7ff7c73e54d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 86 b1 ff ff}
037ah vmovupd ymm6,[rax+8]                    ; VMOVUPD ymm1, ymm2/m256 || VEX.256.66.0F.WIG 10 /r || encoded[5]{c5 fd 10 70 08}
037fh mov rcx,rbp                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cd}
0382h mov r11,7ff7c6261fc0h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{49 bb c0 1f 26 c6 f7 7f 00 00}
038ch vextractf128 xmm7,ymm6,1                ; VEXTRACTF128 xmm1/m128, ymm2, imm8 || VEX.256.66.0F3A.W0 19 /r ib || encoded[6]{c4 e3 7d 19 f7 01}
0392h cmp [rcx],ecx                           ; CMP r/m32, r32 || o32 39 /r || encoded[2]{39 09}
0394h call qword ptr [rip-11883aah]           ; CALL r/m64 || FF /2 || encoded[6]{ff 15 56 7c e7 fe}
039ah mov rcx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b c8}
039dh call 7ff7c73d9558h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e6 f1 fe ff}
03a2h lea rcx,[rsp+0b0h]                      ; LEA r64, m || REX.W 8D /r || encoded[8]{48 8d 8c 24 b0 00 00 00}
03aah mov edx,esi                             ; MOV r32, r/m32 || o32 8B /r || encoded[2]{8b d6}
03ach vinsertf128 ymm6,ymm6,xmm7,1            ; VINSERTF128 ymm1, ymm2, xmm3/m128, imm8 || VEX.256.66.0F3A.W0 18 /r ib || encoded[6]{c4 e3 4d 18 f7 01}
03b2h vmovupd [rsp+70h],ymm6                  ; VMOVUPD ymm2/m256, ymm1 || VEX.256.66.0F.WIG 11 /r || encoded[6]{c5 fd 11 74 24 70}
03b8h lea r8,[rsp+70h]                        ; LEA r64, m || REX.W 8D /r || encoded[5]{4c 8d 44 24 70}
03bdh movzx r9d,byte ptr [rax+8]              ; MOVZX r32, r/m8 || o32 0F B6 /r || encoded[5]{44 0f b6 48 08}
03c2h call 7ff7c73e7e28h                      ; CALL rel32 || E8 cd || encoded[5]{e8 91 da ff ff}
03c7h mov rcx,7ff7c7960eb8h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 b8 0e 96 c7 f7 7f 00 00}
03d1h call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 0a c9 ab 5e}
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
041ah call 7ff825df67d0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 e1 c3 a0 5e}
041fh mov rsi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f0}
0422h mov rcx,7ff7c671fc20h                   ; MOV r64, imm64 || REX.W B8+ro io || encoded[10]{48 b9 20 fc 71 c6 f7 7f 00 00}
042ch call 7ff825ea6cb0h                      ; CALL rel32 || E8 cd || encoded[5]{e8 af c8 ab 5e}
0431h mov rdi,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b f8}
0434h mov rcx,rsi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b ce}
0437h xor edx,edx                             ; XOR r32, r/m32 || o32 33 /r || encoded[2]{33 d2}
0439h call 7ff816cfd010h                      ; CALL rel32 || E8 cd || encoded[5]{e8 02 2c 91 4f}
043eh mov rdx,rax                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b d0}
0441h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
0444h call 7ff7c63af8d8h                      ; CALL rel32 || E8 cd || encoded[5]{e8 bf 54 fc fe}
0449h mov rcx,rdi                             ; MOV r64, r/m64 || REX.W 8B /r || encoded[3]{48 8b cf}
044ch call 7ff825e1b900h                      ; CALL rel32 || E8 cd || encoded[5]{e8 df 14 a3 5e}
0451h int 3                                   ; INT3 || CC || encoded[1]{cc}
